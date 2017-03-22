package com.peopleinput.iris.admin.view.market.controller;

import com.peopleinput.iris.admin.view.market.mapper.market.MarketFormToMarketMapper;
import com.peopleinput.iris.admin.view.market.mapper.market.MarketToMarketFormMapper;
import com.peopleinput.iris.admin.view.market.model.MarketForm;
import com.peopleinput.iris.admin.view.market.service.MarketService;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminRedirect;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminView;
import com.peopleinput.iris.core.web.view.IrisResponse;
import com.peopleinput.iris.domain.admin.model.Market;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

/**
 * Created by yasmine on 09/02/2016.
 */

@Controller
public class MarketController {
  @Autowired
  MarketService marketService;

  @Autowired
  MarketFormToMarketMapper marketFormToMarketMapper;

  @Autowired
  MarketToMarketFormMapper marketToMarketFormMapper;

  //private MarketFormValidator marketFormValidator;


/*  @Autowired
    public MarketController(MarketService marketService, MarketFormToMarketMapper marketFormToMarketMapper, MarketToMarketFormMapper marketToMarketFormMapper){
      // public MarketController(MarketService marketService, MarketFormToMarketMapper marketFormToMarketMapper, MarketToMarketFormMapper marketToMarketFormMapper, ProductFormValidator productFormValidator) {
       this.marketService = marketService;
       this.marketFormToMarketMapper = marketFormToMarketMapper;
       this.marketToMarketFormMapper = marketToMarketFormMapper;
     //  this.productFormValidator = productFormValidator;
   }*/

  @RequestMapping(value = "/markets", method = RequestMethod.GET)
  public IrisAdminView showMarketsList(Model model) {
    model.addAttribute("markets", marketService.listAll());
    return IrisAdminView.MARKET_LIST;
  }

  @RequestMapping(value = "/market/{id}", method = RequestMethod.GET)
  public IrisAdminView showMarket(@PathVariable Long id, Model model) {
    Market market = marketService.getById(id);
    MarketForm marketForm = marketToMarketFormMapper.apply(market);
    model.addAttribute("marketForm", marketForm);
    return IrisAdminView.MARKET_VIEW;
  }


  @RequestMapping(value = "/market", method = RequestMethod.GET)
  public IrisAdminView newMarket(Model model) {
    model.addAttribute("marketForm", new MarketForm());
    return IrisAdminView.MARKET_EDIT_CREATE;
  }

  @RequestMapping(value = "/market", method = RequestMethod.POST)
  public IrisResponse saveMarket(@Valid @ModelAttribute(value = "marketForm") MarketForm marketForm, BindingResult result) {

    if (result.hasErrors()) {
      return IrisAdminView.MARKET_EDIT_CREATE;
    }

    Market market = marketFormToMarketMapper.apply(marketForm);
    marketService.add(market);
    return new IrisAdminRedirect("/market/" + market.getId());
  }

  @RequestMapping(value = "/market/edit/{id}", method = RequestMethod.GET)
  public IrisAdminView edit(@PathVariable Long id, Model model) {
    MarketForm marketForm = marketToMarketFormMapper.apply(marketService.getById(id));
    model.addAttribute("marketForm", marketForm);
    return IrisAdminView.MARKET_EDIT_CREATE;
  }

  @RequestMapping(value = "/market/delete/{id}", method = RequestMethod.GET)
  public IrisResponse delete(@PathVariable Long id) {
    marketService.delete(id);
    return new IrisAdminRedirect("/markets");
  }


}
