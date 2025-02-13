package com.productdock.knowledge_sharing.part1.event_sourcing.orders.model.dto;

import lombok.Data;

@Data
public class OrderDto {

    private Integer orderId;
    private String customerId;
    private String productId;
    private Double quantity;
}
