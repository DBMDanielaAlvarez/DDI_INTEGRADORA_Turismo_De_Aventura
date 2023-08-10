from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum, Text, Float, ForeignKey
from config.db import meta, engine

db_turismo_de_aventura = Table(
    "tbb_atractivo_turistico", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Nombre", String(50)),
    Column("Descripcion", Text),
    Column("Ubicacion", Integer, ForeignKey('ttb_ubicaciones.ID')),
    Column("Tipo", Enum('Gastronomia', 'Cultural','Naturaleza')),
    Column("Fecha_Registro", DateTime),
    Column("Estatus", SmallInteger, default='1'),
    Column("Tipo_Ambiente", Enum('Familiar','Adultos','Niños','Adolecentes')),
    Column("Pueblo_Magico", Integer, ForeignKey('tbc_pueblos_magicos.ID')),
    Column("Valoracion_Global", Float)
)
