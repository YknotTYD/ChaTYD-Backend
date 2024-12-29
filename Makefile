#Makefile

ENV = ../penv
CERT = cert.pem
KEY = key.pem
PYTHONFILE = api
APPNAME = app

all:

	sudo $(ENV)/bin/gunicorn \
		--bind 0.0.0.0:443 \
		--certfile=$(CERT) \
		--keyfile=$(KEY) \
		$(PYTHONFILE):$(APPNAME)
