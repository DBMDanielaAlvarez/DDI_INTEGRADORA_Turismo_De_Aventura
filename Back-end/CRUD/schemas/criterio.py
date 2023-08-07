from pydantic import BaseModel
from enum import Enum
from datetime import date, datetime
from typing import List

class Criterio(BaseModel):
    ID:int 
    Descripcion:str
    Nombre:str
    
    