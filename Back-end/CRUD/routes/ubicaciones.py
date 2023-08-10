from fastapi import APIRouter
from config.db import conn
from models.ubicaciones import db_turismo_de_aventura
from schemas.ubicaciones import Ubicacion
from datetime import datetime

routerUbicacion = APIRouter()

# Obtener Todas las personas
@routerUbicacion.get('/ubicacion')
def obtenerUbicacion():
    ubicacion_list_tuples = conn.execute(db_turismo_de_aventura.select()).fetchall()
    ubicacion_list_dicts = []
    for ubicacion_tuple in ubicacion_list_tuples:
        ubicacion_dict = {
            "ID":ubicacion_tuple[0],
            "Nombre": ubicacion_tuple[1],
            "Tipo": ubicacion_tuple[2],
            "Estatus": ubicacion_tuple[3],
            "Fecha_Registro": ubicacion_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            
        }
        ubicacion_list_dicts.append(ubicacion_dict)
    return ubicacion_list_dicts