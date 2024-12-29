#test.py

import flask
import flask_cors

app = flask.Flask("ChaTYD-Backend")
flask_cors.CORS(app, origins = ["https://yknottyd.github.io/DNSTest2"])

@app.route("/api", methods=["POST"])
def process_request():

    request = flask.request.json

    if "request" not in request:
        return "Invalid request.";

    match request["request"]:

        case "ask":
            pass
        case _:
            return "Invalid request.";

    return f"None."

if __name__ == "__main__":

    print("Running on app.run.")

    app.run(
        host="0.0.0.0",
        ssl_context=("cert.pem", "key.pem"),
        debug=False,
        port=443
    )
