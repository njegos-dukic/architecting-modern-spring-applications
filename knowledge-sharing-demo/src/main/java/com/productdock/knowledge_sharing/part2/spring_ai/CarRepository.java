package com.productdock.knowledge_sharing.part2.spring_ai;

import com.productdock.knowledge_sharing.part2.spring_ai.model.entity.Car;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CarRepository extends JpaRepository<Car, Long> {
}
