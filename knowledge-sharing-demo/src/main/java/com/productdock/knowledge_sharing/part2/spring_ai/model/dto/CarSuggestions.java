package com.productdock.knowledge_sharing.part2.spring_ai.model.dto;

import com.productdock.knowledge_sharing.part2.spring_ai.model.entity.Car;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class CarSuggestions {

    private List<Car> suggestions;
}
