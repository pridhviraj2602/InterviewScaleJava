package com.scale.InterviewScaleJava;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.ResponseEntity;
import java.util.HashMap;
import java.util.Map;

/**
 * REST Controller for handling hello world endpoint.
 * Provides a simple endpoint that returns a JSON response.
 */
@RestController
public class HelloWorldController {

    /**
     * GET endpoint that returns a hello world message.
     * 
     * @return ResponseEntity containing a Map with hello world message
     */
    @GetMapping("/hello_world")
    public ResponseEntity<Map<String, String>> helloWorld() {
        Map<String, String> response = new HashMap<>();
        response.put("hello", "world");
        return ResponseEntity.ok(response);
    }
}
