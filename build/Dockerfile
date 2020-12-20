FROM alvinso01/minecraft-server-1.12.2:latest

RUN apt-get update && apt-get install unzip

RUN mkdir /tmp/build
RUN wget -O /tmp/build/skyfactory-4.zip https://media.forgecdn.net/files/3012/800/SkyFactory-4_Server_4.2.2.zip

COPY setup.sh /tmp/build/
RUN chmod +x /tmp/build/setup.sh
RUN /tmp/build/setup.sh

WORKDIR /usr/src/app

CMD ["./server.sh"]
