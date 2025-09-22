#!/bin/bash

# Set Java path
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# Check if Java is available
if ! command -v java &> /dev/null; then
    echo "Java not found. Please install Java 17."
    exit 1
fi

echo "Java version:"
java -version

echo ""
echo "Running tests..."
./gradlew test

echo ""
echo "Starting Spring Boot application..."
echo "The application will be available at: http://localhost:8080"
echo "Test the endpoint with: curl http://localhost:8080/hello_world"
echo "Press Ctrl+C to stop the application"
echo ""

./gradlew bootRun
