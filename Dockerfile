# Use an official Python runtime as a parent image
FROM python:3.9

# Add a non-root user and set up necessary permissions
RUN adduser --disabled-password --gecos '' first_user

# Set the working directory inside the container so all future commands run here
WORKDIR /home/first_user

# Set permissions for the copied files
RUN chown -R first_user:first_user /home/first_user

# Copy the current directory contents into the container at /home/first_user
COPY . /home/first_user/

# Install any needed packages specified in requirements.txt
RUN python3 -m venv /home/first_user/venv
RUN /home/first_user/venv/bin/pip install --upgrade pip

# Install Python dependencies inside the virtual environment
# COPY requirements.txt /home/first_user/
# RUN /home/first_user/venv/bin/pip install -r /home/first_user/requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable (optional, for setting any env variables)
ENV NAME World

# Switch to non-root user for running the application
USER first_user

# Set the working directory to the directory containing the application
WORKDIR /home/first_user/PF-Assignment-2-Inventory_Management_System

# Correct way to run Python from the virtual environment using CMD
CMD ["/home/first_user/venv/bin/python", "./Cooke_Alex_Inventory_Management_System/app.py"]