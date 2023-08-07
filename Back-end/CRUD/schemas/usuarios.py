from enum import Enum
from datetime import date, datetime
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum as SQLAlchemyEnum, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.schema import MetaData
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import create_engine



# Definimos la clase de Pydantic para el usuario
class Usuario(BaseModel):
    Nombre_Usuario: str
    Correo: str
    Contraseña: str
    Fecha_Registro: datetime

# Definimos la tabla ttb_usuarios
'''class ttb_usuarios(Base):
    __tablename__ = 'ttb_usuarios'
    
    Persona_ID = Column(Integer, primary_key=True, autoincrement=True)
    Nombre_Usuario = Column(String(50), unique=True)
    Correo = Column(String(200), unique=True)
    Contraseña = Column(String(30))
    Estatus = Column(SmallInteger)
    Fecha_Registro = Column(DateTime)

# Creamos las tablas
Base.metadata.create_all(engine)

'''