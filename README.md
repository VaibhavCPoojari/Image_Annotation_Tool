# Annotation Tool

A React-based image annotation tool with support for:

- Multi-image annotation
- Multi-class bounding boxes
- Zoom and edit-resize workflow
- Export in multiple CV training formats:
	- COCO (Faster R-CNN)
	- YOLO
	- Pascal VOC

## Local Development

Install dependencies:

```bash
npm install
```

Run dev server:

```bash
npm run dev
```

Build production bundle:

```bash
npm run build
```

Preview production build:

```bash
npm run preview
```

## Docker

Build image:

```bash
docker build -t annotation-tool:latest .
```

Run container:

```bash
docker run --rm -p 8080:80 annotation-tool:latest
```

Open:

- http://localhost:8080

## Docker Compose (Recommended)

Start service:

```bash
docker compose up --build
```

Run in background:

```bash
docker compose up --build -d
```

Stop service:

```bash
docker compose down
```

For detailed Docker usage, see [DOCKER_USAGE.md](DOCKER_USAGE.md).
