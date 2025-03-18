FROM openjdk:25-jdk-slim

WORKDIR /app

ADD target/digital-clock-1.0-SNAPSHOT.jar /app/
COPY target/start.sh /app/

ENV DISPLAY=:0
RUN chmod +x /app/start.sh
RUN apt-get update && apt-get install -y xvfb 

EXPOSE 9000

CMD ["/app/start.sh"]
