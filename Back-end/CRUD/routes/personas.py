from fastapi import APIRouter
from config.db import conn
from models.personas import db_turismo_de_aventura
from schemas.personas import Persona, GeneroEnum
from datetime import datetime

router = APIRouter()

# Obtener Todas las personas
@router.get('/personas')
def obtenerPersonas():
    personas_list_tuples = conn.execute(db_turismo_de_aventura.select()).fetchall()
    personas_list_dicts = []
    for personas_tuple in personas_list_tuples:
        personas_dict = {
            "ID":personas_tuple[0],
            "Nombre": personas_tuple[1],
            "Primer_Apellido": personas_tuple[2],
            "Segundo_Apellido": personas_tuple[3],
            "Genero": personas_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            "Fecha_Nacimiento": personas_tuple[5],
            "Estatus": personas_tuple[6],
            "Fecha_Registro": personas_tuple[7]
        }
        personas_list_dicts.append(personas_dict)
    return personas_list_dicts

# Ruta para crear una nueva persona
@router.post('/personas/insert')
def insertPersonas(persona: Persona):
    genero_enum = GeneroEnum(persona.Genero)  # Convertir la cadena al miembro Enum correspondiente
    conn.execute(db_turismo_de_aventura.insert().values(
        Nombre=persona.Nombre,
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



@router.get('/personas/{ID}')
def obtenerPersonaPorId(ID):
    personas_tuple = conn.execute(db_turismo_de_aventura.select().where(db_turismo_de_aventura.c.ID == ID)).first()
    if personas_tuple is not None:
        personas_dict = {
            "Nombre": personas_tuple[1],
            "Primer_Apellido": personas_tuple[2],
            "Segundo_Apellido": personas_tuple[3],
            "Genero": personas_tuple[4],
            "Fecha_Nacimiento": personas_tuple[5],
            "Estatus": personas_tuple[6],
            "Fecha_Registro": personas_tuple[7]
        }
        return personas_dict
    else:
        res = {
            "status": "No existe la persona ingresada"
        }
        return res
    
@router.put('/personas/update/{ID}')
def actualizarPersonaPorId(persona: Persona, ID):
    res = obtenerPersonaPorId(ID)
    if res.get("status") == "No existe la persona ingresada":
        resp = {
            "status": "No existe la persona ingresada"
        }
    else:
        result = conn.execute(db_turismo_de_aventura.update().values(
            Nombre=persona.Nombre,
            Primer_Apellido=persona.Primer_Apellido,
            Segundo_Apellido=persona.Segundo_Apellido,
            Genero=persona.Genero,
            Fecha_Nacimiento=persona.Fecha_Nacimiento,
        ).where(db_turismo_de_aventura.c.ID == ID))
        #conn.commit()
        resp = {
            "status": "Persona actualizada con éxito"
        }
    return resp


'''
@router.delete('/personas/delete/{ID}')
def eliminarPersonaPorId(ID):
    res = obtenerPersonaPorId(ID)
    if res.get("status") == "No existe la persona ingresada":
        return res
    else:
        result = conn.execute(db_turismo_de_aventura.delete().where(db_turismo_de_aventura.c.ID == ID))
        #conn.commit()
        res = {
            "status": f"Persona con ID {ID} eliminada con éxito"
        }
    return res

'''

@router.delete('/personasST/delete/{ID}')
def eliminarPersonaPorId(ID):
    res = obtenerPersonaPorId(ID)
    if res.get("status") == "No existe la persona ingresada":
        return res
    else:
        result = conn.execute(db_turismo_de_aventura.update().values(Estatus=False).where(db_turismo_de_aventura.c.ID == ID))
        #conn.commit()
        res = {
            "status": f"Persona con ID {ID} eliminada con éxito"
        }
    return res
    
