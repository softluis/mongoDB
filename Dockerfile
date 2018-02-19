FROM ubuntu:latest

RUN \
	apt-get update  
 
   

COPY app.py /opt/app.py

EXPOSE 5000

ENTRYPOINT ["python", "/opt/app.py"]
