FROM node:latest
WORKDIR /app
ADD https://github.com/OpenWebGAL/WebGAL_Terre/releases/download/4.4.10/WebGAL_Terre_Linux_4.4.10.zip /app/
RUN echo "#!/bin/sh\nexit 0" > /usr/bin/xdg-open && \
    chmod +x /usr/bin/xdg-open && \
    unzip -qq /app/WebGAL_Terre_Linux_4.4.10.zip -d /app/ && \
    mv /app/release/* /app/ && \
    rm -r /app/release && \
    rm /app/WebGAL_Terre_Linux_4.4.10.zip && \
    chmod +x ./WebGAL_Terre
VOLUME [ "/app/public/games" ]
EXPOSE 3001
CMD ["./WebGAL_Terre"]
