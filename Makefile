#Makefile

#add automatic SSL update

ENV = ../penv
CERT = ssl/cert.pem
KEY = ssl/key.pem
PYTHONFILE = flask_api
APPNAME = app

all:

	@ sudo true > /dev/null

	@ echo " __   ____  _             _____ __   __ ____          ____                _                      _        _     ____   ___  __ "
	@ echo "| _| / ___|| |__    __ _ |_   _|\\ \\ / /|  _ \\        | __ )   __ _   ___ | | __  ___  _ __    __| |      / \\   |  _ \\ |_ _||_ |"
	@ echo "| | | |    | '_ \\  / _\` |  | |   \\ V / | | | | _____ |  _ \\  / _\` | / __|| |/ / / _ \\| '_ \\  / _\` |     / _ \\  | |_) | | |  | |"
	@ echo "| | | |___ | | | || (_| |  | |    | |  | |_| ||_____|| |_) || (_| || (__ |   < |  __/| | | || (_| |    / ___ \\ |  __/  | |  | |"
	@ echo "| |  \\____||_| |_| \\__,_|  |_|    |_|  |____/        |____/  \\__,_| \\___||_|\\_\\ \\___||_| |_| \\__,_|   /_/   \\_\\|_|    |___| | |"
	@ echo "|__|                                                                                                                       |__|"

	@ sudo $(ENV)/bin/gunicorn \
		--bind 0.0.0.0:443 \
		--certfile=$(CERT) \
		--keyfile=$(KEY) \
		$(PYTHONFILE):$(APPNAME)
