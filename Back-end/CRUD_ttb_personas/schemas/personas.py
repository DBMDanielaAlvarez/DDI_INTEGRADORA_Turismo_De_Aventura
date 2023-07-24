from pydantic import BaseModel
from enum import Enum
from datetime import date, datetime
from typing import List

class GeneroEnum(str, Enum):
    MASCULINO = 'M'
    FEMENINO = 'F'
    OTRO = 'Prefiero no decirlo'

class Persona(BaseModel):
    Nombre: str
    Primer_Apellido: str
    Segundo_Apellido: str
    Genero: GeneroEnum
    Fecha_Nacimiento: date
    Estatus: int
    Fecha_Registro: datetime

class Config:
        use_enum_values = True