from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum
from config.db import meta, engine


db_turismo_de_aventura = Table(
    "ttb_personas", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Nombre", String(100)),
    Column("Primer_Apellido", String(100)),
    Column("Segundo_Apellido", String(100)),
    Column("Genero", Enum('M','F','Prefiero no decirlo')),
    Column("Fecha_Nacimiento", DateTime),
    Column("Estatus", SmallInteger),
    Column("Fecha_Registro", DateTime)
)