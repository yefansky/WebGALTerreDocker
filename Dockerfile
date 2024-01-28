FROM node:latest
WORKDIR /app
ARG VERSION=4.4.11
ADD https://github.com/OpenWebGAL/WebGAL_Terre/releases/download/${VERSION}/WebGAL_Terre_Linux_${VERSION}.zip /app/
RUN echo "#!/bin/sh\nexit 0" > /usr/bin/xdg-open && \
    chmod +x /usr/bin/xdg-open && \
    unzip -qq /app/*.zip -d /app/ && \
    mv /app/release/* /app/ && \
    rm -r /app/release && \
    rm /app/*.zip && \
    chmod +x ./WebGAL_Terre
VOLUME [ "/app/public/games" ]
EXPOSE 3001
CMD ["./WebGAL_Terre"]
