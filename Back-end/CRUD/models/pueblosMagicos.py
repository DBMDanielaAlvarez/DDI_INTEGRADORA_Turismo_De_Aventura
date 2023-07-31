from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum, relationship, Text, Float, ForeignKey
from config.db import meta, engine

db_turismo_de_aventura = Table(
    "ttb_pueblos_magicos", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Nombre", String(50)),
    Column("Descripcion", Text),
    Column("Año_Nombremiento", DateTime),
    Column("Ubicacion", Integer, ForeignKey('ttb_ubicaciones.ID')),
    Column("Valoracion_Global", Float)
)