from fastapi import APIRouter
from config.db import conn
from models.criterio import db_turismo_de_aventura
from schemas.criterio import Criterio
from datetime import datetime

routerCriterio = APIRouter()

# Obtener Todas las personas
@routerCriterio.get('/criterio')
def obtenerCriterio():
    criterio_list_tuples = conn.execute(db_turismo_de_aventura.select()).fetchall()
    criterio_list_dicts = []
    for pcriterio_tuple in criterio_list_tuples:
        criterio_dict = {
            "ID":pcriterio_tuple[0],
            "Nombre": pcriterio_tuple[1],
            "Descripcion": pcriterio_tuple[2],
            "Estatus": pcriterio_tuple[3],
            "Fecha_Registro": pcriterio_tuple[4],  # Obtener el valor del miembro Enum correspondiente
        }
        criterio_list_dicts.append(criterio_dict)
    return criterio_list_dicts