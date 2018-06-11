from flask import render_template
from src import app
from flask_mobility import Mobility
from flask_mobility.decorators import mobile_template

Mobility(app)

@app.route('/')
@mobile_template('{mobile/}home.html')
def home(template):
    user = {'username': 'Fredrik Wallström'}
    return render_template(template)