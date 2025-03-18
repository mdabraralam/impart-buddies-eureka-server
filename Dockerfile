# Use an official Maven image to build the JAR
FROM maven:3.8.8-eclipse-temurin-17 AS build

# Set working directory inside container
WORKDIR /app

# Copy the Maven project files to the container
COPY pom.xml .
COPY src ./src

# Build the JAR file using Maven
RUN mvn clean package -DskipTests

# Use a lightweight JDK image to run the JAR
FROM openjdk:17-jdk-slim

# Set working directory for the runtime container
WORKDIR /app

# Copy the built JAR from the Maven build stage
COPY --from=build /app/target/Impart-Buddies-Eureka-Server-0.0.1-SNAPSHOT.jar eureka-server.jar

# Expose the Eureka Server port
EXPOSE 8761

# Run the application
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]
