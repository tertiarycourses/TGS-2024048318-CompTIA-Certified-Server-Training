"""app.py — Lab 15, a minimal app for the container image (no dependencies).
Serves a page on :8000 so the container/VM comparison has a running workload."""
from http.server import BaseHTTPRequestHandler, HTTPServer
import socket


class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        body = (
            "CompTIA Server+ — Lab 15\n"
            "Running inside a container (OS-level virtualization).\n"
            f"Host: {socket.gethostname()}\n"
        ).encode()
        self.send_response(200)
        self.send_header("Content-Type", "text/plain")
        self.end_headers()
        self.wfile.write(body)

    def log_message(self, *_):  # keep the container log quiet
        pass


if __name__ == "__main__":
    HTTPServer(("0.0.0.0", 8000), Handler).serve_forever()
