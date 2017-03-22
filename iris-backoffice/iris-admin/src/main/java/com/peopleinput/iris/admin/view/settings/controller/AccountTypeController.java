package com.peopleinput.iris.admin.view.settings.controller;

import com.peopleinput.iris.admin.spring.resolver.IrisAdminRedirect;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminView;
import com.peopleinput.iris.admin.view.settings.mapper.AccountTypeFormToAccountTypeMapper;
import com.peopleinput.iris.admin.view.settings.mapper.AccountTypeToAccountTypeFormMapper;
import com.peopleinput.iris.admin.view.settings.mapper.AccountTypeToAccountTypeRowMapper;
import com.peopleinput.iris.admin.view.settings.modele.AccountTypeForm;
import com.peopleinput.iris.admin.view.settings.modele.AccountTypeFormList;
import com.peopleinput.iris.admin.view.settings.modele.AccountTypeList;
import com.peopleinput.iris.admin.view.settings.modele.AccountTypeRow;
import com.peopleinput.iris.admin.view.settings.service.AccountTypeService;
import com.peopleinput.iris.admin.view.settings.validator.AccountTypeFormListValidator;
import com.peopleinput.iris.admin.view.settings.validator.AccountTypeFormValidator;
import com.peopleinput.iris.domain.admin.model.AccountType;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
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
 * Created by massaer on 28/10/2016.
 */
@Controller
public class AccountTypeController {

  private final AccountTypeToAccountTypeRowMapper accountTypeToAccountTypeRowMapper;
  private final AccountTypeToAccountTypeFormMapper accountTypeToAccountTypeFormMapper;
  private final AccountTypeFormToAccountTypeMapper accountTypeFormToAccountTypeMapper;
  private final AccountTypeService accountTypeService;
  private final AccountTypeFormListValidator accountTypeFormListValidator;
  private final AccountTypeFormValidator accountTypeFormValidator;

  private static Logger LOGGER = LoggerFactory.getLogger(AccountTypeController.class);

  @Autowired
  public AccountTypeController(AccountTypeToAccountTypeRowMapper accountTypeToAccountTypeRowMapper,
                               AccountTypeToAccountTypeFormMapper accountTypeToAccountTypeFormMapper,
                               AccountTypeFormToAccountTypeMapper accountTypeFormToAccountTypeMapper,
                               AccountTypeService accountTypeService,
                               AccountTypeFormListValidator accountTypeFormListValidator,
                               AccountTypeFormValidator accountTypeFormValidator){
    this.accountTypeToAccountTypeRowMapper = accountTypeToAccountTypeRowMapper;
    this.accountTypeToAccountTypeFormMapper = accountTypeToAccountTypeFormMapper;
    this.accountTypeFormToAccountTypeMapper = accountTypeFormToAccountTypeMapper;
    this.accountTypeService = accountTypeService;
    this.accountTypeFormListValidator = accountTypeFormListValidator;
    this.accountTypeFormValidator = accountTypeFormValidator;
  }

  @Value("${path.to.save.temporarily.files}")
  private String fileToLoad;

  private AccountTypeFormList accountTypeFormList;
  private String isAddAccountType;
  private static String msgSubmitDeleteAccountTypeForm;


  @RequestMapping(value = "/accounts-type", method = RequestMethod.GET)
  public IrisAdminView accountTypeList(Model model){

     List<AccountType> accountTypes = accountTypeService.findAll();

     List<AccountTypeRow> rows = accountTypes
             .stream()
             .map(accountTypeToAccountTypeRowMapper)
             .collect(Collectors.toList());

     AccountTypeList accountTypeList = new AccountTypeList(rows);
     model.addAttribute("accountTypeList", accountTypeList);

    if (accountTypeFormList == null) {
     AccountTypeFormList accountTypeFormList = new AccountTypeFormList(new ArrayList<>());
     accountTypeFormList.getRows().add(new AccountTypeForm("CREATE"));
     this.accountTypeFormList = accountTypeFormList;
   }

    model.addAttribute("accountTypeFormList", accountTypeFormList);

    model.addAttribute("isAddAccountType", isAddAccountType);

    model.addAttribute("msgSubmitDeleteAccountTypeForm", msgSubmitDeleteAccountTypeForm);

    accountTypeFormList = null;
    isAddAccountType = null;
    msgSubmitDeleteAccountTypeForm = null;

    return IrisAdminView.SETTINGS_ACCOUNTS_TYPE;
  }

  @RequestMapping(value = "/validate/add-account-type", method = RequestMethod.POST)
  public IrisAdminRedirect addAccountType(@ModelAttribute("accountTypeFormList") AccountTypeFormList accountTypeFormList,
                                          BindingResult result, RedirectAttributes redirectAttributes){
    LOGGER.info("accountTypeFormList : "+accountTypeFormList);
    accountTypeFormListValidator.validate(accountTypeFormList, result);
    if (result.hasErrors()){
      LOGGER.error("???  accountTypeFormList has error !");
      if (result.hasFieldErrors("accountNumber")){
        redirectAttributes.addFlashAttribute("msgExistAccountNumberSubmitAccountTypeForm","false");
      }
      if (result.hasFieldErrors("parentAccountNumber")){
        redirectAttributes.addFlashAttribute("msgParentAccountNumberSubmitAccountTypeForm","false");
      }
      return new IrisAdminRedirect("/accounts-type");
    }

    int cpt = 0;
    for (AccountTypeForm accountTypeForm : accountTypeFormList.getRows()){
      AccountType accountType = Optional.of(accountTypeForm)
              .map(accountTypeFormToAccountTypeMapper)
              .get();
      accountTypeService.insert(accountType);
      cpt++;
    }
    LOGGER.info("###  Insertion of "+cpt+" accountType");

    redirectAttributes.addFlashAttribute("msgSubmitAddAccountTypeForm","true");

    return new IrisAdminRedirect("/accounts-type");
  }

  @RequestMapping(value = "/validate/add-account-type", params = {"addRow"}, method = RequestMethod.POST)
  public IrisAdminRedirect addRow(final AccountTypeFormList accountTypeFormList, final BindingResult bindingResult) {
    accountTypeFormList.getRows().add(new AccountTypeForm("CREATE"));
    this.accountTypeFormList = accountTypeFormList;
    isAddAccountType = "true";
    return new IrisAdminRedirect("/accounts-type");
  }

  @RequestMapping(value = "/validate/add-account-type", params = {"removeRow"}, method = RequestMethod.POST)
  public IrisAdminRedirect removeRow(final AccountTypeFormList accountTypeFormList, final BindingResult bindingResult,
                                     final HttpServletRequest req) {
    final Integer rowId = Integer.valueOf(req.getParameter("removeRow"));
    accountTypeFormList.getRows().remove(rowId.intValue());
    this.accountTypeFormList = accountTypeFormList;

    isAddAccountType = "true";
    return new IrisAdminRedirect("/accounts-type");
  }

  @RequestMapping(value = "/validate/add-account-type/import", method = RequestMethod.POST)
  public IrisAdminRedirect addAccountTypeByImport(@RequestParam("file") MultipartFile multipartFile,
                                                  RedirectAttributes redirectAttributes){
    copyImportedFile(multipartFile, "account_type.xlsx");
    Path rootLocation = null;
    rootLocation = Paths.get(fileToLoad);
    LOGGER.info("###  : " + String.valueOf(rootLocation.resolve("account_type.xlsx")));
    File file = new File(String.valueOf(rootLocation.resolve("account_type.xlsx")));
    AccountTypeFormList accountFormList = new AccountTypeFormList();
    boolean result = getAccountTypeInFile(file,accountFormList);
    if (result) {
      List<AccountType> accountTypeList = accountFormList.getRows()
              .stream()
              .map(accountTypeFormToAccountTypeMapper)
              .collect(Collectors.toList());

      int meter = accountTypeService.saveAccountTypes(accountTypeList);
      LOGGER.info("Number of accounts saved : " + meter);
      redirectAttributes.addFlashAttribute("msgSubmitAddAccountTypeForm", "true");
    }else{
      redirectAttributes.addFlashAttribute("msgSubmitAddAccountTypeForm", "false");
    }
    try {
      Files.delete(rootLocation.resolve("account_type.xlsx"));
    } catch (IOException e) {
      e.printStackTrace();
    }

    return new IrisAdminRedirect("/accounts-type");
  }

  @RequestMapping(value = "/show/account-type/{accountNumber}", method = RequestMethod.GET)
  public IrisAdminRedirect showEditAccountTypeForm(@PathVariable Long accountNumber, RedirectAttributes redirectAttributes){

    AccountType accountType = accountTypeService.findByAccountNumber(accountNumber);
    AccountTypeForm accountTypeForm = Optional.of(accountType)
            .map(accountTypeToAccountTypeFormMapper)
            .get();
    redirectAttributes.addFlashAttribute("accountTypeForm", accountTypeForm);
    redirectAttributes.addFlashAttribute("isEditAccountType", "true");

    return new IrisAdminRedirect("/accounts-type");
  }

  @RequestMapping(value = "/validate/update-account-type", method = RequestMethod.POST)
  public IrisAdminRedirect updateAccountType(@ModelAttribute("accountTypeForm") AccountTypeForm accountTypeForm, BindingResult result,
                                             RedirectAttributes redirectAttributes){
    LOGGER.info("accountTypeForm : "+accountTypeForm);
    accountTypeFormValidator.validate(accountTypeForm, result);
    if (result.hasErrors()){

    }else{
      AccountType accountType = Optional.of(accountTypeForm)
              .map(accountTypeFormToAccountTypeMapper)
              .get();
      accountTypeService.update(accountType);
      redirectAttributes.addFlashAttribute("msgSubmitEditAccountTypeForm", "true");
    }

    return new IrisAdminRedirect("/accounts-type");
  }

  @RequestMapping(value = "/delete/get/account-type/{accountNumber}", method = RequestMethod.GET,
          produces = MediaType.APPLICATION_JSON_VALUE)
  public @ResponseBody AccountTypeRow getAccountTypeToDelete(@PathVariable Long accountNumber){
    AccountType accountType = accountTypeService.findByAccountNumber(accountNumber);
    AccountTypeRow accountTypeRow = Optional.of(accountType)
            .map(accountTypeToAccountTypeRowMapper)
            .get();

    return accountTypeRow;
  }

  @RequestMapping(value = "/confirm/delete/account-type/{accountNumber}", method = RequestMethod.GET,
          produces = MediaType.APPLICATION_JSON_VALUE)
  public @ResponseBody boolean confirmDeleteAccountType(@PathVariable Long accountNumber){
    boolean result = false;
    msgSubmitDeleteAccountTypeForm = "false";
    try {
      AccountType accountType = accountTypeService.findByAccountNumber(accountNumber);
      if (accountType.getAccounts() == null || accountType.getAccounts().isEmpty()){
        accountTypeService.delete(accountNumber);
        result = true;
        msgSubmitDeleteAccountTypeForm = "true";
      }
    }catch (Exception ex){
      LOGGER.error(ex.getMessage());
      ex.getStackTrace();
    }
    return false;
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

  public boolean getAccountTypeInFile(File file, AccountTypeFormList accountTypeFormList) {
    boolean result = false;
    LOGGER.info("Call getAccountTypeInFile");
    List<AccountTypeForm> accountTypeForms = new ArrayList<>();
    try {
      LOGGER.info("Begin bloc try.  File = " + file.getTotalSpace());
      FileInputStream fis = new FileInputStream(file);
      XSSFWorkbook wb = new XSSFWorkbook(fis);
      XSSFSheet sheet = wb.getSheetAt(0);

      //Sheet sheet = wb.getSheetAt(0);
      // Sheet sheet = wb.getSheet("Accounts");
      LOGGER.info("row size = " + sheet.getPhysicalNumberOfRows());
      Iterator<Row> rowIterator = sheet.rowIterator();
      while (rowIterator.hasNext()) {
        Row row = rowIterator.next();
        if (row.getRowNum() > 0) {
          AccountTypeForm accountTypeForm = new AccountTypeForm("CREATE");
          Iterator<Cell> cellIterator = row.cellIterator();
          while (cellIterator.hasNext()) {
            Cell cell = cellIterator.next();
            switch (cell.getColumnIndex()) {
              case 0:
                String s = Double.toString(cell.getNumericCellValue());
                String stringValue = s.substring(0, (s.length() - 2));
                Long accountNumber = Long.parseLong(stringValue);
                accountTypeForm.setAccountNumber(accountNumber);
                break;
              case 1:
                accountTypeForm.setType(cell.getStringCellValue());
                break;
              case 2:
                String s2 = Double.toString(cell.getNumericCellValue());
                String stringValue2 = s2.substring(0, (s2.length() - 2));
                Long accountTypeAccountNumber = Long.parseLong(stringValue2);
                accountTypeForm.setParentAccountNumber(accountTypeAccountNumber);
                break;
            }
          }
          LOGGER.info("++++++++++  ###  accountTypeFrom : " + accountTypeForm);
          if (accountTypeForm.getAccountNumber() != null && accountTypeForm.getType() != null) {
            accountTypeForms.add(accountTypeForm);
          }
        }
      }

    } catch (Exception ex) {
      LOGGER.error("Error file : " + ex.getMessage());
      ex.getStackTrace();
    }
    if (!accountTypeForms.isEmpty()){
      result = true;
      accountTypeFormList.setRows(accountTypeForms);
    }
    return result;
  }


}
