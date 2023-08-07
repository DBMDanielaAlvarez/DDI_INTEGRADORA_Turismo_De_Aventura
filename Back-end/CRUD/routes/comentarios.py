from fastapi import APIRouter
from config.db import conn
from models.comentarios import db_turismo_de_aventura
from schemas.comentarios import Comentario
from datetime import datetime

router = APIRouter()

@router.get('/comentarios')
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

@router.post('/comentarios/insert')
def insertComentarios(comentarios: Comentario):
    conn.execute(db_turismo_de_aventura.insert().values(
        Descripcion=persona.Nombre,
        Primer_Apellido=persona.Primer_Apellido,
        Segundo_Apellido=persona.Segundo_Apellido,
        Genero=genero_enum,  # Utilizar el miembro Enum correspondiente
        Fecha_Nacimiento=persona.Fecha_Nacimiento,
        Fecha_Registro=datetime.now()
    ))
    #conn.commit()
    res = {
        "status": "La persona ha sido insertada con éxito"
    }
    return res