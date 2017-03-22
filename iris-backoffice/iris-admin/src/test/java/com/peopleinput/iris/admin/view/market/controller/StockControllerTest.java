package com.peopleinput.iris.admin.view.market.controller;

import com.peopleinput.iris.admin.view.market.mapper.Stock.StockFormToStockMapper;
import com.peopleinput.iris.admin.view.market.mapper.Stock.StockToStockFormMapper;
import com.peopleinput.iris.admin.view.market.model.StockForm;
import com.peopleinput.iris.admin.view.market.service.StockService;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminView;
import com.peopleinput.iris.domain.admin.builder.StockBuilder;
import com.peopleinput.iris.domain.admin.model.Stock;
import com.peopleinput.iris.admin.test.IrisMockMvc;
import com.peopleinput.iris.admin.test.MockitoAnnotationsRule;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;

import java.util.ArrayList;
import java.util.List;

import static org.mockito.Matchers.any;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

/**
 * Created by yasmine on 07/04/2016.
 */

public class StockControllerTest {

  @InjectMocks
  StockController stockController;

  @Mock
  StockService stockService;

  @Mock
  StockFormToStockMapper stockFormToStockMapper;

  @Mock
  StockToStockFormMapper stockToStockFormMapper;

  @Rule
  public MockitoAnnotationsRule mockitoAnnotationsRule = new MockitoAnnotationsRule(this);

  @Rule
  public IrisMockMvc irisMockMvc = new IrisMockMvc(stockController);

  @Before
  public void setUp() throws Exception {
    when(stockService.listAll()).thenReturn(stocks());
    when(stockService.getById(2L)).thenReturn(stockBDD());
    when(stockToStockFormMapper.apply(any(Stock.class))).thenReturn(new StockForm());
    /*when(marketFormToMarketMapper.apply(any(MarketForm.class))).thenReturn(new Market());*/
  }

  private static List<Stock> stocks(){
    List<Stock> stocks = new ArrayList<Stock>();
    Stock stock1 = new StockBuilder("stockPI", "SPI", "09SPI").build();
    Stock stock2 = new StockBuilder("stockPI2", "SPI2", "029SPI").build();

    stocks.add(stock1);
    stocks.add(stock2);

    return stocks;
  }
  private static Stock stockBDD(){
    Stock stockBDD = new StockBuilder("stockPI", "SPI", "09SPI").build();
    stockBDD.setId(2L);
    return stockBDD;
  }


  @Test
  public void  allStocks() throws  Exception{
    irisMockMvc.perform(get("/stocks"))
        .andExpect(status().isOk())
        .andExpect(model().attributeExists("stocks"))
        .andExpect(irisMockMvc.view(IrisAdminView.STOCK_LIST));


  }

  @Test
  public void aStock() throws Exception{
    irisMockMvc.perform(get("/stock/2"))
        .andExpect(status().isOk())
        .andExpect(model().attributeExists("stockForm"))
        .andExpect(irisMockMvc.view(IrisAdminView.STOCK_VIEW));

  }



}
