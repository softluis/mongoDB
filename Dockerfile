FROM ubuntu:latest

RUN \
	apt-get update \
	&& apt-get install -y --no-install-recommends 
 
   

COPY app.py /opt/app.py

EXPOSE 5000

ENTRYPOINT ["mongo", "/opt/app.py"]
