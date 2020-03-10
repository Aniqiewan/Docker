FROM ubuntu:latest
RUN apt update && apt install -y python3 python3-pip
COPY . . 
RUN pip3 install -r requirements.txt
ENTRYPOINT ["/usr/local/bin/python3", "app.py"]
