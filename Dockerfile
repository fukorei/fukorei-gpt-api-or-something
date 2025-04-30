FROM ollama/ollama

# Expose đúng cổng API của Ollama
EXPOSE 11434

# Start Ollama server
CMD ["ollama", "serve"]
