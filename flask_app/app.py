from flask import Flask
app = Flask(__name__)
 
@app.route('/')
def home():
    return "Hello you have succefully created a minimal python Flask app with Docker"