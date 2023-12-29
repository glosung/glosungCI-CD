#!/bin/bash

# Install autogen tool
RUN apt-get update -y && \
    apt-get install -y autogen

# Build your application
npm install
npm run build