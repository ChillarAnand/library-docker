import flask


app = flask.Flask(__name__)


@app.route('/')
def home():
    return 'hello world - v1.0.0'
