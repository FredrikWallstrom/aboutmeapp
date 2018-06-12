from flask import render_template
from flask_bootstrap import Bootstrap
from src import app

Bootstrap(app)

@app.route('/')
def home():
    user = {'username': 'Fredrik Wallström'}
    return render_template('index.html')