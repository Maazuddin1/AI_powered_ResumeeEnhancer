# Use a slim Python base image
FROM python:3.9-slim-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Set environment variables (better practice than hardcoding in the Python script)
ENV OPENAI_API_KEY=${OPENAI_API_KEY}

# Expose the port your application listens on
EXPOSE 8000

# Set the command to run your application using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
