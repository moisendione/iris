package com.peopleinput.iris.admin.view.settings.service.impl;

import com.peopleinput.iris.admin.view.settings.service.OrderService;
import com.peopleinput.iris.domain.enums.OrderDirection;
import com.peopleinput.iris.domain.enums.OrderStatus;
import com.peopleinput.iris.domain.trading.model.Order;
import com.peopleinput.iris.domain.trading.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by massaer on 04/10/2016.
 */
@Service
@Transactional
public class OrderServiceImpl implements OrderService {
  @Autowired
  private OrderRepository orderRepository;

  @Override
  public List<Order> findByOrderStatus(OrderStatus orderStatus) {
    return orderRepository.findOrderByOrderStatus(orderStatus);
  }

  @Override
  public List<Order> findByOrderDirection(OrderDirection orderDirection) {
    return orderRepository.findOrderByOrderDirection(orderDirection);
  }
}
