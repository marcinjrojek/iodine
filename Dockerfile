FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y iodine && rm -rf /var/lib/apt/lists/*
EXPOSE 53/udp
ENTRYPOINT ["iodined"]