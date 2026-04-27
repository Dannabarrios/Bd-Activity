FROM postgres:15-alpine

ENV POSTGRES_DB=hospital_db
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

COPY ../01_ddl/gestion_usuarios/03_tables/001_table_patients.sql /docker-entrypoint-initdb.d/01_patients.sql
COPY ../01_ddl/gestion_medica/03_tables/001_table_doctors.sql /docker-entrypoint-initdb.d/02_doctors.sql
COPY ../01_ddl/gestion_cita/03_tables/001_table_appointments.sql /docker-entrypoint-initdb.d/03_appointments.sql
COPY ../02_dml/00_inserts/gestion_usuarios/001_insert_patients.sql /docker-entrypoint-initdb.d/04_insert_patients.sql
COPY ../02_dml/00_inserts/gestion_medica/001_insert_doctors.sql /docker-entrypoint-initdb.d/05_insert_doctors.sql
COPY ../02_dml/00_inserts/gestion_cita/001_insert_appointments.sql /docker-entrypoint-initdb.d/06_insert_appointments.sql

EXPOSE 5432