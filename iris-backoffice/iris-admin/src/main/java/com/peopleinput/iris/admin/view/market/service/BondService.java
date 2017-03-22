package com.peopleinput.iris.admin.view.market.service;

import com.peopleinput.iris.domain.admin.model.Bond;

import java.util.List;

/**
 * Created by souraya on 10/02/16.
 */
public interface BondService {

  public List<Bond> findAll();

  public Bond findById(Long id);

  public Bond findByName(String name);

  public void insert(Bond bond);

  public void deleteByName(String name);

  public void delete(Long id);

  public void update(Bond bond);

}
