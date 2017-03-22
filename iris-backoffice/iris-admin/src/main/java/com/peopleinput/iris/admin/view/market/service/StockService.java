package com.peopleinput.iris.admin.view.market.service;

import com.peopleinput.iris.domain.admin.model.Stock;

import java.util.List;

/**
 * Created by yasmine on 10/02/2016.
 */
public interface StockService {

  List<Stock> listAll();

  Stock getById(Long id);

  Stock save(Stock stock);

  Stock update(Stock stock);

  void delete(Long id);
}
