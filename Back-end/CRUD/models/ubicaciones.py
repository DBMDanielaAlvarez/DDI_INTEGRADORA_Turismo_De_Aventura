from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum, relationship, Text, Float, ForeignKey
from config.db import meta, engine


db_turismo_de_aventura = Table(
    "tbc_ubicaciones", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Nombre", String(150)),
    Column("Tipo", String(50)),
    Column("Estatus", SmallInteger),
    Column("Fecha_Registro", DateTime),
    Column("Fecha_Actualizacion", DateTime),
    Column("Ubicacion_Padre_ID", Integer, ForeignKey('tbc_ubicaciones.ID'))
)
