from datetime import datetime
from sqlalchemy import Table, Column, Integer, String, DateTime, SmallInteger, Enum, ForeignKey
from sqlalchemy.schema import MetaData
from sqlalchemy.ext.declarative import declarative_base

# Definimos la clase de Pydantic para el comentario
class Comentario(BaseModel):
    Descripcion: str
    Fecha_Registro: datetime
    Fecha_Actualizacion: datetime
    Tipo: str
    Publicado: int
    ID_Usuario: int

# Definimos la tabla ttb_comentarios
class ttb_comentarios(Base):
    __tablename__ = 'ttb_comentarios'
    
    ID = Column(Integer, primary_key=True, autoincrement=True)
    Descripcion = Column(String(255))
    Fecha_Registro = Column(DateTime, default=datetime.utcnow)
    Fecha_Actualizacion = Column(DateTime)
    Tipo = Column(Enum('Positivo'))
    Publicado = Column(SmallInteger)
    ID_Usuario = Column(Integer, ForeignKey('ttb_usuarios.Persona_ID'))

# Creamos las tablas
Base.metadata.create_all(engine)
