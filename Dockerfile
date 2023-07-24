# Fetch base image
FROM openjdk:17-jdk-slim

# The application's jar file
ARG JAR_FILE=target/*.jar

# Copy the application's jar to the container
COPY ${JAR_FILE} app.jar

# Execute the application
ENTRYPOINT ["java","-jar","/app.jar"]
