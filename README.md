# Interview Scale Java Application

A Spring Boot application demonstrating REST API development with proper testing and industry best practices.

## 🚀 Features

- **REST API Endpoint**: Simple hello world endpoint
- **Comprehensive Testing**: Unit tests and integration tests using JUnit 5
- **Spring Boot**: Modern Java framework with auto-configuration
- **Gradle Build System**: Dependency management and build automation
- **Code Quality**: Proper documentation, formatting, and best practices

## 📋 Prerequisites

- **Java 17** or higher
- **Gradle 7.0+** (included via wrapper)
- **Git** for version control

## 🛠️ Installation & Setup

### 1. Clone the Repository
```bash
git clone https://github.com/pridhviraj2602/InterviewScaleJava.git
cd InterviewScaleJava
```

### 2. Set Java Path (macOS with Homebrew)
```bash
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
```

### 3. Verify Java Installation
```bash
java -version
```

## 🏃‍♂️ Running the Application

### Option 1: Using the Convenience Script
```bash
./run.sh
```

### Option 2: Manual Commands
```bash
# Run tests
./gradlew test

# Start the application
./gradlew bootRun
```

### Option 3: Build and Run JAR
```bash
# Build the application
./gradlew build

# Run the JAR file
java -jar build/libs/InterviewScaleJava-0.0.1-SNAPSHOT.jar
```

## 🧪 Testing

### Run All Tests
```bash
./gradlew test
```

### Run Tests with Coverage
```bash
./gradlew test jacocoTestReport
```

### Test Categories
- **Unit Tests**: Basic assertion tests
- **Integration Tests**: Spring context loading
- **API Tests**: REST endpoint testing with MockMvc

## 🌐 API Endpoints

### Hello World Endpoint
- **URL**: `GET /hello_world`
- **Response**: `{"hello": "world"}`
- **Status Code**: `200 OK`

#### Example Usage
```bash
# Using curl
curl http://localhost:8080/hello_world

# With status code
curl -w "\nHTTP Status: %{http_code}\n" http://localhost:8080/hello_world
```

#### Expected Response
```json
{
  "hello": "world"
}
```

## 📁 Project Structure

```
src/
├── main/
│   ├── java/
│   │   └── com/scale/InterviewScaleJava/
│   │       ├── InterviewScaleJavaApplication.java    # Main application class
│   │       └── HelloWorldController.java             # REST controller
│   └── resources/
│       └── application.properties                    # Application configuration
└── test/
    └── java/
        └── com/scale/InterviewScaleJava/
            └── InterviewScaleJavaApplicationTests.java  # Test classes
```

## ⚙️ Configuration

The application is configured via `src/main/resources/application.properties`:

```properties
# Application Configuration
spring.application.name=InterviewScaleJava

# Server Configuration
server.port=8080
server.servlet.context-path=/

# Logging Configuration
logging.level.com.scale.InterviewScaleJava=INFO
logging.level.org.springframework.web=INFO

# Management endpoints (for monitoring)
management.endpoints.web.exposure.include=health,info
management.endpoint.health.show-details=when-authorized
```

## 🔧 Development

### Code Style
- **Indentation**: 4 spaces (no tabs)
- **Line Length**: Maximum 120 characters
- **Documentation**: JavaDoc for all public methods
- **Naming**: camelCase for variables and methods, PascalCase for classes

### Best Practices Applied
- ✅ Proper error handling with ResponseEntity
- ✅ Comprehensive test coverage
- ✅ Clear documentation and comments
- ✅ Consistent code formatting
- ✅ Separation of concerns
- ✅ RESTful API design

## 🚀 Deployment

### Local Development
```bash
./gradlew bootRun
```

### Production Build
```bash
./gradlew build
java -jar build/libs/InterviewScaleJava-0.0.1-SNAPSHOT.jar
```

## 📊 Monitoring

### Health Check
```bash
curl http://localhost:8080/actuator/health
```

### Application Info
```bash
curl http://localhost:8080/actuator/info
```

## 🧪 Testing the Application

### 1. Start the Application
```bash
./gradlew bootRun
```

### 2. Test the Endpoint
```bash
curl http://localhost:8080/hello_world
```

### 3. Verify Response
Expected output:
```json
{"hello":"world"}
```

### 4. Check Status Code
```bash
curl -I http://localhost:8080/hello_world
```

## 📝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Pridhvi Raj**
- GitHub: [@pridhviraj2602](https://github.com/pridhviraj2602)

## 🆘 Troubleshooting

### Common Issues

#### Java Not Found
```bash
# On macOS with Homebrew
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# Verify installation
java -version
```

#### Port Already in Use
```bash
# Kill process on port 8080
lsof -ti:8080 | xargs kill -9
```

#### Gradle Wrapper Issues
```bash
# Make wrapper executable
chmod +x gradlew
```

## 📚 Additional Resources

- [Spring Boot Documentation](https://spring.io/projects/spring-boot)
- [JUnit 5 User Guide](https://junit.org/junit5/docs/current/user-guide/)
- [Gradle User Manual](https://docs.gradle.org/current/userguide/userguide.html)
