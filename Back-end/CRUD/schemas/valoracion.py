from pydantic import BaseModel
from enum import Enum
from datetime import datetime

class TipoItemEnum(str, Enum):
    ATRACTIVO = 'Atractivo'
    ESTABLECIMIENTO = 'Establecimiento'
    PUEBLO = 'Pueblo'

class Valoracion(BaseModel):
    Numero: float
    Tipo: TipoItemEnum
