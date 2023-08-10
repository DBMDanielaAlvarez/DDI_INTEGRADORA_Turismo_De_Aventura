from fastapi import APIRouter
from config.db import conn
from models.roles import db_turismo_de_aventura
from schemas.roles import Roles
from datetime import datetime

routerRoles = APIRouter()

# Obtener Todas las personas
@routerRoles.get('/roles')
def obtenerRoles():
    roles_list_tuples = conn.execute(db_turismo_de_aventura.select()).fetchall()
    roles_list_dicts = []
    for roles_tuple in roles_list_tuples:
        roles_dict = {
            "ID":roles_tuple[0],
            "Nombre": roles_tuple[1],
            "Descripcion": roles_tuple[2],
            "Estatus": roles_tuple[3],
            "Fecha_Registro": roles_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            
        }
        roles_list_dicts.append(roles_dict)
    return roles_list_dicts