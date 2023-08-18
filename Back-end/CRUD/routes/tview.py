from fastapi import APIRouter
from config.db import conn
from sqlalchemy import text
viewsServer = APIRouter()

@viewsServer.get('/view/visitas')
def ViewVis():
    consulta = "SELECT * FROM db_turismo_de_aventura.vw_view;"
    exe = conn.execute(text(consulta))
    items = []
    for it in exe:
        dicci = {
            'ID': it[0],
            'Nombre': it[1],
            'Numero_visitas': it[2]
        }
        items.append(dicci)
    return items