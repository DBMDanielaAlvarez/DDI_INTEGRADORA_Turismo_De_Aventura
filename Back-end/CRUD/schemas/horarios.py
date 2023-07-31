from datetime import datetime
from sqlalchemy import Table, Column, Integer, String, DateTime, Time, ForeignKey
from sqlalchemy.schema import MetaData
from sqlalchemy.ext.declarative import declarative_base

# Definimos la clase de Pydantic para los horarios
class Horario(BaseModel):
    Dia: str
    Hora_apertura: Time
    Hora_Cierre: Time
    ID_Establecimiento: int

# Definimos la tabla ttc_horarios
class ttc_horarios(Base):
    __tablename__ = 'ttc_horarios'
    
    ID = Column(Integer, primary_key=True, autoincrement=True)
    Dia = Column(String(20))
    Hora_apertura = Column(Time)
    Hora_Cierre = Column(Time)
    ID_Establecimiento = Column(Integer, ForeignKey('ttb_establecimientos.ID'))

# Creamos las tablas
Base.metadata.create_all(engine)
