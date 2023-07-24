from pydantic import BaseModel
from enum import Enum
from datetime import date, datetime
from typing import List

class GeneroEnum(str, Enum):
    OTRO = 'N/A'
    MASCULINO = 'M'
    FEMENINO = 'F'
    

class Persona(BaseModel):
    Nombre: str
    Primer_Apellido: str
    Segundo_Apellido: str
    Genero: GeneroEnum
    Fecha_Nacimiento: date

class Config:
        use_enum_values = True