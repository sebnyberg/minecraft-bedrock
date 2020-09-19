# minecraft-bedrock

A sane alternative to Github's plethora of over-engineered Minecraft Bedrock server setups.

```bash
docker build . -t minecraft-bedrock

docker run -it --rm \
  -v $(pwd)/minecraft:/minecraft \
  -p 19132:19132/udp \
  minecraft-bedrock
```

Replace `$(pwd)/minecraft` with the directory on the local system where Minecraft data should be stored.
