# Use a more "recent" version of ubuntu
FROM ubuntu:20.04
LABEL maintainer="wingnut0310 <wingnut0310@gmail.com>"
# Since I'm modifying this script, I give myself the permission to add myself to the group
LABEL recodestudios.modified-by="Kevin Roussel <kevin.rslfr@gmail.com>"

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV GOTTY_TAG_VER v1.0.1

# Install necessary packages
RUN apt-get -y update && \
    apt-get install -y curl && \
    curl -sLk https://github.com/yudai/gotty/releases/download/${GOTTY_TAG_VER}/gotty_linux_amd64.tar.gz \
    | tar xzC /usr/local/bin && \
    apt-get purge --auto-remove -y curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists*

# Set the default password (CHANGE THIS TO A SECURE PASSWORD)
ENV GOTTY_USERNAME root
ENV GOTTY_PASSWORD 1234
# Copy the modified run_gotty.sh script
COPY run_gotty.sh /run_gotty.sh

# Make the script executable
RUN chmod 744 /run_gotty.sh

# Expose the gotty port
EXPOSE 8080

# Start gotty with password authentication
CMD ["/bin/bash", "-c", "/run_gotty.sh -w $GOTTY_PASSWORD"]
