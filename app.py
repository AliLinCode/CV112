from flask import Flask, render_template
import requests

app = Flask(__name__, template_folder='./template')

@app.route('/')
def home():
    response = requests.get('https://api.thecatapi.com/v1/images/search')
    data = response.json()
    image_url = data[0]['url']
    return render_template('index.html', image_url=image_url)

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5050, debug=True)
