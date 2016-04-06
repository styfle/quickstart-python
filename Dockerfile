# Using official python runtime base image
FROM python:2.7-slim

# Set the application directory
WORKDIR /app

# Install our requirements.txt
ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Copy our code from the current folder to /app inside the container
ADD . /app

# Flask runs on 80 but we will expose as 5000 in yml
EXPOSE 80

# Environment Variables
ENV NAME styfle

# Define our command to be run when launching the container
CMD ["python", "app.py"]
