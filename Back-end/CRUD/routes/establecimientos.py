from fastapi import APIRouter
from config.db import conn
from models.establecimientos import db_turismo_de_aventura
from schemas.establecimientos import Establecimiento
from datetime import datetime

routerEstablecimiento = APIRouter()

# Obtener Todas las personas
@routerEstablecimiento.get('/establecimiento')
def obtenerPersonas():
    establecimiento_list_tuples = conn.execute(db_turismo_de_aventura.select()).fetchall()
    establecimiento_list_dicts = []
    for establecimiento_tuple in establecimiento_list_tuples:
        establecimiento_dict = {
            "ID":establecimiento_tuple[0],
            "Nombre": establecimiento_tuple[1],
            "Horario": establecimiento_tuple[2],
            "Tipo": establecimiento_tuple[3],
            "Ubicacion": establecimiento_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            "Estatus": establecimiento_tuple[5],
            "Fecha_Registro": establecimiento_tuple[6],
            "Valoracion_Global": establecimiento_tuple[7],
            "Atractivo_ID": establecimiento_tuple[8]
        }
        establecimiento_list_dicts.append(establecimiento_dict)
    return establecimiento_list_dicts