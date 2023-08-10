from pydantic import BaseModel
from enum import Enum
from datetime import date, datetime
from sqlalchemy import Table, Column, Integer, String, DateTime, Float, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.schema import MetaData
from sqlalchemy.ext.declarative import declarative_base

# Definimos la clase de Pydantic para el pueblo mágico
class PuebloMagico(BaseModel):
    Nombre: str
    Descripcion: str
    Año_Nombremiento: date
    Ubicacion: int
    Valoracion_Global: float

'''
class ttb_pueblos_magicos(Base):
    __tablename__ = 'ttb_pueblos_magicos'
    
    ID = Column(Integer, primary_key=True, autoincrement=True)
    Nombre = Column(String(50))
    Descripcion = Column(String(255))
    Año_Nombremiento = Column(DateTime)
    Ubicacion = Column(Integer, ForeignKey('ttb_ubicaciones.ID'))
    Valoracion_Global = Column(Float)

# Creamos las tablas
Base.metadata.create_all(engine)'''
