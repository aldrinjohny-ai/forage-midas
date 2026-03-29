# Use a lightweight Java 17 image
FROM openjdk:17-jdk-slim

# Create a directory for the app
WORKDIR /app

# Copy the built JAR file from your target folder
COPY target/*.jar app.jar

# Expose the port Spring Boot runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]