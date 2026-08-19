# Dockerfile — Lab 15, Virtualization.
# A container is OS-level virtualization: it shares the host kernel instead of
# running a full guest OS like a KVM/QEMU VM. Build a small app image to compare
# the container model with the VM model taught in this lab.
# Build with Docker Desktop:  docker build -t serverplus-app .
# Run:                        docker run -d -p 8000:8000 serverplus-app
FROM python:3.12-slim

LABEL course="CompTIA Certified Server+ (TGS-2024048318)" lab="15"

WORKDIR /app
COPY app.py .

EXPOSE 8000
# A tiny built-in web server so the container has something to serve
CMD ["python", "app.py"]
