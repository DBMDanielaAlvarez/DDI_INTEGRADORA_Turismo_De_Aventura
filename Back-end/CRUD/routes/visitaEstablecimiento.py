from fastapi import APIRouter
from config.db import conn
from models.visitaEstablecimiento import db_turismo_de_aventura
from schemas.visitaEstablecimiento import Establecimiento
from datetime import datetime

routerVestablecimiento = APIRouter()

@routerVestablecimiento.post('/vestablecimiento/insert')
def insertvisitaEstablecimiento(vestablecimiento: Establecimiento):
   
    conn.execute(db_turismo_de_aventura.insert().values(
       
        Fecha_Visita=datetime.now()
    ))
    #conn.commit()
    res = {
        "status": "La visita ha sido insertada con éxito"
    }
    return res