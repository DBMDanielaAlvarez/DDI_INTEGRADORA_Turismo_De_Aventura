from enum import Enum
from pydantic import BaseModel
from datetime import date, datetime
from sqlalchemy import Table, Column, Integer, String, DateTime, Float, SmallInteger, Enum as SQLAlchemyEnum, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.schema import MetaData
from sqlalchemy.ext.declarative import declarative_base

# Definimos la clase de Pydantic para el tipo de ambiente
class TipoAmbienteEnum(str, Enum):
    FAMILIAR = 'Familiar'
    ADULTOS = 'Adultos'
    NIÑOS = 'Niños'
    ADOLECENTES = 'Adolecentes'

# Definimos la clase de Pydantic para el tipo de atractivo turístico
class TipoAtractivoEnum(str, Enum):
    GASTRONOMICO = 'Gatronomico'
    FESTIVIDAD = 'Festividad'

# Definimos la clase de Pydantic para el atractivo turístico
class AtractivoTuristico(BaseModel):
    Nombre: str
    Descripcion: str
    Ubicacion: int
    Tipo: TipoAtractivoEnum
    Tipo_Ambiente: TipoAmbienteEnum
    Pueblo_Magico: int

# Definimos la tabla ttb_atractivo_turistico
'''class ttb_atractivo_turistico(Base):
    __tablename__ = 'ttb_atractivo_turistico'
    
    ID = Column(Integer, primary_key=True, autoincrement=True)
    Nombre = Column(String(50))
    Descripcion = Column(String(255))
    Ubicacion = Column(Integer, ForeignKey('ttb_ubicaciones.ID'))
    Tipo = Column(SQLAlchemyEnum(TipoAtractivoEnum))
    Fecha_Registro = Column(DateTime)
    Fecha_Actualizacion = Column(DateTime)
    Estatus = Column(SmallInteger)
    Tipo_Ambiente = Column(SQLAlchemyEnum(TipoAmbienteEnum))
    Pueblo_Magico = Column(Integer, ForeignKey('ttb_pueblos_magicos.ID'))
    Valoracion_Global = Column(Float)

# Creamos las tablas
Base.metadata.create_all(engine)'''

