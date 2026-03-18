# Docker Usage Guide

This project is containerized so it can run the same way on any machine with Docker.

## Prerequisites

- Docker installed

## Build Image

```bash
docker build -t annotation-tool:latest .
```

## Run as a Service (Docker Compose)

Start service (recommended):

```bash
docker compose up --build
```

Start in background:

```bash
docker compose up --build -d
```

Stop service:

```bash
docker compose down
```

## Run Container

```bash
docker run --rm -p 8080:80 annotation-tool:latest
```

Open in browser:

- http://localhost:8080

## Stop Container

Press `Ctrl + C` in the terminal where the container is running.

## Optional: Run in Background

```bash
docker run -d --name annotation-tool -p 8080:80 annotation-tool:latest
```

Stop it later:

```bash
docker stop annotation-tool
```

## What Gets Served

- A production build of the React app from `dist/`
- Static files served by Nginx inside the container

## Notes

- Exported annotation files download directly in your browser.
- No backend/database is required for this app.
- Container startup logs print only the access URL by default.
- You can override the printed URL with `APP_PUBLIC_URL`.
