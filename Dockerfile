FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y pip python3
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt --break-system-packages
ENTRYPOINT flask run --host=0.0.0.0
