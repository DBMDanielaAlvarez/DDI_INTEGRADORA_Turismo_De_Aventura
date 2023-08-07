from fastapi import FastAPI
from routes.personas import router
from routes.atractivoTuristico import router
from routes.comentarios import router
from routes.usuarios import router
from routes.valoracion import router
from routes.visitaAtractivo import router
from routes.visitaEstablecimiento import router
from routes.visitaPueblo import router

# Crear una instancia de FastAPI
app = FastAPI()

# Incluir el enrutador de la ruta del alumno en la aplicación
app.include_router(router)