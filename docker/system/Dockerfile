FROM zpalata/zenlix:latest

COPY --chown=zenlix:zenlix start.sh /home/zenlix/zenlix/start.sh

RUN chmod 755 /home/zenlix/zenlix/start.sh

WORKDIR /home/zenlix/zenlix

EXPOSE 80 8083 3001

ENTRYPOINT ["/bin/bash", "/home/zenlix/zenlix/start.sh"]