from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum, relationship, Text, Float, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base
from config.db import meta, engine

db_turismo_de_aventura = Table(
    "tbr_vista_establecimiento", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("ID_Usuario", Integer, ForeignKey('tbb_usuarios.Persona_ID')),
    Column("ID_Establecimiento", Integer, ForeignKey('tbc_establecimientos.ID')),
    Column("Fecha_Visita", DateTime)
)