-- Table: SEGURO_DW_G29987471.dim_cliente

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".dim_cliente;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".dim_cliente
(
    sk_dim_cliente integer NOT NULL,
    cod_cliente integer NOT NULL,
    nb_cliente character varying(25) COLLATE pg_catalog."default" NOT NULL,
    ci_rif character varying(45) COLLATE pg_catalog."default" NOT NULL,
    telefono character varying(45) COLLATE pg_catalog."default" NOT NULL,
    direccion character varying(45) COLLATE pg_catalog."default" NOT NULL,
    sexo character varying(45) COLLATE pg_catalog."default" NOT NULL,
    email character varying(45) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dim_cliente_pkey PRIMARY KEY (sk_dim_cliente)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".dim_cliente
    OWNER to root;

    -- Table: SEGURO_DW_G29987471.dim_contrato

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".dim_contrato;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".dim_contrato
(
    sk_dim_contrato integer NOT NULL,
    nro_contrato integer NOT NULL,
    descrip_contrato character varying(25) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dim_contrato_pkey PRIMARY KEY (sk_dim_contrato)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".dim_contrato
    OWNER to root;

    -- Table: SEGURO_DW_G29987471.dim_estado_contrato

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".dim_estado_contrato;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".dim_estado_contrato
(
    sk_dim_estado_contrato integer NOT NULL,
    cod_estado integer NOT NULL,
    descrip_estado character varying(25) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dim_estado_contrato_pkey PRIMARY KEY (sk_dim_estado_contrato)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".dim_estado_contrato
    OWNER to root;

-- Table: SEGURO_DW_G29987471.dim_evaluacion_servicio

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".dim_evaluacion_servicio;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".dim_evaluacion_servicio
(
    sk_dim_evaluacion_servicio integer NOT NULL,
    cod_evaluacion_servicio integer NOT NULL,
    nb_descrip character varying(25) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dim_evaluacion_servicio_pkey PRIMARY KEY (sk_dim_evaluacion_servicio)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".dim_evaluacion_servicio
    OWNER to root;

    -- Table: SEGURO_DW_G29987471.dim_producto

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".dim_producto;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".dim_producto
(
    sk_dim_producto integer NOT NULL,
    cod_producto integer NOT NULL,
    nb_producto character varying(25) COLLATE pg_catalog."default" NOT NULL,
    descrip_producto character varying(25) COLLATE pg_catalog."default" NOT NULL,
    nb_tipo_producto character varying(25) COLLATE pg_catalog."default" NOT NULL,
    calificacion integer NOT NULL,
    cod_tipo_producto integer NOT NULL,
    CONSTRAINT dim_producto_pkey PRIMARY KEY (sk_dim_producto)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".dim_producto
    OWNER to root;

-- Table: SEGURO_DW_G29987471.dim_siniestro

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".dim_siniestro;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".dim_siniestro
(
    sk_dim_siniestro integer NOT NULL,
    nro_siniestro integer NOT NULL,
    descrip_siniestro character varying(25) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dim_siniestro_pkey PRIMARY KEY (sk_dim_siniestro)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".dim_siniestro
    OWNER to root;

-- Table: SEGURO_DW_G29987471.dim_sucursal

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".dim_sucursal;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".dim_sucursal
(
    sk_dim_sucursal integer NOT NULL,
    cod_sucursal integer NOT NULL,
    nb_sucursal character varying(45) COLLATE pg_catalog."default" NOT NULL,
    cod_ciudad integer NOT NULL,
    nb_ciudad character varying(45) COLLATE pg_catalog."default" NOT NULL,
    cod_pais integer NOT NULL,
    nb_pais character varying(45) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dim_sucursal_pkey PRIMARY KEY (sk_dim_sucursal)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".dim_sucursal
    OWNER to root;


    -- Table: SEGURO_DW_G29987471.dim_tiempo

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".dim_tiempo;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".dim_tiempo
(
    sk_dim_tiempo integer NOT NULL,
    cod_annio integer NOT NULL,
    cod_mes integer NOT NULL,
    cod_dia_annio integer NOT NULL,
    cod_dia_mes integer NOT NULL,
    cod_dia_semana integer NOT NULL,
    cod_semana integer NOT NULL,
    desc_dia_semana character varying(10) COLLATE pg_catalog."default" NOT NULL,
    desc_dia_semana_corta character varying(5) COLLATE pg_catalog."default" NOT NULL,
    desc_mes character varying(20) COLLATE pg_catalog."default" NOT NULL,
    desc_mes_corta character varying(3) COLLATE pg_catalog."default" NOT NULL,
    desc_trimestre integer NOT NULL,
    desc_semestre integer NOT NULL,
    fecha_completa date NOT NULL,
    CONSTRAINT dim_tiempo_pkey PRIMARY KEY (sk_dim_tiempo)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".dim_tiempo
    OWNER to root;


-- Table: SEGURO_DW_G29987471.fact_evaluacion_servicio

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".fact_evaluacion_servicio;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".fact_evaluacion_servicio
(
    sk_dim_cliente integer NOT NULL,
    sk_dim_producto integer NOT NULL,
    sk_dim_evaluacion_servicio integer NOT NULL,
    cantidad integer NOT NULL,
    recomienda_amigo real NOT NULL,
    CONSTRAINT fact_evaluacion_servicio_pkey PRIMARY KEY (sk_dim_cliente, sk_dim_producto, sk_dim_evaluacion_servicio),
    CONSTRAINT fact_evaluacion_servicio_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente)
        REFERENCES "SEGURO_DW_G29987471".dim_cliente (sk_dim_cliente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fact_evaluacion_servicio_sk_dim_evaluacion_servicio_fkey FOREIGN KEY (sk_dim_evaluacion_servicio)
        REFERENCES "SEGURO_DW_G29987471".dim_evaluacion_servicio (sk_dim_evaluacion_servicio) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fact_evaluacion_servicio_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto)
        REFERENCES "SEGURO_DW_G29987471".dim_producto (sk_dim_producto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".fact_evaluacion_servicio
    OWNER to root;


-- Table: SEGURO_DW_G29987471.fact_metas

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".fact_metas;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".fact_metas
(
    sk_dim_fecha_inicio_meta integer NOT NULL,
    sk_dim_fecha_fin_meta integer NOT NULL,
    sk_dim_cliente integer NOT NULL,
    sk_dim_producto integer NOT NULL,
    sk_dim_contrato integer NOT NULL,
    monto_meta_ingreso real NOT NULL,
    meta_renovacion integer NOT NULL,
    meta_asegurados integer NOT NULL,
    CONSTRAINT fact_metas_pkey PRIMARY KEY (sk_dim_fecha_inicio_meta, sk_dim_fecha_fin_meta, sk_dim_cliente, sk_dim_producto, sk_dim_contrato),
    CONSTRAINT fact_metas_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente)
        REFERENCES "SEGURO_DW_G29987471".dim_cliente (sk_dim_cliente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fact_metas_sk_dim_contrato_fkey FOREIGN KEY (sk_dim_contrato)
        REFERENCES "SEGURO_DW_G29987471".dim_contrato (sk_dim_contrato) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fact_metas_sk_dim_fecha_fin_meta_fkey FOREIGN KEY (sk_dim_fecha_fin_meta)
        REFERENCES "SEGURO_DW_G29987471".dim_tiempo (sk_dim_tiempo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fact_metas_sk_dim_fecha_inicio_meta_fkey FOREIGN KEY (sk_dim_fecha_inicio_meta)
        REFERENCES "SEGURO_DW_G29987471".dim_tiempo (sk_dim_tiempo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fact_metas_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto)
        REFERENCES "SEGURO_DW_G29987471".dim_producto (sk_dim_producto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".fact_metas
    OWNER to root;



-- Table: SEGURO_DW_G29987471.fact_registro_contrato

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".fact_registro_contrato;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".fact_registro_contrato
(
    sk_dim_tiempo_fecha_inicio integer NOT NULL,
    sk_dim_tiempo_fecha_fin integer NOT NULL,
    sk_dim_cliente integer NOT NULL,
    sk_dim_contrato integer NOT NULL,
    sk_dim_producto integer NOT NULL,
    sk_dim_estado_contrato integer NOT NULL,
    monto real NOT NULL,
    cantidad integer NOT NULL,
    cantidad_cliente integer NOT NULL,
    cantidad_producto integer NOT NULL,
    cantidad_contrato integer NOT NULL,
    CONSTRAINT fact_registro_contrato_pkey PRIMARY KEY (sk_dim_tiempo_fecha_inicio, sk_dim_tiempo_fecha_fin, sk_dim_cliente, sk_dim_contrato, sk_dim_producto, sk_dim_estado_contrato),
    CONSTRAINT fact_registro_contrato_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente)
        REFERENCES "SEGURO_DW_G29987471".dim_cliente (sk_dim_cliente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fact_registro_contrato_sk_dim_contrato_fkey FOREIGN KEY (sk_dim_contrato)
        REFERENCES "SEGURO_DW_G29987471".dim_contrato (sk_dim_contrato) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fact_registro_contrato_sk_dim_estado_contrato_fkey FOREIGN KEY (sk_dim_estado_contrato)
        REFERENCES "SEGURO_DW_G29987471".dim_estado_contrato (sk_dim_estado_contrato) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fact_registro_contrato_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto)
        REFERENCES "SEGURO_DW_G29987471".dim_producto (sk_dim_producto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fact_registro_contrato_sk_dim_tiempo_fecha_fin_fkey FOREIGN KEY (sk_dim_tiempo_fecha_fin)
        REFERENCES "SEGURO_DW_G29987471".dim_tiempo (sk_dim_tiempo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fact_registro_contrato_sk_dim_tiempo_fecha_inicio_fkey FOREIGN KEY (sk_dim_tiempo_fecha_inicio)
        REFERENCES "SEGURO_DW_G29987471".dim_tiempo (sk_dim_tiempo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".fact_registro_contrato
    OWNER to root;




-- Table: SEGURO_DW_G29987471.fact_registro_siniestro

-- DROP TABLE IF EXISTS "SEGURO_DW_G29987471".fact_registro_siniestro;

CREATE TABLE IF NOT EXISTS "SEGURO_DW_G29987471".fact_registro_siniestro
(
    sk_fecha_siniestro integer NOT NULL,
    sk_fecha_respuesta integer NOT NULL,
    sk_dim_cliente integer NOT NULL,
    sk_dim_contrato integer NOT NULL,
    sk_dim_sucursal integer NOT NULL,
    sk_dim_producto integer NOT NULL,
    sk_dim_siniestro integer NOT NULL,
    cantidad integer NOT NULL,
    monto_reconocido real NOT NULL,
    monto_solicitado real NOT NULL,
    id_rechazo character varying(2) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT fact_registro_siniestro_pkey PRIMARY KEY (sk_fecha_siniestro, sk_fecha_respuesta, sk_dim_cliente, sk_dim_contrato, sk_dim_sucursal, sk_dim_producto, sk_dim_siniestro),
    CONSTRAINT fact_registro_siniestro_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente)
        REFERENCES "SEGURO_DW_G29987471".dim_cliente (sk_dim_cliente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fact_registro_siniestro_sk_dim_contrato_fkey FOREIGN KEY (sk_dim_contrato)
        REFERENCES "SEGURO_DW_G29987471".dim_contrato (sk_dim_contrato) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fact_registro_siniestro_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto)
        REFERENCES "SEGURO_DW_G29987471".dim_producto (sk_dim_producto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fact_registro_siniestro_sk_dim_siniestro_fkey FOREIGN KEY (sk_dim_siniestro)
        REFERENCES "SEGURO_DW_G29987471".dim_siniestro (sk_dim_siniestro) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fact_registro_siniestro_sk_dim_sucursal_fkey FOREIGN KEY (sk_dim_sucursal)
        REFERENCES "SEGURO_DW_G29987471".dim_sucursal (sk_dim_sucursal) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fact_registro_siniestro_sk_fecha_respuesta_fkey FOREIGN KEY (sk_fecha_respuesta)
        REFERENCES "SEGURO_DW_G29987471".dim_tiempo (sk_dim_tiempo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fact_registro_siniestro_sk_fecha_siniestro_fkey FOREIGN KEY (sk_fecha_siniestro)
        REFERENCES "SEGURO_DW_G29987471".dim_tiempo (sk_dim_tiempo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "SEGURO_DW_G29987471".fact_registro_siniestro
    OWNER to root;

