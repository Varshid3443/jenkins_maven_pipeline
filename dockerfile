# Use OpenJDK base image
FROM openjdk:11-jre-slim

# Set working directory in the container
WORKDIR /app

# Copy the JAR file from the Maven build
COPY target/jenkins-maven-pipeline-1.0-SNAPSHOT.jar /app/my-app.jar

# Expose port 8080
EXPOSE 8080

# Command to run the app
ENTRYPOINT ["java", "-jar", "/app/my-app.jar"]
