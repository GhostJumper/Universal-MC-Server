# Start from the OpenJDK 17 base image
FROM openjdk:17

WORKDIR /mc

COPY run.sh /run.sh

RUN chmod +x /run.sh

CMD [ "/run.sh" ]