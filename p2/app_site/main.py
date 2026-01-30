from fastapi import FastAPI
from fastapi.responses import FileResponse
from fastapi.staticfiles import StaticFiles
from pathlib import Path
import socket
import platform

app = FastAPI()

app.mount("/assets", StaticFiles(directory="./"), name="assets")

@app.get("/")
def root():
    return FileResponse(Path("index.html"))
@app.get("/hostname")
def hostname():
    return {"pod": socket.gethostname(), "node": platform.platform()}
