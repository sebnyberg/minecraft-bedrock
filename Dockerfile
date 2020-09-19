FROM debian:10.5

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y curl unzip \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ENV VERSION=1.16.40.02
ENV LD_LIBRARY_PATH=/minecraft

COPY entrypoint.sh /bin/entrypoint
RUN chmod +x /bin/entrypoint

WORKDIR /minecraft

ENTRYPOINT ["/bin/entrypoint"]
CMD ["/bin/sh", "-c", "/minecraft/bedrock_server"]