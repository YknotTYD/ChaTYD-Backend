#flask_api.py

import flask
import flask_cors
from chatydapi import ChaTYDAPI

#learn RESTAPI
#add a timeout system

pass

aqua = ChaTYDAPI();
app = flask.Flask("ChaTYD-Backend");
flask_cors.CORS(app, origins = ["https://yknottyd.github.io/ChaTYD-Frontend"]);

@app.route("/api", methods=["POST"])
def process_request():

    request = flask.request.json;

    if "request" not in request:
        return "Invalid request.";

    match request["request"]:

        case "ask":
            pass;
        case _:
            return "Invalid request.";

    return aqua.dflt_err_msg();

if __name__ == '__main__':

    print("Running on app.run.");

    app.run(
        host="0.0.0.0",
        ssl_context=("cert.pem", "key.pem"),
        debug=False,
        port=443
    );
