FROM ubuntu:14.04

MAINTAINER nbosco182@gmail.com

# Install Python
RUN apt-get update && apt-get install -y --no-install-recommends \
    python \
    python-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/ \
    # Install pip and virtual environment

