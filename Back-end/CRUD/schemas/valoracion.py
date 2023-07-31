from datetime import datetime
from sqlalchemy import Table, Column, Integer, Float, DateTime, ForeignKey
from sqlalchemy.schema import MetaData
from sqlalchemy.ext.declarative import declarative_base

# Definimos la clase de Pydantic para la valoración
class Valoracion(BaseModel):
    Valor: float
    Comentario: str
    Fecha: datetime
    Usuario: int

# Definimos la tabla ttb_valoracion
class ttb_valoracion(Base):
    __tablename__ = 'ttb_valoracion'
    
    ID = Column(Integer, primary_key=True, autoincrement=True)
    Valor = Column(Float)
    Comentario = Column(String(255))
    Fecha = Column(DateTime)
    Usuario = Column(Integer, ForeignKey('ttb_usuarios.Persona_ID'))

# Creamos las tablas
Base.metadata.create_all(engine)
