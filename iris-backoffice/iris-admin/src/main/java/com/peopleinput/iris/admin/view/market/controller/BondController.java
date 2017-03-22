package com.peopleinput.iris.admin.view.market.controller;

import com.peopleinput.iris.admin.view.market.mapper.bond.BondFormToBond;
import com.peopleinput.iris.admin.view.market.mapper.bond.BondToBondForm;
import com.peopleinput.iris.admin.view.market.model.BondForm;
import com.peopleinput.iris.admin.view.market.service.BondService;
import com.peopleinput.iris.admin.view.market.service.MarketService;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminRedirect;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminView;
import com.peopleinput.iris.core.web.view.IrisResponse;
import com.peopleinput.iris.domain.admin.model.Bond;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by souraya on 10/02/16.
 */
@Controller
public class BondController {

  @Autowired
  BondService bondService;

  @Autowired
  BondFormToBond bondFormToBond;

  @Autowired
  BondToBondForm bondToBondForm;

  @Autowired
  MarketService marketService;

/*
  @Autowired
  BondFormValidator bondFormValidator;
*/

  @RequestMapping(value = "/bonds", method = RequestMethod.GET)
  public IrisAdminView showBondsList(Model model) {
    model.addAttribute("bonds", bondService.findAll());
    return IrisAdminView.BOND_LIST;
  }

  @RequestMapping(value = "/bond/{id}", method = RequestMethod.GET)
  public IrisAdminView showBondByID(@PathVariable Long id, Model model) {
    BondForm bondForm = bondToBondForm.apply(bondService.findById(id));
    model.addAttribute("bondForm", bondForm);
    return IrisAdminView.BOND_VIEW;
  }

  @RequestMapping(value = "/bond", method = RequestMethod.GET)
  public IrisAdminView newBond(Model model) {
/*
    List<Market> markets = marketService.listAll();
    model.addAttribute("markets", markets);
*/
    model.addAttribute("bondForm", new BondForm());
    return IrisAdminView.BOND_CREATE;
  }

  @RequestMapping(value = "/bond", method = RequestMethod.POST)
  public IrisResponse saveBond(@ModelAttribute(value = "bondForm") BondForm bondForm, BindingResult result) {

//    bondFormValidator.validate(bondForm, result);

    if (result.hasErrors()) {
      return IrisAdminView.BOND_CREATE;
    }

    Bond bond = bondFormToBond.apply(bondForm);
    bondService.insert(bond);
    return new IrisAdminRedirect("/bond/" + bond.getId());

  }

  @RequestMapping(value = "/bond/edit/{id}", method = RequestMethod.GET)
  public IrisAdminView edit(@PathVariable("id") Long id, Model model) {
    BondForm bondForm = bondToBondForm.apply(bondService.findById(id));
    model.addAttribute("bondForm", bondForm);
    return IrisAdminView.BOND_EDIT;
  }

  @RequestMapping(value = "/bond/delete/{id}", method = RequestMethod.GET)
  public IrisResponse delete(@PathVariable("id") Long id) {
    bondService.delete(id);
    return new IrisAdminRedirect("/bonds");
  }

  @RequestMapping(value = "/bond/update", method = RequestMethod.POST)
  public IrisResponse majMarche(@ModelAttribute("bondForm") BondForm bondform) {
    Bond bond = bondFormToBond.apply(bondform);
    bondService.update(bond);

    return new IrisAdminRedirect("/bond/" + bond.getId());
  }
}