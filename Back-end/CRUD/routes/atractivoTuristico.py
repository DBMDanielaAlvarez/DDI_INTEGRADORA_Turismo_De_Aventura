from fastapi import APIRouter
from config.db import conn
from models.atractivoTuristico import db_turismo_de_aventura
from schemas.atractivoTuristico import AtractivoTuristico, TipoAmbienteEnum, TipoAtractivoEnum
from datetime import datetime

router = APIRouter()

@router.get('/aturistico')
def obtenerAtractivoTuristico():
    aturistico_list_tuples = conn.execute(db_turismo_de_aventura.select()).fetchall()
    aturistico_list_dicts = []
    for aturistico_tuple in aturistico_list_tuples:
        aturistico_dict = {
           "ID":aturistico_tuple[0],
            "Nombre": aturistico_tuple[1],
            "Descripcion": aturistico_tuple[2],
            "Ubicacion": aturistico_tuple[3],
            "Tipo": aturistico_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            "Fecha_Registro": aturistico_tuple[5],
            "Estatus": aturistico_tuple[6],
            "Tipo_Ambiente": aturistico_tuple[7],
            "Pueblo_Magico": aturistico_tuple[8],
            "Valoracion_Global": aturistico_tuple[9]
        }
        aturistico_list_dicts.append(aturistico_dict)
    return aturistico_list_dicts


@router.post('/aturistico/insert')
def insertAtractivoTuristico(aturistico: AtractivoTuristico):
    tipo_ambiente_enum = TipoAmbienteEnum(aturistico.Tipo_Ambiente)
    tipo_atractivo_enum = TipoAtractivoEnum(aturistico.Tipo) # Convertir la cadena al miembro Enum correspondiente
    conn.execute(db_turismo_de_aventura.insert().values(
        Nombre=aturistico.Nombre,
        Descripcion=aturistico.Descripcion,
        Tipo=tipo_atractivo_enum,
        Fecha_Registro=datetime.now(),
        Ubicacion=aturistico.Ubicacion,
        Tipo_Ambiente=tipo_ambiente_enum,
        Pueblo_Magico=aturistico.Pueblo_Magico   # Utilizar el miembro Enum correspondiente
        
    ))
    #conn.commit()
    res = {
        "status": "El ataractivo turistico ha sido insertado con éxito"
    }
    return res



@router.get('/aturistico/{ID}')
def obtenerAturisticoPorId(ID):
    aturistico_tuple = conn.execute(db_turismo_de_aventura.select().where(db_turismo_de_aventura.c.ID == ID)).first()
    if aturistico_tuple is not None:
        aturistico_dict = {
            "ID":aturistico_tuple[0],
            "Nombre": aturistico_tuple[1],
            "Descripcion": aturistico_tuple[2],
            "Ubicacion": aturistico_tuple[3],
            "Tipo": aturistico_tuple[4],  # Obtener el valor del miembro Enum correspondiente
            "Fecha_Registro": aturistico_tuple[5],
            "Estatus": aturistico_tuple[6],
            "Tipo_Ambiente": aturistico_tuple[7],
            "Pueblo_Magico": aturistico_tuple[8],
            "Valoracion_Global": aturistico_tuple[9]
        }
        return aturistico_dict
    else:
        res = {
            "status": "No existe el atractivo turistico ingresada"
        }
        return res
    
@router.put('/aturistico/update/{ID}')
def actualizarAturisticoPorId(aturistico: AtractivoTuristico, ID):
    res = obtenerAturisticoPorId(ID)
    if res.get("status") == "No existe el atractivo turistico ingresado":
        resp = {
            "status": "No existe el atractivo turistico ingresado"
        }
    else:
        result = conn.execute(db_turismo_de_aventura.update().values(
        Nombre=aturistico.Nombre,
        Descripcion=aturistico.Descripcion,
        Tipo=aturistico.Tipo,
        Ubicacion=aturistico.Ubicacion,
        Tipo_Ambiente=aturistico.Tipo_Ambiente,
        Pueblo_Magico=aturistico.Pueblo_Magico
        ).where(db_turismo_de_aventura.c.ID == ID))
        #conn.commit()
        resp = {
            "status": "Atractivo turistico actualizado con éxito"
        }
    return resp

@router.delete('/aturisticoST/delete/{ID}')
def eliminarAturisticoPorId(ID):
    res = obtenerAturisticoPorId(ID)
    if res.get("status") == "No existe el atractivo turistico ingresado":
        return res
    else:
        result = conn.execute(db_turismo_de_aventura.update().values(Estatus=False).where(db_turismo_de_aventura.c.ID == ID))
        #conn.commit()
        res = {
            "status": f"Atractivo turistico con ID {ID} eliminada con éxito"
        }
    return res