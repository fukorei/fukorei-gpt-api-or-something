FROM ollama/ollama

# Copy model config
COPY ollama.config.json /root/.ollama/

# Run Ollama on startup
CMD ["ollama", "serve"]