from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum, relationship, Text, Float, ForeignKey, Base
from config.db import meta, engine

db_turismo_de_aventura = Table(
    "ttb_valoracion", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Numero", Float),
    Column("Estatus", SmallInteger, default='1'),
    Column("Fecha_Registro", DateTime),
    Column("Fecha_Actualizacion", DateTime),
    Column("ID_Usuario", Integer, ForeignKey('ttb_usuarios.Persona_ID')),
    Column("ID_Criterio", Integer, ForeignKey('ttb_criterio.ID'))
)