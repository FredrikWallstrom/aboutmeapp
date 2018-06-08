from flask import render_template
from src import app

@app.route('/')
def home():
    user = {'username': 'Fredrik Wallström'}
    return render_template('home.html', title='Home', user=user)