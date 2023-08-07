from fastapi import APIRouter
from config.db import conn
from models.valoracion import db_turismo_de_aventura
from schemas.valoracion import Valoracion, TipoItemEnum
from datetime import datetime

router = APIRouter()

@router.get('/valoracion')
def obtenerValoracion():
    valoracion_list_tuples = conn.execute(db_turismo_de_aventura.select()).fetchall()
    valoracion_list_dicts = []
    for valoracion_tuple in valoracion_list_tuples:
        valoracion_dict = {
            "ID":valoracion_tuple[0],
            "Numero": valoracion_tuple[1],
            "Estatus": valoracion_tuple[2],
            "Fecha_Registro": valoracion_tuple[3],
            "ID_Usuario": valoracion_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            "ID_Item_Evaluado": valoracion_tuple[5],
            "Tipo": valoracion_tuple[6],
            "ID_Criterio": valoracion_tuple[7]
        }
        valoracion_list_dicts.append(valoracion_dict)
    return valoracion_list_dicts


@router.post('/valoracion/insert')
def insertValoracion(valoracion: Valoracion):
    tipo_item_enum = TipoItemEnum(valoracion.Tipo)
    conn.execute(db_turismo_de_aventura.insert().values(
        Numero=valoracion.Numero,
        Tipo=tipo_item_enum,
        Fecha_Registro=datetime.now()
    ))
    #conn.commit()
    res = {
        "status": "La valoracion ha sido insertada con éxito"
    }
    return res

@router.get('/valoracion/{ID}')
def obtenerValoracionPorId(ID):
    valoracion_tuple = conn.execute(db_turismo_de_aventura.select().where(db_turismo_de_aventura.c.ID == ID)).first()
    if valoracion_tuple is not None:
        valoracion_dict = {
            "ID":valoracion_tuple[0],
            "Numero": valoracion_tuple[1],
            "Estatus": valoracion_tuple[2],
            "Fecha_Registro": valoracion_tuple[3],
            "ID_Usuario": valoracion_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            "ID_Item_Evaluado": valoracion_tuple[5],
            "Tipo": valoracion_tuple[6],
            "ID_Criterio": valoracion_tuple[7]
        }
        return valoracion_dict
    else:
        res = {
            "status": "No existe la valoracion ingresada"
        }
        return res
    
@router.put('/valoracion/update/{ID}')
def actualizarValoracionPorId(valoracion: Valoracion, ID):
    res = obtenerValoracionPorId(ID)
    if res.get("status") == "No existe la valoracion ingresada":
        resp = {
            "status": "No existe la valoracion ingresada"
        }
    else:
        result = conn.execute(db_turismo_de_aventura.update().values(
            Numero=valoracion.Numero,
            Tipo=valoracion.Tipo
        ).where(db_turismo_de_aventura.c.ID == ID))
        #conn.commit()
        resp = {
            "status": "valoracion actualizada con éxito"
        }
    return resp

@router.delete('/valoracionST/delete/{ID}')
def eliminarValoracionPorId(ID):
    res = obtenerValoracionPorId(ID)
    if res.get("status") == "No existe la valoracion ingresada":
        return res
    else:
        result = conn.execute(db_turismo_de_aventura.update().values(Estatus=False).where(db_turismo_de_aventura.c.ID == ID))
        #conn.commit()
        res = {
            "status": f"Valoracion con ID {ID} eliminada con éxito"
        }
    return res