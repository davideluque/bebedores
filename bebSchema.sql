-- Base de datos para la guía de ejercicios de bebedores

/*  Definicion de tablas, sus claves primarias y restricciones de nulidad  */

CREATE TABLE FUENTE_SODA(
    CodFS       VARCHAR(10)     NOT NULL,
    NombreFS    VARCHAR(25)     NOT NULL,

    CONSTRAINT  PK_FUENTE_SODA  PRIMARY KEY(CodFS)
);

CREATE TABLE BEBEDOR(
    CI          VARCHAR(9)      NOT NULL,
    Nombre      VARCHAR(25)     NOT NULL,

    CONSTRAINT   PK_BEBEDOR     PRIMARY KEY(CI)
);

CREATE TABLE FRECUENTA(
    CI          VARCHAR(9)      NOT NULL,
    CodFS       VARCHAR(25)     NOT NULL,

    CONSTRAINT  PK_FRECUENTA    PRIMARY KEY(CI, CodFS)
);

CREATE TABLE BEBIDA(
    CodBeb      VARCHAR(10)     NOT NULL,
    NombreBeb   VARCHAR(25)     NOT NULL,

    CONSTRAINT  PK_BEBIDA       PRIMARY KEY(CodBeb)
);

CREATE TABLE GUSTA(
    CI          VARCHAR(9)      NOT NULL,
    CodBeb      VARCHAR(10)     NOT NULL,

    CONSTRAINT  PK_GUSTA        PRIMARY KEY(CI, CodBeb)
);

CREATE TABLE VENDE(
    CodFS       VARCHAR(25)     NOT NULL,
    CodBeb      VARCHAR(10)     NOT NULL,
    precio      INTEGER         NOT NULL,

    CONSTRAINT PK_VENDE         PRIMARY KEY(CodFS, CodBeb)
);

/* Declaracion de las claves foraneas de las relaciones en el esquema */

ALTER TABLE FRECUENTA
    ADD CONSTRAINT FK_FRECUENTA_BEBEDOR FOREIGN KEY(CI)
        REFERENCES BEBEDOR,

    ADD CONSTRAINT FK_FRECUENTA_FUENTE_SODA FOREIGN KEY(CodFS)
        REFERENCES FUENTE_SODA;

ALTER TABLE GUSTA
    ADD CONSTRAINT FK_GUSTA_BEBEDOR FOREIGN KEY(CI)
        REFERENCES BEBEDOR,

    ADD CONSTRAINT FK_GUSTA_BEBIDA FOREIGN KEY(CodBeb)
        REFERENCES BEBIDA;

ALTER TABLE VENDE
    ADD CONSTRAINT FK_VENDE_FUENTE_SODA FOREIGN KEY(CodFS)
        REFERENCES FUENTE_SODA,

    ADD CONSTRAINT FK_VENDE_BEBIDA FOREIGN KEY(CodBeb)
        REFERENCES BEBIDA;