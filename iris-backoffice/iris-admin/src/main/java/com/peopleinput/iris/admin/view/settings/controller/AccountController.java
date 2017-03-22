package com.peopleinput.iris.admin.view.settings.controller;

import com.peopleinput.iris.admin.spring.resolver.IrisAdminRedirect;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminView;
import com.peopleinput.iris.admin.view.settings.mapper.AccountFormToAccountMapper;
import com.peopleinput.iris.admin.view.settings.mapper.AccountToAccountFormMapper;
import com.peopleinput.iris.admin.view.settings.mapper.AccountToAccountRowMapper;
import com.peopleinput.iris.admin.view.settings.modele.AccountForm;
import com.peopleinput.iris.admin.view.settings.modele.AccountFormList;
import com.peopleinput.iris.admin.view.settings.modele.AccountList;
import com.peopleinput.iris.admin.view.settings.modele.AccountRow;
import com.peopleinput.iris.admin.view.settings.service.AccountService;
import com.peopleinput.iris.admin.view.settings.service.AccountTypeService;
import com.peopleinput.iris.admin.view.settings.validator.AccountFormListValidator;
import com.peopleinput.iris.admin.view.settings.validator.AccountFormValidator;
import com.peopleinput.iris.domain.admin.model.Account;
import com.peopleinput.iris.domain.enums.AccountCategory;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.formula.WorkbookEvaluator;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * Created by massaer on 07/09/2016.
 */
@Controller
public class AccountController {
  private static Logger LOGGER = LoggerFactory.getLogger(AccountController.class);

  @Autowired
  private AccountService accountService;
  @Autowired
  private AccountToAccountRowMapper accountToAccountRowMapper;
  @Autowired
  private AccountToAccountFormMapper accountToAccountFormMapper;
  @Autowired
  private AccountFormToAccountMapper accountFormToAccountMapper;
  @Autowired
  private AccountTypeService accountTypeService;
  @Autowired
  private AccountFormValidator accountFormValidator;
  @Autowired
  private AccountFormListValidator accountFormListValidator;

  @Value("${path.to.save.temporarily.files}")
  private String fileToLoad;

  private static String isDetailAccount;
  private static AccountForm accountForm;
  private static AccountFormList accountFormList;
  private static String isAddAccount;

  @RequestMapping(value = "/settings/accounts", method = RequestMethod.GET)
  public IrisAdminView showAccounts(Model model) {
    List<Account> accounts = accountService.findByAccountCategory(AccountCategory.GEN);
    List<AccountRow> accountRows = accounts
            .stream()
            .map(accountToAccountRowMapper)
            .collect(Collectors.toList());
    AccountList accountList = new AccountList(accountRows);
    model.addAttribute("accountList", accountList);
    if (accountForm == null) {
      accountForm = new AccountForm("CREATE");
    }
    model.addAttribute("accountForm", accountForm);
    if (accountFormList == null) {
      accountFormList = initAccountFormList();
    }
    model.addAttribute("accountFormList", accountFormList);

    List accountTypeList = accountTypeService.findAll();
    model.addAttribute("accountTypeList", accountTypeList);
    model.addAttribute("isAddAccount", isAddAccount);
    isDetailAccount = null;
    accountForm = new AccountForm("CREATE");

    isAddAccount = null;

    return IrisAdminView.SETTINGS_ACCOUNTS;
  }

  @RequestMapping(value = "/settings/account/{accountNumber}", method = RequestMethod.GET)
  public IrisAdminRedirect showDetailAccount(@PathVariable("accountNumber") Long accountNumber, RedirectAttributes redirectAttributes) {
    isDetailAccount = "true";
    Account account = accountService.findByAccountNumber(accountNumber);
    accountForm = Optional.of(account)
            .map(accountToAccountFormMapper)
            .get();
    redirectAttributes.addFlashAttribute("isDetailAccount", isDetailAccount);
    return new IrisAdminRedirect("/settings/accounts");
  }

  @RequestMapping(value = "/validate/add-account", method = RequestMethod.POST)
  public IrisAdminRedirect addAccount(@ModelAttribute("accountFormList") AccountFormList accountFormList,
                                      BindingResult result, RedirectAttributes redirectAttributes) {
    LOGGER.info("==== AccountFormList : " + accountFormList);

    accountFormListValidator.validate(accountFormList, result);
    if (result.hasErrors()) {

      redirectAttributes.addFlashAttribute("msgLenghtAccountNumberSubmitAccountForm", "false");

      for (AccountForm accountForm : accountFormList.getRows()) {
        Account account = accountService.findByAccountNumber(accountForm.getAccountNumber());
        if (account != null && account.getId() != null) {
          redirectAttributes.addFlashAttribute("msgExistAccountNumberSubmitAccountForm", "false");
          break;
        }
      }
      isAddAccount = "true";
      //redirectAttributes.addFlashAttribute("isAddAccount",isAddAccount);
      return new IrisAdminRedirect("/settings/accounts");
    }

    int meter = accountService.saveAccounts(accountFormList);
    LOGGER.info("Number of accounts saved : " + meter);
    redirectAttributes.addFlashAttribute("msgSubmitAddAccountForm", "true");

    return new IrisAdminRedirect("/settings/accounts");
  }

  @RequestMapping(value = "/validate/update-account", method = RequestMethod.POST)
  public IrisAdminRedirect updateAccount(@ModelAttribute("accountForm") AccountForm accountForm,
                                         BindingResult result, RedirectAttributes redirectAttributes) {
    LOGGER.info("==== AccountForm : " + accountForm);
    accountFormValidator.validate(accountForm, result);
    if (result.hasErrors()) {
      return new IrisAdminRedirect("/settings/accounts");
    }
    Account account = Optional.of(accountForm)
            .map(accountFormToAccountMapper)
            .get();

    accountService.updateDescription(account);
    redirectAttributes.addFlashAttribute("msgSubmitEditAccountForm", "true");
    return new IrisAdminRedirect("/settings/accounts");
  }

  @RequestMapping(value = "/settings/add/account", method = RequestMethod.GET)
  public IrisAdminRedirect showAddAccount(RedirectAttributes redirectAttributes) {
    accountForm = new AccountForm("CREATE");
    isAddAccount = "true";
    //redirectAttributes.addFlashAttribute("isAddAccount",isAddAccount);
    return new IrisAdminRedirect("/settings/accounts");
  }

  /**
   * This method allow to initialize the accountFormList
   *
   * @return
   */
  public AccountFormList initAccountFormList() {
    AccountFormList accountFormList;
    List<AccountForm> accountForms = new ArrayList<>();
    accountForms.add(new AccountForm("CREATE"));

    accountFormList = new AccountFormList(accountForms);

    return accountFormList;
  }

  @RequestMapping(value = "/validate/add-account", params = {"addRow"}, method = RequestMethod.POST)
  public IrisAdminRedirect addRow(final AccountFormList accountFormList, final BindingResult bindingResult) {
    accountFormList.getRows().add(new AccountForm("CREATE"));
    this.accountFormList = accountFormList;
    isAddAccount = "true";
    return new IrisAdminRedirect("/settings/accounts");
  }

  @RequestMapping(value = "/validate/add-account", params = {"removeRow"}, method = RequestMethod.POST)
  public IrisAdminRedirect removeRow(
          final AccountFormList accountFormList, final BindingResult bindingResult,
          final HttpServletRequest req) {
    final Integer rowId = Integer.valueOf(req.getParameter("removeRow"));
    accountFormList.getRows().remove(rowId.intValue());
    this.accountFormList = accountFormList;
    isAddAccount = "true";
    return new IrisAdminRedirect("/settings/accounts");
  }

  @RequestMapping(value = "/validate/add-account-imported", method = RequestMethod.POST)
  public IrisAdminRedirect saveAccountsByFile(@RequestParam("file") MultipartFile multipartFile,
                                              RedirectAttributes redirectAttributes) {
    LOGGER.info("fileToLoad : " + fileToLoad);
    copyImportedFile(multipartFile, "accounts.xlsx");
    Path rootLocation = null;
    rootLocation = Paths.get(fileToLoad);
    LOGGER.info("###  : " + String.valueOf(rootLocation.resolve("accounts.xlsx")));
    File file = new File(String.valueOf(rootLocation.resolve("accounts.xlsx")));
    AccountFormList accountFormList = new AccountFormList();
    boolean result = getAccountsInFile(file,accountFormList);
    if (result) {
      int meter = accountService.saveAccounts(accountFormList);
      LOGGER.info("Number of accounts saved : " + meter);
      redirectAttributes.addFlashAttribute("msgSubmitAddAccountForm", "true");
    }else{
      redirectAttributes.addFlashAttribute("msgSubmitAddAccountForm", "false");
    }
    try {
      Files.delete(rootLocation.resolve("accounts.xlsx"));
    } catch (IOException e) {
      e.printStackTrace();
    }
    return new IrisAdminRedirect("/settings/accounts");
  }

  /**
   * This method allow to copy a imported file to a relative path
   * @param file
   * @param fileName
   */
  private void copyImportedFile(MultipartFile file, String fileName) {
    Path rootLocation = null;
    rootLocation = Paths.get(fileToLoad);
    try {
      Files.copy(file.getInputStream(), rootLocation.resolve(fileName), StandardCopyOption.REPLACE_EXISTING);
    } catch (IOException e) {
      LOGGER.info("############### permission issue : ");
      //e.printStackTrace();
    }
  }

  public boolean getAccountsInFile(File file, AccountFormList accountFormList) {
    boolean result = false;
    LOGGER.info("Call getAccountsInFile");
    List<AccountForm> accountForms = new ArrayList<>();
    try {
      LOGGER.info("Begin bloc try.  File = " + file.getTotalSpace());
      FileInputStream fis = new FileInputStream(file);
      // Workbook wb = new HSSFWorkbook(fis);
      XSSFWorkbook wb = new XSSFWorkbook(fis);
      //HSSFWorkbook wb = new HSSFWorkbook(new POIFSFileSystem(fis));
      XSSFSheet sheet = wb.getSheetAt(0);

      //Sheet sheet = wb.getSheetAt(0);
      // Sheet sheet = wb.getSheet("Accounts");
      LOGGER.info("row size = " + sheet.getPhysicalNumberOfRows());
      Iterator<Row> rowIterator = sheet.rowIterator();
      while (rowIterator.hasNext()) {
        Row row = rowIterator.next();
        if (row.getRowNum() > 0) {
          AccountForm accountForm = new AccountForm("CREATE");
          Iterator<Cell> cellIterator = row.cellIterator();
          while (cellIterator.hasNext()) {
            Cell cell = cellIterator.next();
            switch (cell.getColumnIndex()) {
              case 0:
                String s = Double.toString(cell.getNumericCellValue());
                String stringValue = s.substring(0, (s.length() - 2));
                Long accountNumber = Long.parseLong(stringValue);
                accountForm.setAccountNumber(accountNumber);
                break;
              case 1:
                accountForm.setDescription(cell.getStringCellValue());
                break;
              case 2:
                String s2 = Double.toString(cell.getNumericCellValue());
                String stringValue2 = s2.substring(0, (s2.length() - 2));
                Long accountTypeAccountNumber = Long.parseLong(stringValue2);
                accountForm.setAccountTypeAccountNumber(accountTypeAccountNumber);
                break;
            }
          }
          LOGGER.info("++++++++++  ###  accountFrom : " + accountForm);
          if (accountForm.getAccountNumber() != null && accountForm.getDescription() != null &&
                  accountForm.getAccountTypeAccountNumber() != null) {
            accountForms.add(accountForm);
          }
        }
      }

    } catch (Exception ex) {
      LOGGER.error("Error file : " + ex.getMessage());
      ex.getStackTrace();
    }
    if (!accountForms.isEmpty()){
      result = true;
      accountFormList.setRows(accountForms);
    }
    return result;
  }

}
