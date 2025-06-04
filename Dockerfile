# Use official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install Django globally
RUN pip install django

# Copy your Django app into the container
COPY . /app

# Expose port Django will run on
EXPOSE 8080

# Default command to run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
