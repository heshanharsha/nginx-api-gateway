from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
  return "Hello, from Service 2!"

@app.route("/bar")
def hello_world2():
  return "Another route from Service 2!"

if __name__ == "__main__":
  app.run(host="0.0.0.0", debug=True)
