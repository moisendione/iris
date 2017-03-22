package com.peopleinput.iris.admin.view.market.mapper.bond;

import com.peopleinput.iris.admin.view.market.model.BondForm;
import com.peopleinput.iris.domain.admin.model.Bond;

import java.util.function.Function;

/**
 * Created by souraya on 10/02/16.
 */

public interface BondFormToBond extends Function<BondForm, Bond> {

}
