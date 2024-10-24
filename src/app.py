from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/Contact')
def contact():
    return render_template('pages/contact.html')

@app.route('/Home')
def home():
    return render_template('pages/home.html')

@app.route('/AboutUS')
def about():
    return render_template('pages/about.html')

if __name__ == '__main__':
    app.run(debug=True)
