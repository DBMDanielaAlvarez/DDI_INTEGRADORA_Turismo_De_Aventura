from enum import Enum
from sqlalchemy import Table, Text, Column, Integer, String, DateTime, SmallInteger, Enum, Text
from config.db import meta, engine

db_turismo_de_aventura = Table(
    "ttb_roles", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Nombre", String(100)),
    Column("Descripcion", Text),#es text revisar como ponerlo
    Column("Estatus", SmallInteger),
    Column("Fecha_Registro", DateTime),
    Column("Fecha_Actulizacion", DateTime)
    

)
