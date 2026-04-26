## Hospital DB

Base de datos PostgreSQL para el sistema de gestión hospitalaria.

##  Backlog del proyecto
 [Ver Trello](https://trello.com/invite/b/69ed81731f27c15b618b1857/ATTI8ca5a562641d0a4e7032f85d026f1e0797E1E196/bd)

##  Tecnologías
- PostgreSQL
- Liquibase
- Docker
- Docker Compose

##  Estructura del proyecto
```
hospital_db/
├── 01_ddl/
│   ├── 03_tables/     → Scripts de creación de tablas
│   └── 09_indexes/    → Scripts de índices
├── 02_dml/
│   ├── 00_inserts/    → Datos iniciales
│   ├── 01_updates/    → Actualizaciones
│   └── 02_deletes/    → Eliminaciones
├── 03_dcl/
│   ├── 00_roles/      → Roles de base de datos
│   └── 01_grants/     → Permisos
├── 04_tcl/            → Control de transacciones
├── 05_rollbacks/      → Scripts de reversión
├── adr/               → Architecture Decision Records
├── docker/            → Configuración Docker
├── docs/              → Documentación
├── liquibase/         → Migraciones Liquibase
└── scripts/           → Scripts utilitarios
```

##  Entidades
```
- **patients** → Pacientes
- **doctors** → Médicos
- **appointments** → Citas médicas
```

##  Ramas
```
| Rama | Descripción |
|------|-------------|
| `main` | Producción, nunca se toca directo |
| `release` | Versión lista para entregar |
| `qa` | Ambiente de pruebas |
| `develop` | Integración del trabajo |
| `feature/HU-XX` | Una rama por historia de usuario |
```

##  Cómo ejecutar

```bash
docker-compose up
```

Esto levanta automáticamente:
-  Base de datos PostgreSQL en puerto 5433
-  Crea las tablas
-  Inserta datos iniciales

##  Ambientes
```
| Ambiente | Base de datos |
|----------|--------------|
| Desarrollo | hospital_db |
| QA | hospital_db_qa |
| Producción | hospital_db_prod |
```

##  Repositorios relacionados
- [Backend](https://github.com/Dannabarrios/Backend-Activity)
- [Frontend](https://github.com/Dannabarrios/Frontend-Activity)