package com.productdock.knowledge_sharing;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@EnableAsync
public class KnowledgeSharingDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(KnowledgeSharingDemoApplication.class, args);
    }
}
