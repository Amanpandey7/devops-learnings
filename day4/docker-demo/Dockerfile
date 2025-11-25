#Use base image 
FROM python:3.9-slim

#Setup working directory
WORKDIR /app

#Copy local code
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose port
EXPOSE 5000

# Default command
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]

