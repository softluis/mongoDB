FROM ubuntu:latest

RUN \
	apt-get update \
	&& apt-get install -y --no-install-recommends \
		ca-certificates \
		jq \
		numactl \
 
   

COPY app.py /opt/app.py

EXPOSE 5000

ENTRYPOINT ["mongo", "/opt/app.py"]