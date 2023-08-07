from datetime import datetime
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Float, ForeignKey
from sqlalchemy.schema import MetaData
from sqlalchemy.ext.declarative import declarative_base

# Definimos la clase de Pydantic para el establecimiento
class Establecimiento(BaseModel):
    
    Fecha_Visita: datetime

# Definimos la tabla ttb_establecimientos
'''class ttb_establecimientos(Base):
    __tablename__ = 'ttb_establecimientos'
    
    ID = Column(Integer, primary_key=True, autoincrement=True)
    Nombre = Column(String(100))
    Descripcion = Column(String(255))
    Tipo = Column(String(50))
    Fecha_Registro = Column(DateTime)
    Fecha_Actualizacion = Column(DateTime)
    Estatus = Column(SmallInteger)
    ID_Atractivo_Turistico = Column(Integer, ForeignKey('ttb_atractivo_turistico.ID'))

# Creamos las tablas
Base.metadata.create_all(engine)'''

