# Using base image
FROM python:3.10

# Set directory in the container
WORKDIR /app

# Install packages
RUN pip install fastapi pydantic SQLAlchemy pymongo uvicorn

# Copy application files into the container
COPY . /app

# Using port 8888
EXPOSE 8888

# Run uvicorn web server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8888"]
