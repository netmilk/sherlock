FROM sherlock/sherlock as sherlock

COPY .actor/ .actor

# Install Dependencies
# curl and bash for nvm & apify-cli
RUN apt-get update; apt-get install -y curl bash jq jo xz-utils
 
# Install Apify CLI (node.js) for the Actor Runtime
RUN .actor/install_cli.sh 

# Install Dependencies for the Actor Shell Script

# Copy Actor dir with the actorization shell script

ENTRYPOINT [".actor/actor.sh"]
