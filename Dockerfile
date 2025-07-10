FROM codercom/code-server:latest

# Optional: Ubah port atau setting tambahan
ENV PASSWORD=""
CMD ["code-server", "--auth=none", "--bind-addr=0.0.0.0:8080", "--disable-telemetry"]
