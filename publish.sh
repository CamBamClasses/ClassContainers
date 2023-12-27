docker buildx create --use --platform=linux/arm64,linux/amd64,linux/arm/v7,linux/arm/v8 --name multi-platform-builder
docker buildx inspect --bootstrap
docker buildx build --platform=linux/arm64,linux/amd64,linux/arm/v7,linux/arm/v8 --push --tag ghcr.io/cambamclasses/classcontainers:23.01 .
