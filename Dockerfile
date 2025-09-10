FROM python:3.11-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Langflow
RUN pip install langflow==1.1.1

# Copy your flow file
COPY flows/ /app/flows/

# Create data directory
RUN mkdir -p /app/data

# Expose port
EXPOSE 7860

# Start Langflow
CMD ["langflow", "run", "--host", "0.0.0.0", "--port", "7860", "--path", "/app/flows"]
