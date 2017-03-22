package com.peopleinput.iris.admin.view.market.mapper.bond.impl;

import com.peopleinput.iris.admin.view.market.mapper.bond.BondToBondForm;
import com.peopleinput.iris.admin.view.market.model.BondForm;
import com.peopleinput.iris.domain.admin.model.Bond;
import org.springframework.stereotype.Component;

/**
 * Created by souraya on 10/02/16.
 */
@Component
public class BondToBondFormImpl implements BondToBondForm {

  @Override
  public BondForm apply(Bond bond) {

    BondForm bondForm = new BondForm();

    bondForm.setId(bond.getId());
    bondForm.setIsinCode(bond.getIsinCode());
    bondForm.setName(bond.getName());
    bondForm.setPrincipalAmount(bond.getPrincipalAmount());
    bondForm.setTicker(bond.getTicker());

    return bondForm;
  }
}
