package com.peopleinput.iris.admin.view.market.service.impl;

import com.peopleinput.iris.admin.view.market.service.StockService;
import com.peopleinput.iris.domain.admin.model.Stock;
import com.peopleinput.iris.domain.admin.repository.StockRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by yasmine on 10/02/2016.
 */


@Service("equityService")
@Transactional
public class StockServiceImpl implements StockService {

  @Autowired
  private StockRepository stockRepository;

  @Override
  public List<Stock> listAll() {
    return stockRepository.findAll();
  }

  @Override
  public Stock getById(Long id) {
    return stockRepository.findById(id);
  }

  @Override
  public Stock save(Stock equity) {return stockRepository.save(equity); }

  @Override
  public Stock update(Stock stock) {
    return stockRepository.update(stock);
  }

  @Override
  public void delete(Long id) {
    stockRepository.delete(id);
  }

}
