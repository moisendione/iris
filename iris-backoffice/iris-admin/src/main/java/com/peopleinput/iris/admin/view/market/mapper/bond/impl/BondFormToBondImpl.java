package com.peopleinput.iris.admin.view.market.mapper.bond.impl;

import com.peopleinput.iris.admin.view.market.mapper.bond.BondFormToBond;
import com.peopleinput.iris.admin.view.market.model.BondForm;
import com.peopleinput.iris.domain.admin.model.Bond;
import org.springframework.stereotype.Component;

/**
 * Created by souraya on 10/02/16.
 */
@Component("bondFormToBond")
public class BondFormToBondImpl implements BondFormToBond {

@Override
  public Bond apply(BondForm bondForm) {
    Bond bond = new Bond();

    bond.setId(bondForm.getId());
    bond.setIsinCode(bondForm.getIsinCode());
    bond.setName(bondForm.getName());
    bond.setPrincipalAmount(bondForm.getPrincipalAmount());
    bond.setTicker(bondForm.getTicker());

    return bond;
  }

}
