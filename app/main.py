from fastapi import FastAPI
from pydantic import BaseModel
from app.model.model import predict_pipeline 
from app.model.model import __version__ as model_version




# Create FastAPI object
app = FastAPI()

class TextIn(BaseModel):
    text: str

class predictionOut(BaseModel):
    language: str


# API operations
@app.get("/")
def home():
    return{"health_check": "OK", "model_version": model_version}


@app.post("/predict", response_model=predictionOut)
def predict(payload:TextIn):
    language = predict_pipeline(payload.text)
    return {"language": language}


