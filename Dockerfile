FROM eclipse-temurin:17-jre-alpine
COPY target/viewing-plan-1.0-SNAPSHOT.jar /app/
WORKDIR /app/
EXPOSE 8080
ENTRYPOINT java -jar viewing-plan-1.0-SNAPSHOT.jar 8080
