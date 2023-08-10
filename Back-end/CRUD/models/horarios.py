from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, Enum, ForeignKey
from config.db import meta, engine

db_turismo_de_aventura = Table(
    "tbc_horarios", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Dia", String(20)),
    Column("Hora_apertura", DateTime),
    Column("Hora_Cierre", DateTime),
    Column("ID_Establecimiento", Integer, ForeignKey('tbc_establecimientos.ID'))
)