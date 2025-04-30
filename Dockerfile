FROM node:18-slim

# Cài curl và các phụ thuộc
RUN apt-get update && apt-get install -y curl gnupg

# Cài Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Tạo thư mục app
WORKDIR /app

# Copy package và source
COPY package.json ./
COPY server.js ./

# Cài dependencies
RUN npm install

# Expose port cho Railway
EXPOSE 11434

# Start server
CMD ["node", "server.js"]