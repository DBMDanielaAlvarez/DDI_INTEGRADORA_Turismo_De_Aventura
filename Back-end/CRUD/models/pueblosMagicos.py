from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, Enum, Text, Float, ForeignKey
from config.db import meta, engine

db_turismo_de_aventura = Table(
    "tbc_pueblos_magicos", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Nombre", String(50)),
    Column("Descripcion", Text),
    Column("Año_Nombremiento", DateTime),
    Column("Ubicacion", Integer, ForeignKey('tbc_ubicaciones.ID')),
    Column("Valoracion_Global", Float)
)