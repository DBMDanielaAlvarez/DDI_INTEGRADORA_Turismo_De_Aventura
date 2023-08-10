from fastapi import APIRouter
from config.db import conn
from models.visitaPueblo import db_turismo_de_aventura
from schemas.visitaPueblo import VisitaPueblo
from datetime import datetime

routerVpueblo = APIRouter()

@routerVpueblo.post('/vpueblo/insert')
def insertvisitaPueblo(vpueblo: VisitaPueblo):
   
    conn.execute(db_turismo_de_aventura.insert().values(
       
        Fecha_Visita=datetime.now()
    ))
    #conn.commit()
    res = {
        "status": "La visita ha sido insertada con éxito"
    }
    return res