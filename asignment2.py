# Import flask and its components
from flask import *
import os

# import the pymysql module : it helps us crate connections btw python and mysql database
import pymysql

#create a flask application
app = Flask(__name__)

#configure the location for smartphone photos to be saved on the app
app.config["UPLOAD_FOLDER"] = "static/images"

# Route for adding smartphones
@app.route("/api/add_smartphones", methods = ["POST"])
def add_smartphones():
    if request.method == "POST":
        # Extract data entered on the form
        name = request.form["name"]
        brand = request.form["brand"]
        model = request.form["model"]
        storage = request.form["storage"]
        ram = request.form["ram"]
        battery = request.form["battery"]
        price = request.form["price"]
        stock = request.form["stock"]

        # Handling the photo file
        photo = request.files["photo"]

        # Extract the file of the product photo
        filename = photo.filename

        #By use of the os module we can extract the file path where the images is currently saved
        photo_path = os.path.join(app.config["UPLOAD_FOLDER"], filename)
        
        #save the phone photo image ito the new location
        photo.save(photo_path)

         # print them out to test whether you are receiving the details sent with the request
        print(name, brand, model, storage, ram, battery, price, stock, photo)

        # Establish connection to the "online" database
        connection = pymysql.connect(host="localhost", user="root", password="", database="online")

        #create a cursor 
        cursor = connection.cursor()

        # SQL to insert smartphone details
        sql = "INSERT INTO smartphones (name, brand, model, storage, ram, battery, price, stock, photo) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
        
        data = (name, brand, model, storage, ram, battery, price, stock, photo)

           # use the cursor to execute the sql as you replace the placeholders with the actual data.
        cursor.execute(sql, data)

        # commit the changes to the database
        connection.commit()
        


        return jsonify({"message": "Smartphone added successfully!"})
    
    #  ROUTE FOR FETCHING SMARTPHONES
@app.route("/api/get_smartphones", methods=["GET"])
def get_smartphones():
    # Establish connection to the "online" database
    connection = pymysql.connect(host="localhost", user="root", password="", database="online")
    
    # Use DictCursor so the data returns as a list of dictionaries 
    cursor = connection.cursor(pymysql.cursors.DictCursor)
    
     # structure the sql query to fetch all the product details from the table product_details
    sql = "SELECT * FROM smartphones"
    cursor.execute(sql)
    
     #create a variable that hold the data fetched from the table
    smartphones = cursor.fetchall()
   

    return jsonify(smartphones)


#Below we run the application
app.run(debug=True)