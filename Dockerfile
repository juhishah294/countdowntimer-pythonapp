# Use the official Python image as base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies needed for your application
# Since Tkinter is included in Python's standard library, no additional dependencies are required

# Run the Python application
CMD ["python", "CountdownTimer.py"]
