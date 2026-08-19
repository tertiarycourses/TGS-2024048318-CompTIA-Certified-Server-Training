# Dockerfile — Lab 10, Server Roles (containerised web role).
# The container equivalent of the "Web" server role built in this lab.
# Build with Docker Desktop:  docker build -t serverplus-web .
# Run:                        docker run -d -p 8080:80 serverplus-web
FROM nginx:1.27-alpine

LABEL course="CompTIA Certified Server+ (TGS-2024048318)" \
      role="web" \
      lab="10"

# Replace the default site with a simple health page
RUN printf '%s\n' \
    '<!doctype html>' \
    '<title>Server+ Web Role</title>' \
    '<h1>CompTIA Server+ — Web Role (containerised)</h1>' \
    '<p>Served by nginx in a Docker container.</p>' \
    > /usr/share/nginx/html/index.html

# A basic container health check (the container equivalent of a service monitor)
HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget -qO- http://localhost/ >/dev/null 2>&1 || exit 1

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
