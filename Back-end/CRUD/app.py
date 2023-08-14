from fastapi import FastAPI
from routes.view import router_SP_usuarios
from routes.personas import routerPersonas
from routes.atractivoTuristico import routerAturistico
from routes.comentarios import routerComentarios
from routes.usuarios import routerUsuarios
from routes.valoracion import routerValoracion
from routes.visitaAtractivo import routerVatractivo
from routes.visitaEstablecimiento import routerVestablecimiento
from routes.visitaPueblo import routerVpueblo
from routes.ubicaciones import routerUbicacion
from routes.roles import routerRoles
from routes.pueblosMagicos import routerPmagico
from routes.horarios import routerHorarios
from routes.establecimientos import routerEstablecimiento
from routes.criterio import routerCriterio
from routes.join import appvista

# Crear una instancia de FastAPI
from fastapi.openapi.utils import get_openapi

# Incluir el enrutador de la ruta del alumno en la aplicación
app = FastAPI()
app.include_router(router_SP_usuarios)
app.include_router(routerPersonas)
app.include_router(routerAturistico)
app.include_router(routerComentarios)
app.include_router(routerUsuarios)
app.include_router(routerValoracion)
app.include_router(routerUbicacion)
app.include_router(routerRoles)
app.include_router(routerPmagico)
app.include_router(routerHorarios)
app.include_router(routerEstablecimiento)
app.include_router(routerCriterio)
app.include_router(routerVatractivo)
app.include_router(routerVestablecimiento)
app.include_router(routerVpueblo)
app.include_router(appvista)


# Incluye las rutas y asigna una etiqueta a cada una
app.include_router(router_SP_usuarios, tags=["sp_inseta"])
app.include_router(routerPersonas, tags=["Personas"])
app.include_router(routerAturistico, tags=["Atractivo Turístico"])
app.include_router(routerComentarios, tags=["Comentarios"])
app.include_router(routerUsuarios, tags=["Usuarios"])
app.include_router(routerValoracion, tags=["Valoración"])
app.include_router(routerPmagico, tags=["Pueblos Mágicos"])
app.include_router(routerVatractivo, tags=["Visita Atractivo"])
app.include_router(routerVestablecimiento, tags=["Visita Establecimiento"])
app.include_router(routerVpueblo, tags=["Visita Pueblo"])
app.include_router(routerUbicacion, tags=["Ubicación"])
app.include_router(routerRoles, tags=["Roles"])
app.include_router(routerHorarios, tags=["Horarios"])
app.include_router(routerEstablecimiento, tags=["Establecimiento"])
app.include_router(routerCriterio, tags=["Criterio"])
app.include_router(appvista, tags=["Vista"])





# Función para personalizar la documentación de Swagger
def custom_openapi():
    if app.openapi_schema:
        return app.openapi_schema
    openapi_schema = get_openapi(
        title="Turismo de Aventura",
        version="1.0.0",
        description="Recomendacion de pueblos magicos",
        routes=app.routes,
    )
    # Agregar cualquier otra información personalizada que desees
    # Por ejemplo, puedes agregar información de contacto, términos de servicio, etc.
    app.openapi_schema = openapi_schema
    return app.openapi_schema

# Asigna la función custom_openapi al atributo "openapi_schema" del FastAPI app
app.openapi = custom_openapi