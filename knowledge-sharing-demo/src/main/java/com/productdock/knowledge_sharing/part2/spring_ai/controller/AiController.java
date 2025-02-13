package com.productdock.knowledge_sharing.part2.spring_ai.controller;

import com.productdock.knowledge_sharing.part2.spring_ai.model.dto.Transcript;
import com.productdock.knowledge_sharing.part2.spring_ai.model.entity.Car;
import com.productdock.knowledge_sharing.part2.spring_ai.service.OpenAiService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequiredArgsConstructor
@RequestMapping("/ai")
@CrossOrigin("*")
public class AiController {

    private final OpenAiService openAiService;

    @PostMapping(value = "/transcript", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public Transcript transcript(@RequestParam MultipartFile recording) throws IOException {
        return openAiService.transcribe(recording);
    }

    @PostMapping(value = "/recommendation", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public Car recommend(@RequestParam MultipartFile recording) throws IOException {
        return openAiService.recommend(recording);
    }
}
