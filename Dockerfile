FROM ubuntu:22.04

# Cài curl, ca-certificates, ollama
RUN apt-get update && apt-get install -y curl ca-certificates gnupg \
 && curl -fsSL https://ollama.com/install.sh | bash

# Expose port mà Ollama dùng
EXPOSE 11434

# Start Ollama server
CMD ["ollama", "serve"]