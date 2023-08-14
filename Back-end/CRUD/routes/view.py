from fastapi import APIRouter,HTTPException
from config.db import conn
import pymysql

# Crear una instancia de APIRouter
router_SP_usuarios = APIRouter()


@router_SP_usuarios.post("/execute-sp-fill")
def execute_sp_fill():
    try:
        connection = pymysql.connect(
            host="localhost",
            user="root",
            password="1234",
            database="db_turismo_de_aventura",
            port=3307
        )

        with connection.cursor() as cursor:
            cursor.callproc("sp_inserta_usuarios")

        connection.commit()
        connection.close()

        return {"message": "Procedimiento almacenado Crear Ususarios ejecutado exitosamente."}

    except pymysql.Error as e:
        return {"error": str(e)}


