CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE appointments (
    id                  UUID        PRIMARY KEY DEFAULT uuid_generate_v4(),
    patient_id          UUID        NOT NULL,
    doctor_id           UUID        NOT NULL,
    appointment_date    TIMESTAMP   NOT NULL,
    status              VARCHAR(20) NOT NULL DEFAULT 'SCHEDULED',
    created_at          TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_appointment_patient FOREIGN KEY (patient_id) REFERENCES patients(id),
    CONSTRAINT fk_appointment_doctor  FOREIGN KEY (doctor_id)  REFERENCES doctors(id),
    CONSTRAINT chk_status CHECK (status IN ('SCHEDULED', 'COMPLETED', 'CANCELLED'))
);

CREATE INDEX idx_appointments_patient ON appointments(patient_id);
CREATE INDEX idx_appointments_doctor  ON appointments(doctor_id);
CREATE INDEX idx_appointments_date    ON appointments(appointment_date);