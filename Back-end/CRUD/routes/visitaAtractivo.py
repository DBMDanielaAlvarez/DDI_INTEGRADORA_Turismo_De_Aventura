from fastapi import APIRouter
from config.db import conn
from models.visitaAtractivo import db_turismo_de_aventura
from schemas.visitaAtractivo import VisitaAtractivo
from datetime import datetime

routerVatractivo = APIRouter()

@routerVatractivo.post('/vatractivo/insert')
def insertvisitaAtractivo(vatractivo: VisitaAtractivo):
   
    conn.execute(db_turismo_de_aventura.insert().values(
       
        Fecha_Visita=datetime.now()
    ))
    #conn.commit()
    res = {
        "status": "La visita ha sido insertada con éxito"
    }
    return res