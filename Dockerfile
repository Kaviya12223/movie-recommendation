# Use official Python base image
FROM python:3.10-slim



# Set the working directory in the container
WORKDIR /app

# Copy all files into the container
COPY . .

# Install required Python packages
RUN pip install --no-cache-dir streamlit pandas

# Expose Streamlit default port
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "app.py"]