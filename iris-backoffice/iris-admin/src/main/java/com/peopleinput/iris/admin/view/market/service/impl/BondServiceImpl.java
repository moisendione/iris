package com.peopleinput.iris.admin.view.market.service.impl;

import com.peopleinput.iris.admin.view.market.service.BondService;
import com.peopleinput.iris.domain.admin.model.Bond;
import com.peopleinput.iris.domain.admin.repository.BondRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by souraya on 10/02/16.
 */
@Service("bondService")
@Transactional
public class BondServiceImpl implements BondService {

  @Autowired
  private BondRepository bondRepository;

  public List<Bond> findAll() {
    return bondRepository.findAll();
  }

  @Override
  public Bond findById(Long id) {
    return bondRepository.findByID(id);
  }

  @Override
  public Bond findByName(String name) {
    return bondRepository.findByName(name);
  }

  public void insert(Bond bond) {

    bondRepository.save(bond);
  }

  @Override
  public void deleteByName(String name) {
    bondRepository.deleteByName(name);
  }

  @Override
  public void delete(Long id) {
    bondRepository.delete(id);
  }

  @Override
  public void update(Bond bond) {bondRepository.update(bond);}

}
