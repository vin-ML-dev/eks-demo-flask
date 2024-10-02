# Use the official Python image as base
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required Python packages
RUN pip install flask

# Expose the port the Flask app will run on
EXPOSE 5000

# Define the command to start the Flask app
CMD ["python", "app.py"]
