import os
from fastapi import FastAPI

app = FastAPI()

API_KEY = os.environ.get("API_KEY")
MY_PROJECT = os.environ.get("MY_PROJECT") or "this is my project"

if not API_KEY:
    raise NotImplementedError("'api_key' was not set")

@app.get("/")
def read_index():
    return {"hello": "python-forest!!", "project_name": MY_PROJECT, "API_KEY": API_KEY}