from sqlalchemy import create_engine, Table, Column, Integer, String, MetaData
from sqlalchemy.orm import sessionmaker
from sqlalchemy.sql import select
from config.db import meta

# Conexión a la base de datos
engine = create_engine("mysql+pymysql://root:1234@localhost:3307/db_turismo_de_aventura")
metadata = MetaData()
conn = engine.connect()

# Definir las tablas
tbb_usuarios = Table('tbb_usuarios', metadata, autoload=True, autoload_with=engine)
tbb_personas = Table('tbb_personas', metadata, autoload=True, autoload_with=engine)

# Crear una sesión de SQLAlchemy
Session = sessionmaker(bind=engine)
session = Session()

# Realizar un INNER JOIN entre las tablas
query = select([tbb_usuarios, tbb_personas]).where(tbb_usuarios.c.Persona_ID == tbb_personas.c.ID)
result = conn.execute(query).fetchall()

# Imprimir los resultados
for row in result:
    print(row)

