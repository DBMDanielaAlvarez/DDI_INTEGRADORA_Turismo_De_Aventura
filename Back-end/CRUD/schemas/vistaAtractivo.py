from datetime import datetime
from sqlalchemy import Table, Column, Integer, DateTime, ForeignKey
from sqlalchemy.schema import MetaData
from sqlalchemy.ext.declarative import declarative_base

# Definimos la clase de Pydantic para la vista de atractivo turístico
class VistaAtractivo(BaseModel):
    ID_Usuario: int
    ID_Atractivo: int
    Fecha_Visita: datetime

# Definimos la tabla ttb_vista_atractivo
class ttb_vista_atractivo(Base):
    __tablename__ = 'ttb_vista_atractivo'
    
    ID = Column(Integer, primary_key=True, autoincrement=True)
    ID_Usuario = Column(Integer, ForeignKey('ttb_usuarios.Persona_ID'))
    ID_Atractivo = Column(Integer, ForeignKey('ttb_atractivo_turistico.ID'))
    Fecha_Visita = Column(DateTime)

# Creamos las tablas
Base.metadata.create_all(engine)

