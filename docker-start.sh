#!/bin/sh

URL="${APP_PUBLIC_URL:-http://localhost:8080}"
echo "Annotation Tool is accessible at: ${URL}"
exec nginx -g 'daemon off;' 2>/dev/null
