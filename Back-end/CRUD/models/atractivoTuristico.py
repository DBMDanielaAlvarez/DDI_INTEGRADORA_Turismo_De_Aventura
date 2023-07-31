from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum, relationship, Text, Float, ForeignKey
from config.db import meta, engine

db_turismo_de_aventura = Table(
    "ttb_atractivo_turistico", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Nombre", String(50)),
    Column("Descripcion", Text),
    Column("Ubicacion", Integer, ForeignKey('ttb_ubicaciones.ID')),
    Column("Tipo", Enum('Gatronomico', 'Festividad')),
    Column("Fecha_Registro", DateTime, default=datetime.utcnow),
    Column("Fecha_Actualizacion", DateTime),
    Column("Estatus", SmallInteger),
    Column("Tipo_Ambiente", Enum('familiar')),
    Column("Pueblo_Magico", Integer, ForeignKey('ttb_pueblos_magicos.ID')),
    Column("Valoracion_Global", Float)
)
