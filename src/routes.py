from flask import render_template
from src import app

@app.route('/')
@app.route('/index')
def index():
    user = {'username': 'Fredrik Wallström'}
    return render_template('index.html', title='Home', user=user)