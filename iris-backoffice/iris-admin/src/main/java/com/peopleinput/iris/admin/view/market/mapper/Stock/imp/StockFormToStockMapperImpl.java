package com.peopleinput.iris.admin.view.market.mapper.Stock.imp;

import com.peopleinput.iris.admin.view.market.mapper.Stock.StockFormToStockMapper;
import com.peopleinput.iris.admin.view.market.model.StockForm;
import com.peopleinput.iris.domain.admin.builder.StockBuilder;
import com.peopleinput.iris.domain.admin.model.Stock;
import com.peopleinput.iris.domain.enums.AssetClass;
import org.springframework.stereotype.Component;

/**
 * Created by yasmine on 10/02/2016.
 */


@Component
public class StockFormToStockMapperImpl implements StockFormToStockMapper {


  @Override
    public Stock apply(StockForm stockForm) {
      Stock stock = new StockBuilder(stockForm.getName(), stockForm.getIsinCode(), stockForm.getTicker())
                .withLastQuotationDate(stockForm.getLastQuotationDate())
                .withBenchmarkIndex(stockForm.getBenchmarkIndex())
                .withAssetClass(AssetClass.STOCK)
              //  .withPrice(stockForm.getPrice())
                .build();

    return stock;
  }
}

