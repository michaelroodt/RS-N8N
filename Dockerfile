FROM n8nio/n8n:latest

USER root

# Bake community nodes into the image so Heroku dyno cycles don't wipe them
RUN mkdir -p /home/node/.n8n/nodes && \
    cd /home/node/.n8n/nodes && \
    npm init -y && \
    npm install n8n-nodes-resend && \
    chown -R node:node /home/node/.n8n

WORKDIR /home/node/packages/cli
ENTRYPOINT []
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
