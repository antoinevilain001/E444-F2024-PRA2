# Use an official Python runtime as a parent image
FROM python:3.10.11

# Set the working directory in the container
WORKDIR /my_app

# Copy the requirements file first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Expose the necessary port
EXPOSE 5000

# Set the environment variable
ENV FLASK_APP=hello.py

# Command to run your application
CMD ["flask", "run", "--host=0.0.0.0"]