# Jenkins Inbound Agent with Extended Tools

A Docker image based on the official Jenkins inbound agent with additional tools for modern CI/CD pipelines.

## Features

- **Base Image**: `jenkins/inbound-agent:latest-jdk11`
- **Kubernetes Support**: Pre-installed `kubectl` for Kubernetes deployments
- **Browser Testing**: Chromium browser with Xvfb for headless testing
- **Docker Support**: Docker group configuration for container operations
- **Updated System**: Latest package updates and security patches

## Installed Tools

- **kubectl**: Latest stable version for Kubernetes cluster management
- **Chromium**: Headless browser for automated testing
- **Xvfb**: Virtual framebuffer for running GUI applications headlessly
- **Docker support**: Agent user added to docker group

## Usage

### With Jenkins Controller

```bash
docker run --rm \
  --init \
  jenkins/inbound-agent:extended \
  -url http://jenkins-server:port \
  -workDir=/home/jenkins/agent \
  <secret> <agent name>
```

### Environment Variables

- `CHROME_BIN`: Set to `/usr/bin/chromium` for browser testing frameworks

## Build

To build this image locally:

```bash
docker build -t jenkins-inbound-agent-extended .
```

## Maintainer

indivirtuell <office@indivirtuell.net>