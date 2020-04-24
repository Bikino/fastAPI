from fastapi import FastAPI 

app = FastAPI()

@app.get('/hello')
def hello():

    """Test endpoint"""
    return {'hello':'world world'}


@app.get('/welcome')
def welcomeMessage():

    return {'Message':'Welcome to my first FastAPI Application '}