from sqlalchemy import Table, Column, Integer, Float, DateTime, SmallInteger, ForeignKey, Enum, CheckConstraint, ForeignKeyConstraint
from sqlalchemy.orm import relationship
from config.db import meta

# Definimos la tabla tbb_valoracion
db_turismo_de_aventura = Table(
    "tbb_valoracion", meta,
    Column("ID", Integer, primary_key=True, autoincrement=True),
    Column("Numero", Float),
    Column("Estatus", SmallInteger, default=1),
    Column("Fecha_Registro", DateTime),
    Column("ID_Usuario", Integer, ForeignKey('tbb_usuarios.Persona_ID')),
    Column("ID_Item_Evaluado", Integer),
    Column("Tipo", Enum('Atractivo', 'Establecimiento', 'Pueblo')),
    Column("ID_Criterio", Integer, ForeignKey('tbc_criterio.ID'))
)
'''
# Relaciones
db_turismo_de_aventura.append_column(
    Column("ID_Usuario", Integer, ForeignKey('tbb_usuarios.Persona_ID'))
)

db_turismo_de_aventura.append_constraint(
    ForeignKeyConstraint(
        columns=["ID_Usuario"], 
        refcolumns=["tbb_usuarios.Persona_ID"]
    )
)

db_turismo_de_aventura.append_column(
    Column("ID_Item_Evaluado", Integer)
)

db_turismo_de_aventura.append_constraint(
    CheckConstraint(
        "(ID_Item_Evaluado IS NULL AND Tipo IS NULL) OR (ID_Item_Evaluado IS NOT NULL AND Tipo IS NOT NULL)"
    )
)

db_turismo_de_aventura.append_constraint(
    CheckConstraint(
        "(ID_Item_Evaluado IS NULL AND ID_Criterio IS NOT NULL) OR (ID_Item_Evaluado IS NOT NULL AND ID_Criterio IS NULL)"
    )
)


'''