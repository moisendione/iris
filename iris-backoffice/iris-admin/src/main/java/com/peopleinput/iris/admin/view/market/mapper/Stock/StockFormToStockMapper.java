package com.peopleinput.iris.admin.view.market.mapper.Stock;

import com.peopleinput.iris.admin.view.market.model.StockForm;
import com.peopleinput.iris.domain.admin.model.Stock;

import java.util.function.Function;

/**
 * Created by yasmine on 10/02/2016.
 */
public interface StockFormToStockMapper extends Function<StockForm, Stock> {
}
