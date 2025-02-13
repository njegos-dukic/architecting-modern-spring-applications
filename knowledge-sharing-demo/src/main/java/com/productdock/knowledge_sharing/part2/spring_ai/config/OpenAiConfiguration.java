package com.productdock.knowledge_sharing.part2.spring_ai.config;

import com.productdock.knowledge_sharing.part2.spring_ai.CarRepository;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.client.advisor.QuestionAnswerAdvisor;
import org.springframework.ai.vectorstore.VectorStore;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenAiConfiguration {

    @Bean
    public ChatClient chatClient(ChatClient.Builder builder, CarRepository repository, VectorStore vectorStore) {
//        repository.findAll().forEach(car -> {
//            var document = new Document("ID %s; Manufacturer %s; Model %s; Description %s".formatted(car.getId(), car.getManufacturer(), car.getModel(), car.getDescription()),
//                    Map.of("CAR ID", car.getId()));
//            vectorStore.add(List.of(document));
//        });

        var systemPrompt = """
                You are an assistant for a car salesman that will provide you with the audio
                transcript of a small talk he had with a customer just now and based on this small talk
                you will recommend a car that would be a good fit for this customer.
                """;

        return builder
                .defaultAdvisors(new QuestionAnswerAdvisor(vectorStore))
                .defaultSystem(systemPrompt)
                .build();
    }
}

