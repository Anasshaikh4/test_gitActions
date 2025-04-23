# This is our main file.
#

from fastapi import FastAPI
import datetime
import os
import uvicorn

app = FastAPI()


@app.get("/")
def read_root(): 
    return {"message": "Kindly hit one of the following endpoints", "endpoints": ["/home", "/time"]}
@app.get("/home")
def greetPerson():
    return {"message":"success", "greet_msg" : "Hello Person!"}

@app.get("/time")
def get_time():
    current_time = datetime.datetime.now().strftime("%Y-%m-%d, %H:%M:%S")
    return {"status": "success", "time": current_time }


@app.get("/new")
def new_endpoint():
    return {"message": "This is a endpoint developed for testing!!"}

@app.get("/mudassirtest2")
def test_endpoint01():
    return {"message": "This is a test endpoint for Mudassir!", "time": datetime.datetime.now().strftime("%Y-%m-%d, %H:%M:%S")}


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=9001, reload=True)