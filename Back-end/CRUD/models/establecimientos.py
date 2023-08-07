from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum, relationship, Text, Float, ForeignKey
from config.db import meta, engine

db_turismo_de_aventura = Table(
    "tbc_establecimientos", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Nombre", String(100)),
    Column("Horario", Integer, ForeignKey('tbc_horarios.ID')),
    Column("Tipo", Enum('')),
    Column("Ubicacion", Integer, ForeignKey('tbc_ubicaciones.ID')),
    Column("Estatus", SmallInteger),
    Column("Fecha_Registro", DateTime, default=DateTime),
    Column("Fecha_Actualizacion", DateTime),
    Column("Valoracion_Global", Float),
    Column("Atractivo_ID", Integer, ForeignKey('tbb_atractivo_turistico.ID'))
)