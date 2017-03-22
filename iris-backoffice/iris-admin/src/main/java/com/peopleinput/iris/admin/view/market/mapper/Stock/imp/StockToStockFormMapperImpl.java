package com.peopleinput.iris.admin.view.market.mapper.Stock.imp;

import com.peopleinput.iris.admin.view.market.mapper.Stock.StockToStockFormMapper;
import com.peopleinput.iris.admin.view.market.model.StockForm;
import com.peopleinput.iris.domain.admin.model.Stock;
import org.springframework.stereotype.Component;

/**
 * Created by yasmine on 10/02/2016.
 */

@Component
public class StockToStockFormMapperImpl implements StockToStockFormMapper {

    public StockForm apply(Stock equity) {
        StockForm equityToForm= new StockForm();
        equityToForm.setId(equity.getId());
        equityToForm.setName(equity.getName());
        equityToForm.setTicker(equity.getTicker());
        equityToForm.setIsinCode(equity.getIsinCode());
        equityToForm.setLastQuotationDate(equity.getLastQuotationDate());
        equityToForm.setBenchmarkIndex(equity.getBenchmarkIndex());


    return equityToForm;
  }
}
