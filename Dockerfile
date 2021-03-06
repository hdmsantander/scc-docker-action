# Use Alpine image
FROM alpine:3.12.1

# Set user name
ENV USER sccuser
ENV UID 1001
ENV HOME /home/sccuser
ENV PATH "$PATH:$HOME"

# Install wget, sudo
RUN apk add --update sudo wget bash

# Add new user
RUN adduser -D $USER -u $UID \
        && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
        && chmod 0440 /etc/sudoers.d/$USER 

# Change to user
USER $USER

# Set application workdir to user home dir
WORKDIR $HOME

# Download scc
RUN wget -q https://github.com/boyter/scc/releases/download/v2.13.0/scc-2.13.0-i386-unknown-linux.zip
RUN unzip -q ./scc-2.13.0-i386-unknown-linux.zip -d $HOME
RUN chmod +x $HOME/scc

# Copy shell script
COPY entrypoint.sh /entrypoint.sh

# Run script
ENTRYPOINT ["/entrypoint.sh"]
