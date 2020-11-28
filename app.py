
import pandas as pd
from flask import Flask, render_template, request
import csv
import os

app = Flask(__name__)

df=pd.read_csv('merged_cardio_train_sample.csv')

@app.route('/')
def index():
        return render_template('index.html')

@app.route('/about')
def about():
    return render_template('about.html',  tables=[df.to_html(classes='data')], titles=df.columns.values)




if __name__ == "__main__":
    app.run()