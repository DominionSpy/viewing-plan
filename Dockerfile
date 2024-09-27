# Build
FROM eclipse-temurin:17-jdk-alpine AS build
COPY . /app/
RUN chmod a+x /app/mvnw
WORKDIR /app/
ARG offlinekey
ENV VAADIN_OFFLINE_KEY=$offlinekey
RUN ./mvnw clean package -Pproduction
RUN ls -la /app/target

#Run
FROM eclipse-temurin:17-jre-alpine
COPY --from=build /app/target/viewing-plan-1.0-SNAPSHOT.jar /app/
WORKDIR /app/
EXPOSE 8080
ENTRYPOINT java -Xmx300m -jar viewing-plan-1.0-SNAPSHOT.jar 8080
