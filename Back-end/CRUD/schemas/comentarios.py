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



