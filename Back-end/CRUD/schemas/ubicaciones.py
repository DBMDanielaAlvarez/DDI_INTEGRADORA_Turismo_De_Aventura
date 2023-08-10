from pydantic import BaseModel
from sqlalchemy import Table, Column, Integer, String, Float
from sqlalchemy.schema import MetaData
from sqlalchemy.ext.declarative import declarative_base

# Definimos la clase de Pydantic para la ubicación
class Ubicacion(BaseModel):
    Nombre: str
    Latitud: float
    Longitud: float

# Definimos la tabla ttb_ubicaciones
'''class ttb_ubicaciones(Base):
    __tablename__ = 'ttb_ubicaciones'
    
    ID = Column(Integer, primary_key=True, autoincrement=True)
    Nombre = Column(String(100))
    Latitud = Column(Float)
    Longitud = Column(Float)

# Creamos las tablas
Base.metadata.create_all(engine)'''

