# Use an OpenJDK image as the base image
FROM openjdk:19-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the .war file from your target directory
COPY target/mydiary-0.0.1-SNAPSHOT.war /app/mydiary.war

# Expose port 8080 for the application
EXPOSE 8080

# Run the .war file with java -jar
ENTRYPOINT ["java", "-jar", "/app/mydiary.war"]
