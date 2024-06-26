# syntax=docker/dockerfile:1

FROM python:3.13.0a6-slim

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

# Expose port 5000 for the Flask application to listen on
EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]