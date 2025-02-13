package com.productdock.knowledge_sharing.part1.event_sourcing.orders.controller;

import com.productdock.knowledge_sharing.part1.event_sourcing.orders.model.dto.NewOrderDto;
import com.productdock.knowledge_sharing.part1.event_sourcing.orders.model.dto.OrderDto;
import com.productdock.knowledge_sharing.part1.event_sourcing.orders.model.entity.Order;
import com.productdock.knowledge_sharing.part1.event_sourcing.orders.service.OrderService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/orders")
@CrossOrigin("*")
public class OrderController {

    private final OrderService orderService;
    private final ModelMapper modelMapper;

    @PostMapping
    @Transactional
    public OrderDto createOrder(@RequestBody @Validated NewOrderDto newOrderDto) {
        var createdOrder = orderService.createOrder(modelMapper.map(newOrderDto, Order.class));
        return modelMapper.map(createdOrder, OrderDto.class);
    }
}
