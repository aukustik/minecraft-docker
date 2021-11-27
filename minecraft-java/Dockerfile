FROM anapsix/alpine-java:8

ARG MINECRAFT_VERSION
ENV MINECRAFT_VERSION=${MINECRAFT_VERSION}
ARG FORGE_VERSION
ENV FORGE_VERSION=${FORGE_VERSION}
ARG XMS
ENV XMS=${XMS}
ARG XMX
ENV XMX=${XMX}
WORKDIR /opt/minecraft/server/
COPY ./files/* /opt/minecraft/
ENV DISPLAY=:0.0

RUN java -jar ../forge-${MINECRAFT_VERSION}-${FORGE_VERSION}-installer.jar --installServer

EXPOSE 25565

ENTRYPOINT java -Xms${XMS} -Xmx${XMX} -jar /opt/minecraft/server/forge-${MINECRAFT_VERSION}-${FORGE_VERSION}.jar nogui
