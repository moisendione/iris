package com.peopleinput.iris.admin.view.market.controller;


import com.peopleinput.iris.admin.view.market.mapper.Stock.StockFormToStockMapper;
import com.peopleinput.iris.admin.view.market.mapper.Stock.StockToStockFormMapper;
import com.peopleinput.iris.admin.view.market.model.StockForm;
import com.peopleinput.iris.admin.view.market.service.StockService;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminRedirect;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminView;
import com.peopleinput.iris.core.web.view.IrisResponse;
import com.peopleinput.iris.domain.admin.model.Stock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by yasmine on 10/02/2016.
 */

@Controller
public class StockController {

  @Autowired
  StockService stockService;

  @Autowired
  StockFormToStockMapper stockFormToStockMapper;

  @Autowired
  StockToStockFormMapper stockToStockFormMapper;

  //private MarketFormValidator marketFormValidator;


/*    @Autowired
    public EquityController(EquityService equityService, EquityFormToEquityMapper equityFormToEquityMapper, EquityToEquityFormMapper equityToEquityFormMapper){
        // public EquityController(EquityService equityService, EquityFormToEquityMapper equityFormToEquityMapper, EquityToEquityFormMapper equityToEquityFormMapper,ProductFormValidator productFormValidator) {
        this.equityService = equityService;
        this.equityFormToEquityMapper = equityFormToEquityMapper;
        this.equityToEquityFormMapper = equityToEquityFormMapper;
        //  this.productFormValidator = productFormValidator;
    }*/

  @RequestMapping(value = "/stocks", method = RequestMethod.GET)
  public IrisAdminView showEquityList(Model model) {
    model.addAttribute("stocks", stockService.listAll());
    return IrisAdminView.STOCK_LIST;
  }

  @RequestMapping(value = "/stock/{id}", method = RequestMethod.GET)
  public IrisAdminView showEquity(@PathVariable Long id, Model model) {
    Stock equity = stockService.getById(id);
    StockForm equityForm = stockToStockFormMapper.apply(equity);
    model.addAttribute("stockForm", equityForm);
    return IrisAdminView.STOCK_VIEW;
  }

  @RequestMapping(value = "/stock", method = RequestMethod.GET)
  public IrisAdminView newEquity(Model model) {
    model.addAttribute("stockForm", new StockForm());
    return IrisAdminView.STOCK_EDIT_CREATE;
  }

  @RequestMapping(value = "/stock", method = RequestMethod.POST)
  public IrisResponse saveEquity(@ModelAttribute(value = "stockForm") StockForm stockForm, BindingResult result) {

    if (result.hasErrors()) {
      return IrisAdminView.STOCK_EDIT_CREATE;
    }

    Stock stock = stockFormToStockMapper.apply(stockForm);
    stockService.save(stock);
    return new IrisAdminRedirect("/stock/" + stock.getId());
  }

  @RequestMapping(value = "/stock/edit/{id}", method = RequestMethod.GET)
  public IrisAdminView edit(@PathVariable Long id, Model model) {
    StockForm equityForm = stockToStockFormMapper.apply(stockService.getById(id));
    model.addAttribute("stockForm", equityForm);
    return IrisAdminView.STOCK_EDIT_CREATE;
  }

  @RequestMapping(value = "/stock/delete/{id}", method = RequestMethod.GET)
  public IrisResponse delete(@PathVariable Long id) {
    stockService.delete(id);
    return new IrisAdminRedirect("/stocks");
  }


}
