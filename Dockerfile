FROM ollama/ollama
RUN ollama pull llama3
EXPOSE 11434
