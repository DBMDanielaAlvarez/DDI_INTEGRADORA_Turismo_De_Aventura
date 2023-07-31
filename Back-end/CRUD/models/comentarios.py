from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum, relationship, Text, Float, ForeignKey
from config.db import meta, engine
from datetime import datetime

db_turismo_de_aventura = Table(
    "ttb_comentarios", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Descripcion", Text),
    Column("Fecha_Registro", DateTime, default=datetime.utcnow),
    Column("Fecha_Actualizacion", DateTime),
    Column("Tipo", Enum('Positivo')),
    Column("Publicado", SmallInteger),
    Column("ID_Usuario", Integer, ForeignKey('ttb_usuarios.Persona_ID'))
)