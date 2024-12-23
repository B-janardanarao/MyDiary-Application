# Use OpenJDK as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the WAR file to the container
COPY target/mydiary-0.0.1-SNAPSHOT.war /app/mydiary.war

# Expose port 8080 for the application
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/mydiary.war"]
