FROM ghcr.io/astral-sh/uv:python3.13-bookworm-slim

# Set working directory
WORKDIR /poc2

# Copy files to container
COPY . .

RUN uv sync --locked

# Make the start script executable
RUN chmod +x ./start.sh

# Expose FastAPI default port
EXPOSE 8000

# Run the start.sh script
CMD ["uv", "run", "./start.sh"]
