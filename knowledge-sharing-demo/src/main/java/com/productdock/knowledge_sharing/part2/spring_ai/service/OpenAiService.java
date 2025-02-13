package com.productdock.knowledge_sharing.part2.spring_ai.service;

import com.productdock.knowledge_sharing.part2.spring_ai.model.dto.Transcript;
import com.productdock.knowledge_sharing.part2.spring_ai.model.entity.Car;
import lombok.RequiredArgsConstructor;
import org.springframework.ai.audio.transcription.AudioTranscriptionPrompt;
import org.springframework.ai.audio.transcription.AudioTranscriptionResponse;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.openai.OpenAiAudioSpeechModel;
import org.springframework.ai.openai.OpenAiAudioSpeechOptions;
import org.springframework.ai.openai.OpenAiAudioTranscriptionModel;
import org.springframework.ai.openai.OpenAiAudioTranscriptionOptions;
import org.springframework.ai.openai.api.OpenAiAudioApi;
import org.springframework.ai.openai.audio.speech.SpeechPrompt;
import org.springframework.ai.openai.audio.speech.SpeechResponse;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Service
@RequiredArgsConstructor
public class OpenAiService {

    private final OpenAiAudioTranscriptionModel openAiAudioTranscriptionModel;

    private final OpenAiAudioSpeechModel openAiAudioSpeechModel;

    private final ChatClient chatClient;

    public Transcript transcribe(MultipartFile recording) throws IOException {
        OpenAiAudioApi.TranscriptResponseFormat responseFormat = OpenAiAudioApi.TranscriptResponseFormat.TEXT;

        OpenAiAudioTranscriptionOptions transcriptionOptions = OpenAiAudioTranscriptionOptions.builder()
                .language("en")
                .prompt("Transcribe the following audio, make sure to annotate each person separately")
                .temperature(0f)
                .responseFormat(responseFormat)
                .build();

        Resource audioFile = new ByteArrayResource(recording.getBytes());

        AudioTranscriptionPrompt transcriptionRequest = new AudioTranscriptionPrompt(audioFile, transcriptionOptions);
        AudioTranscriptionResponse response = openAiAudioTranscriptionModel.call(transcriptionRequest);

        return new Transcript(response.getResult().getOutput());
    }

    public Car recommend(MultipartFile recording) throws IOException {
        var transcript = transcribe(recording);
        return chatClient.prompt().user(transcript.getTranscript()).call().entity(Car.class);
    }

    public byte[] textToSpeech(String input) {
        OpenAiAudioSpeechOptions speechOptions = OpenAiAudioSpeechOptions.builder()
                .model("tts-1")
                .voice(OpenAiAudioApi.SpeechRequest.Voice.ALLOY)
                .responseFormat(OpenAiAudioApi.SpeechRequest.AudioResponseFormat.MP3)
                .speed(1.0f)
                .build();

        SpeechPrompt speechPrompt = new SpeechPrompt(input, speechOptions);
        SpeechResponse response = openAiAudioSpeechModel.call(speechPrompt);
        return response.getResult().getOutput();
    }
}
