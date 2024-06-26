FROM python:3.8
# Set environment variables
ENV PYTHONUNBUFFERED 1
# Set the working directory in the container
WORKDIR / profitsprediction
# Install dependencies
COPY requirements.txt /profitsprediction/
COPY requirements.txt /profitsprediction/

RUN pip install --no-cache-dir -r requirements.txt
# Copy the Django project files into the container
COPY . .
# Expose the port that Django runs on
EXPOSE 8000
# Run the Django development server
CMD ["python", "manage.py", "runserver"]

