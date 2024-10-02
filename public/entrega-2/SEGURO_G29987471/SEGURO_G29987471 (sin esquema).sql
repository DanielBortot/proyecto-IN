
CREATE SEQUENCE IF NOT EXISTS "SEGURO_G29987471".ciudad_cod_ciudad_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS "SEGURO_G29987471".cliente_cod_cliente_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS "SEGURO_G29987471".contrato_nro_contrato_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS "SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS "SEGURO_G29987471".pais_cod_pais_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS "SEGURO_G29987471".producto_cod_producto_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;


CREATE SEQUENCE IF NOT EXISTS "SEGURO_G29987471".siniestro_nro_siniestro_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS "SEGURO_G29987471".sucursal_cod_sucursal_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS "SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;


CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".pais
(
    cod_pais integer NOT NULL DEFAULT nextval('"SEGURO_G29987471".pais_cod_pais_seq'::regclass),
    nb_pais character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "PK_38afe25b3fbd774c49f9345be8c" PRIMARY KEY (cod_pais)
)

TABLESPACE pg_default;


CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".ciudad
(
    cod_ciudad integer NOT NULL DEFAULT nextval('"SEGURO_G29987471".ciudad_cod_ciudad_seq'::regclass),
    cod_pais integer,
    nb_ciudad character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "PK_8596bb6c514c7838b26c7b148ef" PRIMARY KEY (cod_ciudad),
    CONSTRAINT "FK_e22978e6591e35a396bd90a9aab" FOREIGN KEY (cod_pais)
        REFERENCES "SEGURO_G29987471".pais (cod_pais) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;


CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".sucursal
(
    cod_sucursal integer NOT NULL DEFAULT nextval('"SEGURO_G29987471".sucursal_cod_sucursal_seq'::regclass),
    cod_ciudad integer,
    nb_sucursal character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "PK_72da96b56c6e7d2e50ee02e5981" PRIMARY KEY (cod_sucursal),
    CONSTRAINT "FK_9fba729e0a51c28d8d09aac040e" FOREIGN KEY (cod_ciudad)
        REFERENCES "SEGURO_G29987471".ciudad (cod_ciudad) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".cliente
(
    cod_cliente integer NOT NULL DEFAULT nextval('"SEGURO_G29987471".cliente_cod_cliente_seq'::regclass),
    cedula character varying COLLATE pg_catalog."default" NOT NULL,
    telefono character varying COLLATE pg_catalog."default" NOT NULL,
    cod_sucursal integer,
    nb_cliente character varying COLLATE pg_catalog."default" NOT NULL,
    sexo character varying COLLATE pg_catalog."default" NOT NULL,
    email character varying COLLATE pg_catalog."default" NOT NULL,
    direccion character varying(200) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "PK_30e34515d653a77773ce9acad72" PRIMARY KEY (cod_cliente),
    CONSTRAINT "FK_57784698f4e7f7d5c9d55132b23" FOREIGN KEY (cod_sucursal)
        REFERENCES "SEGURO_G29987471".sucursal (cod_sucursal) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".contrato
(
    nro_contrato integer NOT NULL DEFAULT nextval('"SEGURO_G29987471".contrato_nro_contrato_seq'::regclass),
    descrip_contrato character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "PK_d854784824a3f84781cfa961d72" PRIMARY KEY (nro_contrato)
)


TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".evaluacion_servicio
(
    cod_evaluacion_servicio integer NOT NULL DEFAULT nextval('"SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq'::regclass),
    descripcion character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "PK_1983dd201c57098d7e9f73ad2cf" PRIMARY KEY (cod_evaluacion_servicio)
)

TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".tipo_producto
(
    cod_tipo_producto integer NOT NULL DEFAULT nextval('"SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq'::regclass),
    nb_tipo_producto character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "PK_81ef1a237a02f68c92750cdbaf2" PRIMARY KEY (cod_tipo_producto)
)

TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".producto
(
    cod_producto integer NOT NULL DEFAULT nextval('"SEGURO_G29987471".producto_cod_producto_seq'::regclass),
    cod_tipo_producto integer,
    nb_producto character varying COLLATE pg_catalog."default" NOT NULL,
    descripcion character varying COLLATE pg_catalog."default" NOT NULL,
    calificacion integer NOT NULL,
    CONSTRAINT "PK_b93ddc4e823830d01ece33a7f64" PRIMARY KEY (cod_producto),
    CONSTRAINT "FK_5dca93947111ad9b576d903cf2a" FOREIGN KEY (cod_tipo_producto)
        REFERENCES "SEGURO_G29987471".tipo_producto (cod_tipo_producto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;


CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".recomienda
(
    cod_cliente integer NOT NULL,
    cod_evaluacion_servicio integer NOT NULL,
    cod_producto integer NOT NULL,
    recomienda_amigo character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "PK_62d6a750d165b4b5d00c35a7c60" PRIMARY KEY (cod_cliente, cod_evaluacion_servicio, cod_producto),
    CONSTRAINT "FK_778a85c79a63e0b71b58078b891" FOREIGN KEY (cod_producto)
        REFERENCES "SEGURO_G29987471".producto (cod_producto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_d697808af3b479e57c725f7cc3c" FOREIGN KEY (cod_evaluacion_servicio)
        REFERENCES "SEGURO_G29987471".evaluacion_servicio (cod_evaluacion_servicio) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_fc6baefda4d2a86427c47a2508c" FOREIGN KEY (cod_cliente)
        REFERENCES "SEGURO_G29987471".cliente (cod_cliente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".siniestro
(
    nro_siniestro integer NOT NULL DEFAULT nextval('"SEGURO_G29987471".siniestro_nro_siniestro_seq'::regclass),
    descripcion_siniestro character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "PK_795558fe3169fa8c19102418043" PRIMARY KEY (nro_siniestro)
)

TABLESPACE pg_default;


CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".registro_contrato
(
    nro_contrato integer NOT NULL,
    cod_producto integer NOT NULL,
    cod_cliente integer NOT NULL,
    fecha_inicio timestamp with time zone NOT NULL,
    fecha_fin timestamp with time zone NOT NULL,
    estado_contrato character varying COLLATE pg_catalog."default" NOT NULL,
    monto integer NOT NULL,
    CONSTRAINT "PK_e6962570b6f34851c25d1d55f3c" PRIMARY KEY (nro_contrato, cod_producto, cod_cliente),
    CONSTRAINT "FK_8a8b9c6216ddd54b902795b8560" FOREIGN KEY (cod_cliente)
        REFERENCES "SEGURO_G29987471".cliente (cod_cliente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_cea2c686c92d4d1fa8c1bbfbb36" FOREIGN KEY (nro_contrato)
        REFERENCES "SEGURO_G29987471".contrato (nro_contrato) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_d5db285938e57149f41ae7fe481" FOREIGN KEY (cod_producto)
        REFERENCES "SEGURO_G29987471".producto (cod_producto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS "SEGURO_G29987471".registro_siniestro
(
    nro_siniestro integer NOT NULL,
    nro_contrato integer NOT NULL,
    fecha_siniestro timestamp with time zone NOT NULL,
    fecha_respuesta timestamp with time zone NOT NULL,
    id_rechazo character varying COLLATE pg_catalog."default" NOT NULL,
    monto_reconocido integer NOT NULL,
    monto_solicitado integer NOT NULL,
    CONSTRAINT "PK_d274566e39a2b126dc54b734e96" PRIMARY KEY (nro_siniestro, nro_contrato, fecha_siniestro),
    CONSTRAINT "FK_077b08f646d39452c6792fa89d1" FOREIGN KEY (nro_siniestro)
        REFERENCES "SEGURO_G29987471".siniestro (nro_siniestro) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_c7c9ea3b81491c83d9d6b534bea" FOREIGN KEY (nro_contrato)
        REFERENCES "SEGURO_G29987471".contrato (nro_contrato) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_G29987471".registro_siniestro
    OWNER to root;

ALTER TABLE IF EXISTS "SEGURO_G29987471".registro_contrato
    OWNER to root;

ALTER TABLE IF EXISTS "SEGURO_G29987471".tipo_producto
    OWNER to root;

ALTER TABLE IF EXISTS "SEGURO_G29987471".sucursal
    OWNER to root;

ALTER TABLE IF EXISTS "SEGURO_G29987471".siniestro
    OWNER to root;

ALTER TABLE IF EXISTS "SEGURO_G29987471".recomienda
    OWNER to root;

ALTER TABLE IF EXISTS "SEGURO_G29987471".producto
    OWNER to root;

ALTER TABLE IF EXISTS "SEGURO_G29987471".pais
    OWNER to root;

ALTER TABLE IF EXISTS "SEGURO_G29987471".evaluacion_servicio
    OWNER to root;

ALTER TABLE IF EXISTS "SEGURO_G29987471".contrato
    OWNER to root;

ALTER TABLE IF EXISTS "SEGURO_G29987471".cliente
    OWNER to root;

ALTER TABLE IF EXISTS "SEGURO_G29987471".ciudad
    OWNER to root;

ALTER SEQUENCE "SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq
    OWNED BY "SEGURO_G29987471".tipo_producto.cod_tipo_producto;

ALTER SEQUENCE "SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq
    OWNER TO root;

ALTER SEQUENCE "SEGURO_G29987471".sucursal_cod_sucursal_seq
    OWNED BY "SEGURO_G29987471".sucursal.cod_sucursal;

ALTER SEQUENCE "SEGURO_G29987471".sucursal_cod_sucursal_seq
    OWNER TO root;

ALTER SEQUENCE "SEGURO_G29987471".siniestro_nro_siniestro_seq
    OWNED BY "SEGURO_G29987471".siniestro.nro_siniestro;

ALTER SEQUENCE "SEGURO_G29987471".siniestro_nro_siniestro_seq
    OWNER TO root;

ALTER SEQUENCE "SEGURO_G29987471".producto_cod_producto_seq
    OWNED BY "SEGURO_G29987471".producto.cod_producto;

ALTER SEQUENCE "SEGURO_G29987471".producto_cod_producto_seq
    OWNER TO root;

ALTER SEQUENCE "SEGURO_G29987471".pais_cod_pais_seq
    OWNED BY "SEGURO_G29987471".pais.cod_pais;

ALTER SEQUENCE "SEGURO_G29987471".pais_cod_pais_seq
    OWNER TO root;

ALTER SEQUENCE "SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq
    OWNED BY "SEGURO_G29987471".evaluacion_servicio.cod_evaluacion_servicio;

ALTER SEQUENCE "SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq
    OWNER TO root;
ALTER SEQUENCE "SEGURO_G29987471".contrato_nro_contrato_seq
    OWNED BY "SEGURO_G29987471".contrato.nro_contrato;

ALTER SEQUENCE "SEGURO_G29987471".contrato_nro_contrato_seq
    OWNER TO root;

ALTER SEQUENCE "SEGURO_G29987471".ciudad_cod_ciudad_seq
    OWNED BY "SEGURO_G29987471".ciudad.cod_ciudad;

ALTER SEQUENCE "SEGURO_G29987471".ciudad_cod_ciudad_seq
    OWNER TO root;

ALTER SEQUENCE "SEGURO_G29987471".cliente_cod_cliente_seq
    OWNED BY "SEGURO_G29987471".cliente.cod_cliente;

ALTER SEQUENCE "SEGURO_G29987471".cliente_cod_cliente_seq
    OWNER TO root;



