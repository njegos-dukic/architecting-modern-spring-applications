package com.productdock.knowledge_sharing.part1.event_sourcing.orders.model.event;

import com.productdock.knowledge_sharing.part1.event_sourcing.orders.model.entity.Order;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class OrderCreatedEvent {

    private Integer orderId;
    private String customerId;
    private String productId;
    private Double quantity;

    public OrderCreatedEvent(Order order) {
        this.orderId = order.getId();
        this.customerId = order.getCustomerId();
        this.productId = order.getProductId();
        this.quantity = order.getQuantity();
    }
}
