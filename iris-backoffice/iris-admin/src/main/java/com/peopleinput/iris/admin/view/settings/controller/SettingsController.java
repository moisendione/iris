package com.peopleinput.iris.admin.view.settings.controller;

import com.peopleinput.iris.admin.spring.resolver.IrisAdminRedirect;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminView;
import com.peopleinput.iris.admin.view.settings.mapper.GeneralSettingsFormToSettingsMapper;
import com.peopleinput.iris.admin.view.settings.mapper.RatesSettingsFormToSettingsMapper;
import com.peopleinput.iris.admin.view.settings.mapper.SettingsToGeneralSettingsFormMapper;
import com.peopleinput.iris.admin.view.settings.mapper.SettingsToRatesSettingsFormMapper;
import com.peopleinput.iris.admin.view.settings.modele.GeneralSettingsForm;
import com.peopleinput.iris.admin.view.settings.modele.RatesSettingsForm;
import com.peopleinput.iris.admin.view.settings.service.OperationService;
import com.peopleinput.iris.admin.view.settings.service.OrderService;
import com.peopleinput.iris.admin.view.settings.service.SettingsService;
import com.peopleinput.iris.core.web.view.IrisResponse;
import com.peopleinput.iris.domain.admin.model.Settings;
import com.peopleinput.iris.domain.enums.OrderStatus;
import com.peopleinput.iris.domain.enums.TransactionType;
import com.peopleinput.iris.domain.trading.model.Order;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.validation.Valid;
import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

/**
 * Created by jgaglo on 01/09/16.
 */
@Controller
@SessionAttributes({"settingsForm","ratesSettingsForm"})
public class SettingsController {
  private  static Logger LOGGER = LoggerFactory.getLogger(SettingsController.class);

  @Autowired
  SettingsService settingsService;

  @Autowired
  GeneralSettingsFormToSettingsMapper generalSettingsFormToSettingsMapper;

  @Autowired
  SettingsToGeneralSettingsFormMapper settingsToGeneralSettingsFormMapper;

  @Autowired
  RatesSettingsFormToSettingsMapper ratesSettingsFormToSettingsMapper;

  @Autowired
  SettingsToRatesSettingsFormMapper settingsToRatesSettingsFormMapper;

  @Autowired
  private OrderService orderService;

  @Autowired
  private OperationService operationService;

  private static List<Order> orderListDraftStatus;
  private static List<Order> orderListValidatedStatus;
  private static List<Order> orderListCanceledStatus;
  private static List<Order> orderListInProgressStatus;
  private static List<Order> orderListExecutedStatus;

  private static BigDecimal commissionCustodyFees;
  private static BigDecimal commissionAssetTransfert;
  private static BigDecimal commissionCollateral;
  private static BigDecimal commissionDividendPayment;
  private static BigDecimal commissionCuponPayment;
  private static BigDecimal commissionSellingAsset;
  private static BigDecimal commissionByingAsset;

  @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
  public IrisAdminView dashboard(Model model){
//    Settings settings = settingsService.select();

    StringBuilder orderStatusLibelle = new StringBuilder();
    orderStatusLibelle.append(OrderStatus.DRAFT.getName());
    orderStatusLibelle.append("#");
    orderStatusLibelle.append(OrderStatus.VALIDATED.getName());
    orderStatusLibelle.append("#");
    orderStatusLibelle.append(OrderStatus.CANCELED.getName());
    orderStatusLibelle.append("#");
    orderStatusLibelle.append(OrderStatus.IN_PROGRESS.getName());
    orderStatusLibelle.append("#");
    orderStatusLibelle.append(OrderStatus.EXECUTED.getName());

    model.addAttribute("orderStatusLibelle",orderStatusLibelle.toString());
    LOGGER.info("###  orderStatusLibelle : "+orderStatusLibelle.toString());

    initializeOrderStatus();

    StringBuilder orderStatusData = new StringBuilder();
    orderStatusData.append(orderListDraftStatus.size());
    orderStatusData.append("#");
    orderStatusData.append(orderListValidatedStatus.size());
    orderStatusData.append("#");
    orderStatusData.append(orderListCanceledStatus.size());
    orderStatusData.append("#");
    orderStatusData.append(orderListInProgressStatus.size());
    orderStatusData.append("#");
    orderStatusData.append(orderListExecutedStatus.size());

    model.addAttribute("orderStatusData",orderStatusData.toString());
    LOGGER.info("###  orderStatusData : "+orderStatusData.toString());

    initializeCommission(model);

    model.addAttribute("isDashboard","true");

    return IrisAdminView.DASHBOARD;
  }

  @RequestMapping(value = "/settings", method = RequestMethod.GET)
  public  IrisAdminView settings(){
    return IrisAdminView.SETTINGS_MENU;
  }

  @RequestMapping(value = "/settings/new", method = RequestMethod.GET)
  public  IrisAdminView newSettings(Model model){
    GeneralSettingsForm settingsForm = Optional.ofNullable(settingsService.select())
        .map(settingsToGeneralSettingsFormMapper)
        .orElse(new GeneralSettingsForm());
    model.addAttribute("settingsForm",settingsForm);
    return IrisAdminView.SETTINGS_NEW;
  }

  @RequestMapping(value = "/settings/new", method = RequestMethod.POST)
  public IrisResponse saveSettings(Model model,@Valid @ModelAttribute GeneralSettingsForm settingsForm,
                                        BindingResult result){

    if (result.hasErrors()) {
      LOGGER.error("Error creating Settings");
      model.addAttribute("settingsForm",settingsForm);
      return IrisAdminView.SETTINGS_NEW;

    }
    Settings settings = Optional.of(settingsForm)
        .map(generalSettingsFormToSettingsMapper)
        .get();

    settingsService.saveGeneral(settings);

    return new IrisAdminRedirect("/settings");
  }

  @RequestMapping(value = "/settings/rates", method = RequestMethod.GET)
  public  IrisAdminView newRates(Model model){
    RatesSettingsForm ratesSettingsForm = Optional.of(settingsService.select())
        .map(settingsToRatesSettingsFormMapper)
        .orElse(new RatesSettingsForm());
    model.addAttribute("ratesSettingsForm",ratesSettingsForm);
    return IrisAdminView.SETTINGS_RATES;
  }


  @RequestMapping(value = "/settings/rates", method = RequestMethod.POST)
  public IrisResponse saveRates(Model model,@Valid @ModelAttribute RatesSettingsForm ratesSettingsForm,
                                   BindingResult result){
    if (result.hasErrors()) {
      LOGGER.error("Error creating Rates"+result.getAllErrors().toString());
      model.addAttribute("ratesSettingsForm",ratesSettingsForm);
      return IrisAdminView.SETTINGS_NEW;

    }
    Settings settings = Optional.of(ratesSettingsForm)
        .map(ratesSettingsFormToSettingsMapper)
        .get();

    settingsService.updateRates(settings);

    return new IrisAdminRedirect("/settings");
  }

  public void initializeOrderStatus(){
    if (orderListDraftStatus == null) {
      orderListDraftStatus = orderService.findByOrderStatus(OrderStatus.DRAFT);
    }
    if (orderListValidatedStatus == null) {
      orderListValidatedStatus = orderService.findByOrderStatus(OrderStatus.VALIDATED);
    }
    if (orderListCanceledStatus == null) {
      orderListCanceledStatus = orderService.findByOrderStatus(OrderStatus.CANCELED);
    }
    if (orderListInProgressStatus == null) {
      orderListInProgressStatus = orderService.findByOrderStatus(OrderStatus.IN_PROGRESS);
    }
    if (orderListExecutedStatus == null) {
      orderListExecutedStatus = orderService.findByOrderStatus(OrderStatus.EXECUTED);
    }
  }

  public void initializeCommission(Model model){
    if(commissionCustodyFees == null){
      commissionCustodyFees = operationService.getSumAmountOperationSinceLastYearByTransactionType(TransactionType.CUSTODY_FEES_PAYMENT);
    }
    if (commissionAssetTransfert == null){
      commissionAssetTransfert = operationService.getSumAmountOperationSinceLastYearByTransactionType(TransactionType.MKT_ASSETS_TRANSFER);
    }
    if (commissionCollateral == null){
      commissionCollateral = operationService.getSumAmountOperationSinceLastYearByTransactionType(TransactionType.COLLATERAL);
    }
    if (commissionDividendPayment == null){
      commissionDividendPayment = operationService.getSumAmountOperationSinceLastYearByTransactionType(TransactionType.DIVIDEND_PAYMENT);
    }
    if (commissionCuponPayment == null){
      commissionCuponPayment = operationService.getSumAmountOperationSinceLastYearByTransactionType(TransactionType.COUPON_PAYMENT);
    }

    if (commissionSellingAsset == null){
      commissionSellingAsset = operationService.getSumAmountOperationSinceLastYearByTransactionType(TransactionType.MKT_SELLING_ASSETS);
    }

    if (commissionByingAsset == null){
      commissionByingAsset = operationService.getSumAmountOperationSinceLastYearByTransactionType(TransactionType.MKT_BUYING_ASSETS);
    }

    StringBuilder commissionOperationData = new StringBuilder();
    commissionOperationData.append(commissionCustodyFees.doubleValue());
    commissionOperationData.append("#");
    commissionOperationData.append(commissionAssetTransfert.doubleValue());
    commissionOperationData.append("#");
    commissionOperationData.append(commissionCollateral.doubleValue());
    commissionOperationData.append("#");
    commissionOperationData.append(commissionDividendPayment.doubleValue());
    commissionOperationData.append("#");
    commissionOperationData.append(commissionCuponPayment.doubleValue());
    commissionOperationData.append("#");
    commissionOperationData.append(commissionSellingAsset.doubleValue());
    commissionOperationData.append("#");
    commissionOperationData.append(commissionByingAsset.doubleValue());

    model.addAttribute("commissionOperationData",commissionOperationData.toString());
    LOGGER.info("###  commissionOperationData :"+commissionOperationData.toString());
  }

}
