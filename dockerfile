# Use OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the Maven build (assuming it's under target/ in the Maven build)
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app.jar

# Expose port 8080 (or whatever port your app uses)
EXPOSE 8080

# Command to run the app inside the container
ENTRYPOINT ["java", "-jar", "/app/my-app.jar"]
