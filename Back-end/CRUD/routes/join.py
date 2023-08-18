'''from fastapi import APIRouter
from config.db import conn
from flask import Flask, jsonify
from sqlalchemy import create_engine, select
from sqlalchemy.orm import sessionmaker
from models.join import VistaListaUsuario  # Ajusta la importación según tu ubicación

app = Flask(__name__)
appvista = APIRouter()


@appvista.get('/vista')
def obtener_vista_lista_usuario():
    # Crea una sesión
    session = Session()

    # Crea una consulta para la vista
    consulta = select(VistaListaUsuario)

    # Ejecuta la consulta y obtén los registros
    registros = session.execute(consulta)

    # Convierte los registros en una lista de diccionarios
    lista_registros = [
        {
            "Nombre": registro.Nombre,
            "Apellidos": registro.Apellidos,
            "Nombre_Usuario": registro.Nombre_Usuario,
            "Correo": registro.Correo
        }
        for registro in registros
    ]

    # Cierra la sesión
    session.close()

    # Devuelve los registros como una respuesta JSON
    return jsonify(lista_registros)

if __name__ == '__main__':
    app.run(debug=True)'''
