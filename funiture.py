import pymysql
from flask import*
import os
# initialize the app 
app=Flask(__name__)
app.config["UPLOAD_FOLDER"]="static/images"
# define your route/endpoint 
@app.route("/api/add_product", methods=["post"])
# define your function
def add_product():
    # get product inputs 
    name=request.form["name"]
    brand=request.form["brand"]
    material=request.form["material"]
    dimentions=request.form["dimentions"]
    weight=request.form["weight"]
    color=request.form["color"]
    price=request.form["price"]
    stock=request.form["stock"]
    photo=request.files["photo"]
    # define your connection 

    # get filename 
    filename=photo.filename
    photopath= photopath=os.path.join(app.config["UPLOAD_FOLDER"],filename)

    # save the photo 
    photo.save(photopath)

    # connection to database 
    connection=pymysql.Connect(host="localhost",user="root",password="",database="kifarusokogarden")

    # define your cursor 
    cursor=connection.cursor()

    # define yoursql to insert
    sql="insert into funiture(name,brand,material,dimentions,weight,color,price,stock,photo)values(%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    # define your data 
    data=(name,brand,material,dimentions,weight,color,price,stock,filename)
    # execute/run query 
    cursor.execute (sql,data)
    # commit/save changes 
    connection.commit()
    # return Response
    return jsonify({"message":"product added succesfull"})

# run the application 
app.run(debug=True)