from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum, relationship, Text, Float, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base
from config.db import meta, engine

db_turismo_de_aventura = Table(
    "ttb_usuarios", meta,
    Column("Persona_ID", Integer, primary_key=True, autoincrement=True),
    Column("Nombre_Usuario", String(50)),
    Column("Correo", String(200)),
    Column("Contraseña", String(30)),
    Column("Estatus", SmallInteger),
    Column("Fecha_Registro", DateTime),
    Column("Fecha_Actualizacion", DateTime),
    Column("Rol", Integer, ForeignKey('ttb_roles.ID'))
)