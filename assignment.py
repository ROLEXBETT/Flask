from flask import *

app = Flask(__name__)

@app.route("/api/simple-interest", methods=["POST"])
def simple_interest():
    if request.method == "POST":
        principal = request.form["principal"]
        rate = request.form["rate"]
        time = request.form["time"]
    
    si = int(principal) * int(rate) * int(time) / 100
    
    return jsonify({"Simple Interest": si})

if __name__ == "__main__":
    app.run(debug=True)
