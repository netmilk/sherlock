FROM sherlock/sherlock as sherlock

# Install Dependencies for the Actor Shell Script
RUN apt-get update; apt-get install curl gpg -y
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
RUN apt-get update && apt-get install -y curl bash git jq jo xz-utils nodejs

# Install Apify CLI for the Actor Runtime
RUN npm -g install apify-cli

COPY .actor/ .actor

RUN pwd
RUN ls -lah
RUN ls -lah .actor
RUN ls --recursive .actor

ENTRYPOINT [".actor/actor.sh"]
