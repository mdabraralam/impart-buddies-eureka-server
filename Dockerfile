# Use a lightweight JDK image to run the JAR
FROM openjdk:17-jdk-slim

# Set working directory for the runtime container
WORKDIR /eureka-server-app

# Copy the built JAR from the Maven build stage
COPY target/Impart-Buddies-Eureka-Server-0.0.1-SNAPSHOT.jar eureka-server.jar

# Expose the Eureka Server port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]