from fastapi import APIRouter
from config.db import conn
from models.pueblosMagicos import db_turismo_de_aventura
from schemas.pueblosMagicos import PuebloMagico
from datetime import datetime

routerPmagico = APIRouter()

# Obtener Todas las personas
@routerPmagico.get('/pmagico')
def obtenerPuebloMagico():
    pmagico_list_tuples = conn.execute(db_turismo_de_aventura.select()).fetchall()
    pmagico_list_dicts = []
    for pmagico_tuple in pmagico_list_tuples:
        pmagico_dict = {
            "ID":pmagico_tuple[0],
            "Nombre": pmagico_tuple[1],
            "Descripcion": pmagico_tuple[2],
            "Año_Nombremiento": pmagico_tuple[3],
            "Ubicacion": pmagico_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            "Valoracion_Global": pmagico_tuple[5]
            
        }
        pmagico_list_dicts.append(pmagico_dict)
    return pmagico_list_dicts