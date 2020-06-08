from flask import Flask
app = Flask(__name__)
 
@app.route('/')
def home():
    return "Hello you have successfully created a minimal python Flask app with Docker"