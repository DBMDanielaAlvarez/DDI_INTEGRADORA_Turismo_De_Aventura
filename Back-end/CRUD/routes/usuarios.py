from fastapi import APIRouter
from config.db import conn
from models.usuarios import db_turismo_de_aventura
from schemas.usuarios import Usuario
from datetime import datetime


router = APIRouter()

@router.get('/usuario')
def obtenerUsuarios():
    usuarios_list_tuples = conn.execute(db_turismo_de_aventura.select()).fetchall()
    usuarios_list_dicts = []
    for usuarios_tuple in usuarios_list_tuples:
        usuarios_dict = {
            "Persona_ID":usuarios_tuple[0],
            "Nombre_Usuario": usuarios_tuple[1],
            "Correo": usuarios_tuple[2],
            "Contraseña": usuarios_tuple[3],
            "Estatus": usuarios_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            "Fecha_Registro": usuarios_tuple[5],
            "Rol": usuarios_tuple[6]
        }
        usuarios_list_dicts.append(usuarios_dict)
    return usuarios_list_dicts

@router.post('/usuario/insert')
def insertUsuario(usuario: Usuario):
    conn.execute(db_turismo_de_aventura.insert().values(
        Nombre_Usuario=usuario.Nombre_Usuario,
        Correo=usuario.Correo,
        Contraseña=usuario.Contraseña,
        Fecha_Registro=datetime.now(),
    ))
    #conn.commit()
    res = {
        "status": "Usuario ha sido insertado con éxito"
    }
    return res

@router.get('/usuario/{ID}')
def obtenerUsuarioPorId(ID):
    usuarios_tuple = conn.execute(db_turismo_de_aventura.select().where(db_turismo_de_aventura.c.ID == ID)).first()
    if usuarios_tuple is not None:
        usuarios_dict = {
            "Persona_ID":usuarios_tuple[0],
            "Nombre_Usuario": usuarios_tuple[1],
            "Correo": usuarios_tuple[2],
            "Contraseña": usuarios_tuple[3],
            "Estatus": usuarios_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            "Fecha_Registro": usuarios_tuple[5],
            "Rol": usuarios_tuple[6]
        }
        return usuarios_dict
    else:
        res = {
            "status": "No existe el usuario ingresada"
        }
        return res
    
@router.put('/ususrio/update/{ID}')
def actualizarUsuarioPorId(usuario: Usuario, ID):
    res = obtenerUsuarioPorId(ID)
    if res.get("status") == "No existe el usuario ingresado":
        resp = {
            "status": "No existe el usuario ingresado"
        }
    else:
        result = conn.execute(db_turismo_de_aventura.update().values(
        Nombre_Usuario=usuario.Nombre_Usuario,
        Correo=usuario.Correo,
        Contraseña=usuario.Contraseña,
        ).where(db_turismo_de_aventura.c.ID == ID))
        #conn.commit()
        resp = {
            "status": "Usuario actualizado con éxito"
        }
    return resp

@router.delete('/usuarioST/delete/{ID}')
def eliminarUsuarioPorId(ID):
    res = obtenerUsuarioPorId(ID)
    if res.get("status") == "No existe el usuario ingresado":
        return res
    else:
        result = conn.execute(db_turismo_de_aventura.update().values(Estatus=False).where(db_turismo_de_aventura.c.ID == ID))
        #conn.commit()
        res = {
            "status": f"Usuario con ID {ID} eliminado con éxito"
        }
    return res