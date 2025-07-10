# Gunakan base image resmi dari linuxserver/code-server
FROM lscr.io/linuxserver/code-server:latest

# Set environment variables (opsional, sesuai kebutuhan)
ENV PUID=0 \
    PGID=0 \
    TZ=Asia/Jakarta \
    PASSWORD= \
    SUDO_PASSWORD=

# (Opsional) Tambahkan konfigurasi tambahan jika diperlukan
# Contoh: Install paket tambahan
# RUN apt-get update && apt-get install -y <paket-tambahan>

# Expose port default code-server
EXPOSE 8443

# Volume untuk konfigurasi persisten
VOLUME /config

# Command default dari base image
CMD ["/init"]
