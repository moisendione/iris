package com.peopleinput.iris.admin.view.settings.service;

import com.peopleinput.iris.domain.enums.OrderDirection;
import com.peopleinput.iris.domain.enums.OrderStatus;
import com.peopleinput.iris.domain.trading.model.Order;

import java.util.List;

/**
 * Created by massaer on 04/10/2016.
 */
public interface OrderService {
  List<Order> findByOrderStatus(OrderStatus orderStatus);
  List<Order> findByOrderDirection(OrderDirection orderDirection);
}
