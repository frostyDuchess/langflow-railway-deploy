FROM langflowai/langflow:latest

# Copy your flow file
COPY flows/ /app/flows/

# Override the default command to use your flows
CMD ["langflow", "run", "--host", "0.0.0.0", "--port", "7860", "--path", "/app/flows"]
