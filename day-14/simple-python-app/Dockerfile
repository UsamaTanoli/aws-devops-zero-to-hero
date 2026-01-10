# Base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose the port the Flask application will be listening on
EXPOSE 5000

# Set environment variables, if necessary
# ENV MY_ENV_VAR=value

# Run the Flask application
CMD ["python", "app.py"]

########################################################
# slim build

# Use lightweight Python 3.11 image
# FROM python:3.11-slim

# # Set working directory
# WORKDIR /app

# # Avoid caching and reduce layer size
# ENV PIP_NO_CACHE_DIR=1 \
#     PYTHONDONTWRITEBYTECODE=1 \
#     POETRY_VIRTUALENVS_CREATE=false

# # Install system dependencies required for some Python packages
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     build-essential \
#     && rm -rf /var/lib/apt/lists/*

# # Copy only requirements first (leverages Docker cache)
# COPY requirements.txt .

# # Install Python dependencies
# RUN pip install --upgrade pip \
#     && pip install -r requirements.txt

# # Copy application code
# COPY . .

# # Expose Flask port
# EXPOSE 5000

# # Run the Flask app
# CMD ["python", "app.py"]


