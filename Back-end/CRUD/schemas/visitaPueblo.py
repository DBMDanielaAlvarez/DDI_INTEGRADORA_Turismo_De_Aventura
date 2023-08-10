from pydantic import BaseModel
from datetime import datetime
from sqlalchemy import Table, Column, Integer, DateTime, ForeignKey
from sqlalchemy.schema import MetaData
from sqlalchemy.ext.declarative import declarative_base

# Definimos la clase de Pydantic para la vista de pueblo
class VisitaPueblo(BaseModel):
    
    Fecha_Visita: datetime

# Definimos la tabla ttb_vista_pueblo
'''class ttb_vista_pueblo(Base):
    __tablename__ = 'ttb_vista_pueblo'
    
    ID = Column(Integer, primary_key=True, autoincrement=True)
    ID_Usuario = Column(Integer, ForeignKey('ttb_usuarios.Persona_ID'))
    ID_Pueblo = Column(Integer, ForeignKey('ttb_pueblos_magicos.ID'))
    Fecha_Visita = Column(DateTime)

# Creamos las tablas
Base.metadata.create_all(engine)'''
