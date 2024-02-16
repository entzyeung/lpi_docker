# Use an official Python base image. Adjust the version as needed.
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 7860 available to the world outside this container
EXPOSE 7860

# Define environment variable for the OpenAI API key
ENV OPENAI_API_KEY=""

# Command to run the app. Adjust if your app.py is located differently or requires different commands.
CMD ["streamlit", "run", "app.py"]
