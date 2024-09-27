# Build
FROM eclipse-temurin:17-jdk-alpine AS BUILD
COPY . /app/
WORKDIR /app/
ARG offlinekey
ENV VAADIN_OFFLINE_KEY=$offlinekey
RUN ./mvnw clean test package -Pproduction
RUN ls -la /app/target

#Run
FROM eclipse-temurin:17-jre-alpine
COPY target/viewing-plan-1.0-SNAPSHOT.jar /app/
WORKDIR /app/
EXPOSE 8080
ENTRYPOINT java -jar viewing-plan-1.0-SNAPSHOT.jar 8080
