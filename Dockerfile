FROM langflowai/langflow:latest

# Copy your flow file to the default location
COPY flows/canvas_agent.json /root/.langflow/

# Just run Langflow without the --path option
CMD ["langflow", "run", "--host", "0.0.0.0", "--port", "7860"]
