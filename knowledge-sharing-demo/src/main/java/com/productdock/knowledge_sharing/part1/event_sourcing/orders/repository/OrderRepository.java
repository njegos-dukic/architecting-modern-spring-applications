package com.productdock.knowledge_sharing.part1.event_sourcing.orders.repository;

import com.productdock.knowledge_sharing.part1.event_sourcing.orders.model.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {
}
