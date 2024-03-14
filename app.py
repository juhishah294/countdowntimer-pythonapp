from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def countdown_timer():
    time_left = None

    if request.method == 'POST':
        time_left = int(request.form['time'])

    return render_template('index.html', time_left=time_left)

if __name__ == '__main__':
    app.run(debug=True)
