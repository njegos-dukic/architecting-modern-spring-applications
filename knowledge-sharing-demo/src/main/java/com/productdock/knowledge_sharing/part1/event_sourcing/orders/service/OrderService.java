package com.productdock.knowledge_sharing.part1.event_sourcing.orders.service;

import com.productdock.knowledge_sharing.part1.event_sourcing.orders.model.entity.Order;
import com.productdock.knowledge_sharing.part1.event_sourcing.orders.model.event.OrderCreatedEvent;
import com.productdock.knowledge_sharing.part1.event_sourcing.orders.repository.OrderRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;
    private final ApplicationEventPublisher applicationEventPublisher;

    public Order createOrder(Order newOrder) {
        var order = orderRepository.save(newOrder);
        // reportService.updateReport(order);
        // emailService.sendEmail(order);
        // metricsService.updateMetrics(order);
        // ...
        applicationEventPublisher.publishEvent(new OrderCreatedEvent(order));
        return order;
    }
}
