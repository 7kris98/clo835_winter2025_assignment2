# Use Python base image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy dependencies file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files into the container
COPY . .

# Expose the port the app runs on (if using Flask)
EXPOSE 80

# Set the command to start the application
CMD ["python3", "app.py"]

