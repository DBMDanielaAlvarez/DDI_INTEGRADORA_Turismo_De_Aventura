from enum import Enum
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum
from config.db import meta, engine

db_turismo_de_aventura = Table(
    "tbc_criterio", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Nombre", String(50)),
    Column("Descripcion", String(100)),#es text revisar como ponerlo
    Column("Estatus", SmallInteger),
    Column("Fecha_Registro", DateTime),
    Column("Fecha_Actulizacion", DateTime)
    

)

