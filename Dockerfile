# Start with a base image that includes Maven and Java
FROM maven:3.8.1-openjdk-11 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the application code to the container
COPY . .

# Build the application with Maven
RUN mvn clean package

# Specify the command to run the application
CMD ["java", "-cp", "target/MyMavenApp-1.0-SNAPSHOT.jar", "com.example.MyApp"]
