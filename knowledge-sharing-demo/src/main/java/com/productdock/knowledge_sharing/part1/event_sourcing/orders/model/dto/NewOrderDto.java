package com.productdock.knowledge_sharing.part1.event_sourcing.orders.model.dto;

import jakarta.validation.constraints.Positive;
import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class NewOrderDto {

    @NotNull
    private String customerId;

    @NotNull
    private String productId;

    @Positive
    private Double quantity;
}
