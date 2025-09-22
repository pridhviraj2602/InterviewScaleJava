package com.scale.InterviewScaleJava;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import static org.junit.jupiter.api.Assertions.assertEquals;

/**
 * Test class for InterviewScaleJavaApplication.
 * Contains unit tests and integration tests for the application.
 */
@SpringBootTest
@AutoConfigureMockMvc
class InterviewScaleJavaApplicationTests {

    @Autowired
    private MockMvc mockMvc;

    /**
     * Test that the Spring application context loads successfully.
     */
    @Test
    void contextLoads() {
        // This test verifies that the Spring application context can be loaded
        // without any configuration errors.
    }

    /**
     * Test basic assertion functionality.
     * Verifies that the testing framework is working correctly.
     */
    @Test
    void testBasicAssertion() {
        assertEquals(1, 1, "Basic assertion should pass");
    }

    /**
     * Test the hello world endpoint.
     * Verifies that the REST endpoint returns the expected response.
     */
    @Test
    void testHelloWorldEndpoint() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/hello_world"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.jsonPath("$.hello").value("world"));
    }
}
