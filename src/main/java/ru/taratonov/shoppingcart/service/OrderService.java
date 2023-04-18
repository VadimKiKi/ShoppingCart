package ru.taratonov.shoppingcart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.taratonov.shoppingcart.model.Order;
import ru.taratonov.shoppingcart.repository.OrderRepository;
import ru.taratonov.shoppingcart.util.OrderNotFoundException;

import java.util.Optional;

@Service
@Transactional(readOnly = true)
public class OrderService {
    private final OrderRepository orderRepository;

    @Autowired
    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public Order findOne(int id) {
        Optional<Order> foundOrder = orderRepository.findById(id);
        return foundOrder.orElseThrow(OrderNotFoundException::new);
    }

    @Transactional
    public void saveOrder(Order order){
        System.out.println(order.getOrderDetailList());
        orderRepository.save(order);
    }
}