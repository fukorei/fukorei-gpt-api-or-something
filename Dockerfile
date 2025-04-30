FROM ollama/ollama

EXPOSE 11434

CMD ["sh", "-c", "ollama serve & sleep 3 && ollama pull llama3 && tail -f /dev/null"]
