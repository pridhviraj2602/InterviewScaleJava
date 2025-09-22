#!/bin/bash

# Interview Scale Java Application Runner
# This script sets up the environment and runs the Spring Boot application

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Set Java path for macOS with Homebrew
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

print_status "Setting up Interview Scale Java Application..."

# Check if Java is available
if ! command -v java &> /dev/null; then
    print_error "Java not found. Please install Java 17."
    print_status "On macOS with Homebrew: brew install openjdk@17"
    exit 1
fi

# Display Java version
print_status "Java version:"
java -version

# Check if Gradle wrapper exists
if [ ! -f "./gradlew" ]; then
    print_error "Gradle wrapper not found. Please run this script from the project root."
    exit 1
fi

# Make gradlew executable
chmod +x gradlew

print_status "Running tests..."
if ./gradlew test; then
    print_success "All tests passed!"
else
    print_error "Tests failed. Please fix the issues before running the application."
    exit 1
fi

echo ""
print_status "Starting Spring Boot application..."
print_status "The application will be available at: http://localhost:8080"
print_status "Test the endpoint with: curl http://localhost:8080/hello_world"
print_status "Health check: curl http://localhost:8080/actuator/health"
print_status "Press Ctrl+C to stop the application"
echo ""

# Start the application
./gradlew bootRun
