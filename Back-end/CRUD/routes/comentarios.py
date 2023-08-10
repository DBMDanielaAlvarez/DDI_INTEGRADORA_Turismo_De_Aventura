from fastapi import APIRouter
from config.db import conn
from models.comentarios import db_turismo_de_aventura
from schemas.comentarios import Comentario, TipoEnum
from datetime import datetime

routerComentarios = APIRouter()

@routerComentarios.get('/comentarios')
def obtenerPersonas():
    comentarios_list_tuples = conn.execute(db_turismo_de_aventura.select()).fetchall()
    comentarios_list_dicts = []
    for comentarios_tuple in comentarios_list_tuples:
        comentarios_dict = {
            "ID":comentarios_tuple[0],
            "Descripcion": comentarios_tuple[1],
            "Fecha_Registro": comentarios_tuple[2],
            "Tipo": comentarios_tuple[3],
            "Publicado": comentarios_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            "ID_Usuario": comentarios_tuple[5]
        }
        comentarios_list_dicts.append(comentarios_dict)
    return comentarios_list_dicts
'''
@routerComentarios.post('/comentarios/insert')
def insertComentarios(comentarios: Comentario):
    conn.execute(db_turismo_de_aventura.insert().values(
        Descripcion=comentarios.Descripcion,
        Fecha_Registro=datetime.now()
    ))
    #conn.commit()
    res = {
        "status": "El comentario ha sido insertada con éxito"
    }
    return res'''