FROM node:18

# Install required packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    build-essential \
    git \
    curl \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

# Install n8n
RUN npm install -g n8n

# Create a gitpod user if needed
RUN groupadd -g 33333 gitpod || true && \
    useradd -m -u 33333 -g 33333 -s /bin/bash gitpod || true
