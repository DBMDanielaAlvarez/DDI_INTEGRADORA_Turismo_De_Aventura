from pydantic import BaseModel
from enum import Enum
from datetime import date, datetime
from typing import List

class Roles(BaseModel):
    ID:int 
    Nombre:str
    Descripcion:str
    Estatus:int
    