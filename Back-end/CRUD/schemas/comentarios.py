from datetime import datetime
from enum import Enum as PyEnum  # Renombramos la clase para evitar conflictos
from pydantic import BaseModel
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, ForeignKey
from sqlalchemy.schema import MetaData
from sqlalchemy.ext.declarative import declarative_base

class TipoEnum(str, PyEnum):  # Usamos la versión renombrada de Enum
    POSITIVO = 'Positivo'

# Definimos la clase de Pydantic para el comentario
class Comentario(BaseModel):
    Descripcion: str



'''
from sqlalchemy import Column, Integer, Text, DateTime, Enum, ForeignKey, Boolean
from sqlalchemy.orm import declarative_base, relationship
from datetime import datetime
from enum import Enum as PyEnum
from pydantic import BaseModel

Base = declarative_base()

class TipoEnum(PyEnum):
    POSITIVO = 'Positivo'

class ComentarioPydantic(BaseModel):
    Descripcion: str
    Tipo: TipoEnum
    ID_Usuario: int

class ComentarioCreate(ComentarioPydantic):
    pass

'''