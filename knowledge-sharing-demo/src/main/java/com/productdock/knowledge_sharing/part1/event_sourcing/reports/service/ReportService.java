package com.productdock.knowledge_sharing.part1.event_sourcing.reports.service;

import com.productdock.knowledge_sharing.part1.event_sourcing.orders.model.event.OrderCreatedEvent;
import org.springframework.modulith.events.ApplicationModuleListener;
import org.springframework.stereotype.Service;

@Service
public class ReportService {

    // @EventListener
    // @Async
    // @Transactional
    @ApplicationModuleListener
    public void handleOnOrderCreatedEvent(OrderCreatedEvent event) {
        System.out.println("Order created event received in Report Service: " + event);
        try {
            // Here we could have some heavy processing.
            Thread.sleep(15_000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("Order created event processed in Report Service.");
    }
}
