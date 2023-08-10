from fastapi import APIRouter
from config.db import conn
from models.horarios import db_turismo_de_aventura
from datetime import datetime

routerHorarios = APIRouter()

# Obtener Todas las personas
@routerHorarios.get('/horarios')
def obtenerHorarios():
    horarios_list_tuples = conn.execute(db_turismo_de_aventura.select()).fetchall()
    horarios_list_dicts = []
    for horarios_tuple in horarios_list_tuples:
        horarios_dict = {
            "ID":horarios_tuple[0],
            "Dia": horarios_tuple[1],
            "Hora_apertura": horarios_tuple[2],
            "Hora_Cierre": horarios_tuple[3],
            "ID_Establecimiento": horarios_tuple[4],  # Obtener el valor del miembro Enum correspondiente
        }
        horarios_list_dicts.append(horarios_dict)
    return horarios_list_dicts