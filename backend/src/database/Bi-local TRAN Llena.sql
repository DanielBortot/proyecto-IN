PGDMP      (                |            Bi-local    16.2 (Debian 16.2-1.pgdg120+2)    16.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25696    Bi-local    DATABASE     u   CREATE DATABASE "Bi-local" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE "Bi-local";
                root    false                        2615    26762    SEGURO_DW_G29987471    SCHEMA     %   CREATE SCHEMA "SEGURO_DW_G29987471";
 #   DROP SCHEMA "SEGURO_DW_G29987471";
                root    false                        2615    26763    SEGURO_G29987471    SCHEMA     "   CREATE SCHEMA "SEGURO_G29987471";
     DROP SCHEMA "SEGURO_G29987471";
                pg_database_owner    false            �           0    0    SCHEMA "SEGURO_G29987471"    COMMENT     B   COMMENT ON SCHEMA "SEGURO_G29987471" IS 'standard public schema';
                   pg_database_owner    false    7            �            1259    26764    dim_cliente    TABLE     �  CREATE TABLE "SEGURO_DW_G29987471".dim_cliente (
    sk_dim_cliente integer NOT NULL,
    cod_cliente integer NOT NULL,
    nb_cliente character varying(25) NOT NULL,
    ci_rif character varying(45) NOT NULL,
    telefono character varying(45) NOT NULL,
    direccion character varying(45) NOT NULL,
    sexo character varying(45) NOT NULL,
    email character varying(45) NOT NULL
);
 .   DROP TABLE "SEGURO_DW_G29987471".dim_cliente;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26767    dim_contrato    TABLE     �   CREATE TABLE "SEGURO_DW_G29987471".dim_contrato (
    sk_dim_contrato integer NOT NULL,
    nro_contrato integer NOT NULL,
    descrip_contrato character varying(25) NOT NULL
);
 /   DROP TABLE "SEGURO_DW_G29987471".dim_contrato;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26770    dim_estado_contrato    TABLE     �   CREATE TABLE "SEGURO_DW_G29987471".dim_estado_contrato (
    sk_dim_estado_contrato integer NOT NULL,
    cod_estado integer NOT NULL,
    descrip_estado character varying(25) NOT NULL
);
 6   DROP TABLE "SEGURO_DW_G29987471".dim_estado_contrato;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26773    dim_evaluacion_servicio    TABLE     �   CREATE TABLE "SEGURO_DW_G29987471".dim_evaluacion_servicio (
    sk_dim_evaluacion_servicio integer NOT NULL,
    cod_evaluacion_servicio integer NOT NULL,
    nb_descrip character varying(25) NOT NULL
);
 :   DROP TABLE "SEGURO_DW_G29987471".dim_evaluacion_servicio;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26776    dim_producto    TABLE     b  CREATE TABLE "SEGURO_DW_G29987471".dim_producto (
    sk_dim_producto integer NOT NULL,
    cod_producto integer NOT NULL,
    nb_producto character varying(25) NOT NULL,
    descrip_producto character varying(25) NOT NULL,
    nb_tipo_producto character varying(25) NOT NULL,
    calificacion integer NOT NULL,
    cod_tipo_producto integer NOT NULL
);
 /   DROP TABLE "SEGURO_DW_G29987471".dim_producto;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26779    dim_siniestro    TABLE     �   CREATE TABLE "SEGURO_DW_G29987471".dim_siniestro (
    sk_dim_siniestro integer NOT NULL,
    nro_siniestro integer NOT NULL,
    descrip_siniestro character varying(25) NOT NULL
);
 0   DROP TABLE "SEGURO_DW_G29987471".dim_siniestro;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26782    dim_sucursal    TABLE     G  CREATE TABLE "SEGURO_DW_G29987471".dim_sucursal (
    sk_dim_sucursal integer NOT NULL,
    cod_sucursal integer NOT NULL,
    nb_sucursal character varying(45) NOT NULL,
    cod_ciudad integer NOT NULL,
    nb_ciudad character varying(45) NOT NULL,
    cod_pais integer NOT NULL,
    nb_pais character varying(45) NOT NULL
);
 /   DROP TABLE "SEGURO_DW_G29987471".dim_sucursal;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26785 
   dim_tiempo    TABLE     W  CREATE TABLE "SEGURO_DW_G29987471".dim_tiempo (
    sk_dim_tiempo integer NOT NULL,
    cod_annio integer NOT NULL,
    cod_mes integer NOT NULL,
    cod_dia_annio integer NOT NULL,
    cod_dia_mes integer NOT NULL,
    cod_dia_semana integer NOT NULL,
    cod_semana integer NOT NULL,
    desc_dia_semana character varying(10) NOT NULL,
    desc_dia_semana_corta character varying(5) NOT NULL,
    desc_mes character varying(20) NOT NULL,
    desc_mes_corta character varying(3) NOT NULL,
    desc_trimestre integer NOT NULL,
    desc_semestre integer NOT NULL,
    fecha_completa date NOT NULL
);
 -   DROP TABLE "SEGURO_DW_G29987471".dim_tiempo;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26788    fact_evaluacion_servicio    TABLE     �   CREATE TABLE "SEGURO_DW_G29987471".fact_evaluacion_servicio (
    sk_dim_cliente integer NOT NULL,
    sk_dim_producto integer NOT NULL,
    sk_dim_evaluacion_servicio integer NOT NULL,
    cantidad integer NOT NULL,
    recomienda_amigo real NOT NULL
);
 ;   DROP TABLE "SEGURO_DW_G29987471".fact_evaluacion_servicio;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26791 
   fact_metas    TABLE     p  CREATE TABLE "SEGURO_DW_G29987471".fact_metas (
    sk_dim_fecha_inicio_meta integer NOT NULL,
    sk_dim_fecha_fin_meta integer NOT NULL,
    sk_dim_cliente integer NOT NULL,
    sk_dim_producto integer NOT NULL,
    sk_dim_contrato integer NOT NULL,
    monto_meta_ingreso real NOT NULL,
    meta_renovacion integer NOT NULL,
    meta_asegurados integer NOT NULL
);
 -   DROP TABLE "SEGURO_DW_G29987471".fact_metas;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26794    fact_registro_contrato    TABLE     �  CREATE TABLE "SEGURO_DW_G29987471".fact_registro_contrato (
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
    cantidad_contrato integer NOT NULL
);
 9   DROP TABLE "SEGURO_DW_G29987471".fact_registro_contrato;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26797    fact_registro_siniestro    TABLE     �  CREATE TABLE "SEGURO_DW_G29987471".fact_registro_siniestro (
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
    id_rechazo character varying(2) NOT NULL
);
 :   DROP TABLE "SEGURO_DW_G29987471".fact_registro_siniestro;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    26800    ciudad    TABLE     �   CREATE TABLE "SEGURO_G29987471".ciudad (
    cod_ciudad integer NOT NULL,
    cod_pais integer,
    nb_ciudad character varying NOT NULL
);
 &   DROP TABLE "SEGURO_G29987471".ciudad;
       SEGURO_G29987471         heap    root    false    7            �            1259    26805    ciudad_cod_ciudad_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".ciudad_cod_ciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE "SEGURO_G29987471".ciudad_cod_ciudad_seq;
       SEGURO_G29987471          root    false    7    229            �           0    0    ciudad_cod_ciudad_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "SEGURO_G29987471".ciudad_cod_ciudad_seq OWNED BY "SEGURO_G29987471".ciudad.cod_ciudad;
          SEGURO_G29987471          root    false    230            �            1259    26806    cliente    TABLE     ]  CREATE TABLE "SEGURO_G29987471".cliente (
    cod_cliente integer NOT NULL,
    cedula character varying NOT NULL,
    telefono character varying NOT NULL,
    cod_sucursal integer,
    nb_cliente character varying NOT NULL,
    sexo character varying NOT NULL,
    email character varying NOT NULL,
    direccion character varying(200) NOT NULL
);
 '   DROP TABLE "SEGURO_G29987471".cliente;
       SEGURO_G29987471         heap    root    false    7            �            1259    26811    cliente_cod_cliente_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".cliente_cod_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE "SEGURO_G29987471".cliente_cod_cliente_seq;
       SEGURO_G29987471          root    false    7    231            �           0    0    cliente_cod_cliente_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "SEGURO_G29987471".cliente_cod_cliente_seq OWNED BY "SEGURO_G29987471".cliente.cod_cliente;
          SEGURO_G29987471          root    false    232            �            1259    26812    contrato    TABLE     �   CREATE TABLE "SEGURO_G29987471".contrato (
    nro_contrato integer NOT NULL,
    descrip_contrato character varying NOT NULL
);
 (   DROP TABLE "SEGURO_G29987471".contrato;
       SEGURO_G29987471         heap    root    false    7            �            1259    26817    contrato_nro_contrato_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".contrato_nro_contrato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "SEGURO_G29987471".contrato_nro_contrato_seq;
       SEGURO_G29987471          root    false    7    233            �           0    0    contrato_nro_contrato_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "SEGURO_G29987471".contrato_nro_contrato_seq OWNED BY "SEGURO_G29987471".contrato.nro_contrato;
          SEGURO_G29987471          root    false    234            �            1259    26818    evaluacion_servicio    TABLE     �   CREATE TABLE "SEGURO_G29987471".evaluacion_servicio (
    cod_evaluacion_servicio integer NOT NULL,
    descripcion character varying NOT NULL
);
 3   DROP TABLE "SEGURO_G29987471".evaluacion_servicio;
       SEGURO_G29987471         heap    root    false    7            �            1259    26823 /   evaluacion_servicio_cod_evaluacion_servicio_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 R   DROP SEQUENCE "SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq;
       SEGURO_G29987471          root    false    235    7            �           0    0 /   evaluacion_servicio_cod_evaluacion_servicio_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq OWNED BY "SEGURO_G29987471".evaluacion_servicio.cod_evaluacion_servicio;
          SEGURO_G29987471          root    false    236            �            1259    26824    pais    TABLE     p   CREATE TABLE "SEGURO_G29987471".pais (
    cod_pais integer NOT NULL,
    nb_pais character varying NOT NULL
);
 $   DROP TABLE "SEGURO_G29987471".pais;
       SEGURO_G29987471         heap    root    false    7            �            1259    26829    pais_cod_pais_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".pais_cod_pais_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "SEGURO_G29987471".pais_cod_pais_seq;
       SEGURO_G29987471          root    false    237    7            �           0    0    pais_cod_pais_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "SEGURO_G29987471".pais_cod_pais_seq OWNED BY "SEGURO_G29987471".pais.cod_pais;
          SEGURO_G29987471          root    false    238            �            1259    26830    producto    TABLE     �   CREATE TABLE "SEGURO_G29987471".producto (
    cod_producto integer NOT NULL,
    cod_tipo_producto integer,
    nb_producto character varying NOT NULL,
    descripcion character varying NOT NULL,
    calificacion integer NOT NULL
);
 (   DROP TABLE "SEGURO_G29987471".producto;
       SEGURO_G29987471         heap    root    false    7            �            1259    26835    producto_cod_producto_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".producto_cod_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "SEGURO_G29987471".producto_cod_producto_seq;
       SEGURO_G29987471          root    false    7    239            �           0    0    producto_cod_producto_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "SEGURO_G29987471".producto_cod_producto_seq OWNED BY "SEGURO_G29987471".producto.cod_producto;
          SEGURO_G29987471          root    false    240            �            1259    26836 
   recomienda    TABLE     �   CREATE TABLE "SEGURO_G29987471".recomienda (
    cod_cliente integer NOT NULL,
    cod_evaluacion_servicio integer NOT NULL,
    cod_producto integer NOT NULL,
    recomienda_amigo character varying NOT NULL
);
 *   DROP TABLE "SEGURO_G29987471".recomienda;
       SEGURO_G29987471         heap    root    false    7            �            1259    26841    registro_contrato    TABLE     O  CREATE TABLE "SEGURO_G29987471".registro_contrato (
    nro_contrato integer NOT NULL,
    cod_producto integer NOT NULL,
    cod_cliente integer NOT NULL,
    fecha_inicio timestamp with time zone NOT NULL,
    fecha_fin timestamp with time zone NOT NULL,
    estado_contrato character varying NOT NULL,
    monto integer NOT NULL
);
 1   DROP TABLE "SEGURO_G29987471".registro_contrato;
       SEGURO_G29987471         heap    root    false    7            �            1259    26846    registro_siniestro    TABLE     e  CREATE TABLE "SEGURO_G29987471".registro_siniestro (
    nro_siniestro integer NOT NULL,
    nro_contrato integer NOT NULL,
    fecha_siniestro timestamp with time zone NOT NULL,
    fecha_respuesta timestamp with time zone NOT NULL,
    id_rechazo character varying NOT NULL,
    monto_reconocido integer NOT NULL,
    monto_solicitado integer NOT NULL
);
 2   DROP TABLE "SEGURO_G29987471".registro_siniestro;
       SEGURO_G29987471         heap    root    false    7            �            1259    26851 	   siniestro    TABLE     �   CREATE TABLE "SEGURO_G29987471".siniestro (
    nro_siniestro integer NOT NULL,
    descripcion_siniestro character varying NOT NULL
);
 )   DROP TABLE "SEGURO_G29987471".siniestro;
       SEGURO_G29987471         heap    root    false    7            �            1259    26856    siniestro_nro_siniestro_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".siniestro_nro_siniestro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "SEGURO_G29987471".siniestro_nro_siniestro_seq;
       SEGURO_G29987471          root    false    7    244                        0    0    siniestro_nro_siniestro_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "SEGURO_G29987471".siniestro_nro_siniestro_seq OWNED BY "SEGURO_G29987471".siniestro.nro_siniestro;
          SEGURO_G29987471          root    false    245            �            1259    26857    sucursal    TABLE     �   CREATE TABLE "SEGURO_G29987471".sucursal (
    cod_sucursal integer NOT NULL,
    cod_ciudad integer,
    nb_sucursal character varying NOT NULL
);
 (   DROP TABLE "SEGURO_G29987471".sucursal;
       SEGURO_G29987471         heap    root    false    7            �            1259    26862    sucursal_cod_sucursal_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".sucursal_cod_sucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "SEGURO_G29987471".sucursal_cod_sucursal_seq;
       SEGURO_G29987471          root    false    246    7                       0    0    sucursal_cod_sucursal_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "SEGURO_G29987471".sucursal_cod_sucursal_seq OWNED BY "SEGURO_G29987471".sucursal.cod_sucursal;
          SEGURO_G29987471          root    false    247            �            1259    26863    tipo_producto    TABLE     �   CREATE TABLE "SEGURO_G29987471".tipo_producto (
    cod_tipo_producto integer NOT NULL,
    nb_tipo_producto character varying NOT NULL
);
 -   DROP TABLE "SEGURO_G29987471".tipo_producto;
       SEGURO_G29987471         heap    root    false    7            �            1259    26868 #   tipo_producto_cod_tipo_producto_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE "SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq;
       SEGURO_G29987471          root    false    7    248                       0    0 #   tipo_producto_cod_tipo_producto_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq OWNED BY "SEGURO_G29987471".tipo_producto.cod_tipo_producto;
          SEGURO_G29987471          root    false    249            �           2604    26869    ciudad cod_ciudad    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".ciudad ALTER COLUMN cod_ciudad SET DEFAULT nextval('"SEGURO_G29987471".ciudad_cod_ciudad_seq'::regclass);
 L   ALTER TABLE "SEGURO_G29987471".ciudad ALTER COLUMN cod_ciudad DROP DEFAULT;
       SEGURO_G29987471          root    false    230    229            �           2604    26870    cliente cod_cliente    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".cliente ALTER COLUMN cod_cliente SET DEFAULT nextval('"SEGURO_G29987471".cliente_cod_cliente_seq'::regclass);
 N   ALTER TABLE "SEGURO_G29987471".cliente ALTER COLUMN cod_cliente DROP DEFAULT;
       SEGURO_G29987471          root    false    232    231            �           2604    26871    contrato nro_contrato    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".contrato ALTER COLUMN nro_contrato SET DEFAULT nextval('"SEGURO_G29987471".contrato_nro_contrato_seq'::regclass);
 P   ALTER TABLE "SEGURO_G29987471".contrato ALTER COLUMN nro_contrato DROP DEFAULT;
       SEGURO_G29987471          root    false    234    233            �           2604    26872 +   evaluacion_servicio cod_evaluacion_servicio    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".evaluacion_servicio ALTER COLUMN cod_evaluacion_servicio SET DEFAULT nextval('"SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq'::regclass);
 f   ALTER TABLE "SEGURO_G29987471".evaluacion_servicio ALTER COLUMN cod_evaluacion_servicio DROP DEFAULT;
       SEGURO_G29987471          root    false    236    235            �           2604    26873    pais cod_pais    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".pais ALTER COLUMN cod_pais SET DEFAULT nextval('"SEGURO_G29987471".pais_cod_pais_seq'::regclass);
 H   ALTER TABLE "SEGURO_G29987471".pais ALTER COLUMN cod_pais DROP DEFAULT;
       SEGURO_G29987471          root    false    238    237            �           2604    26874    producto cod_producto    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".producto ALTER COLUMN cod_producto SET DEFAULT nextval('"SEGURO_G29987471".producto_cod_producto_seq'::regclass);
 P   ALTER TABLE "SEGURO_G29987471".producto ALTER COLUMN cod_producto DROP DEFAULT;
       SEGURO_G29987471          root    false    240    239            �           2604    26875    siniestro nro_siniestro    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".siniestro ALTER COLUMN nro_siniestro SET DEFAULT nextval('"SEGURO_G29987471".siniestro_nro_siniestro_seq'::regclass);
 R   ALTER TABLE "SEGURO_G29987471".siniestro ALTER COLUMN nro_siniestro DROP DEFAULT;
       SEGURO_G29987471          root    false    245    244            �           2604    26876    sucursal cod_sucursal    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".sucursal ALTER COLUMN cod_sucursal SET DEFAULT nextval('"SEGURO_G29987471".sucursal_cod_sucursal_seq'::regclass);
 P   ALTER TABLE "SEGURO_G29987471".sucursal ALTER COLUMN cod_sucursal DROP DEFAULT;
       SEGURO_G29987471          root    false    247    246            �           2604    26877    tipo_producto cod_tipo_producto    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".tipo_producto ALTER COLUMN cod_tipo_producto SET DEFAULT nextval('"SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq'::regclass);
 Z   ALTER TABLE "SEGURO_G29987471".tipo_producto ALTER COLUMN cod_tipo_producto DROP DEFAULT;
       SEGURO_G29987471          root    false    249    248            �          0    26764    dim_cliente 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".dim_cliente (sk_dim_cliente, cod_cliente, nb_cliente, ci_rif, telefono, direccion, sexo, email) FROM stdin;
    SEGURO_DW_G29987471          root    false    217   ?�       �          0    26767    dim_contrato 
   TABLE DATA           f   COPY "SEGURO_DW_G29987471".dim_contrato (sk_dim_contrato, nro_contrato, descrip_contrato) FROM stdin;
    SEGURO_DW_G29987471          root    false    218   \�       �          0    26770    dim_estado_contrato 
   TABLE DATA           p   COPY "SEGURO_DW_G29987471".dim_estado_contrato (sk_dim_estado_contrato, cod_estado, descrip_estado) FROM stdin;
    SEGURO_DW_G29987471          root    false    219   y�       �          0    26773    dim_evaluacion_servicio 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".dim_evaluacion_servicio (sk_dim_evaluacion_servicio, cod_evaluacion_servicio, nb_descrip) FROM stdin;
    SEGURO_DW_G29987471          root    false    220   ��       �          0    26776    dim_producto 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".dim_producto (sk_dim_producto, cod_producto, nb_producto, descrip_producto, nb_tipo_producto, calificacion, cod_tipo_producto) FROM stdin;
    SEGURO_DW_G29987471          root    false    221   ��       �          0    26779    dim_siniestro 
   TABLE DATA           j   COPY "SEGURO_DW_G29987471".dim_siniestro (sk_dim_siniestro, nro_siniestro, descrip_siniestro) FROM stdin;
    SEGURO_DW_G29987471          root    false    222   ��       �          0    26782    dim_sucursal 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".dim_sucursal (sk_dim_sucursal, cod_sucursal, nb_sucursal, cod_ciudad, nb_ciudad, cod_pais, nb_pais) FROM stdin;
    SEGURO_DW_G29987471          root    false    223   ��       �          0    26785 
   dim_tiempo 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".dim_tiempo (sk_dim_tiempo, cod_annio, cod_mes, cod_dia_annio, cod_dia_mes, cod_dia_semana, cod_semana, desc_dia_semana, desc_dia_semana_corta, desc_mes, desc_mes_corta, desc_trimestre, desc_semestre, fecha_completa) FROM stdin;
    SEGURO_DW_G29987471          root    false    224   
�       �          0    26788    fact_evaluacion_servicio 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".fact_evaluacion_servicio (sk_dim_cliente, sk_dim_producto, sk_dim_evaluacion_servicio, cantidad, recomienda_amigo) FROM stdin;
    SEGURO_DW_G29987471          root    false    225   '�       �          0    26791 
   fact_metas 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".fact_metas (sk_dim_fecha_inicio_meta, sk_dim_fecha_fin_meta, sk_dim_cliente, sk_dim_producto, sk_dim_contrato, monto_meta_ingreso, meta_renovacion, meta_asegurados) FROM stdin;
    SEGURO_DW_G29987471          root    false    226   D�       �          0    26794    fact_registro_contrato 
   TABLE DATA             COPY "SEGURO_DW_G29987471".fact_registro_contrato (sk_dim_tiempo_fecha_inicio, sk_dim_tiempo_fecha_fin, sk_dim_cliente, sk_dim_contrato, sk_dim_producto, sk_dim_estado_contrato, monto, cantidad, cantidad_cliente, cantidad_producto, cantidad_contrato) FROM stdin;
    SEGURO_DW_G29987471          root    false    227   a�       �          0    26797    fact_registro_siniestro 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".fact_registro_siniestro (sk_fecha_siniestro, sk_fecha_respuesta, sk_dim_cliente, sk_dim_contrato, sk_dim_sucursal, sk_dim_producto, sk_dim_siniestro, cantidad, monto_reconocido, monto_solicitado, id_rechazo) FROM stdin;
    SEGURO_DW_G29987471          root    false    228   ~�       �          0    26800    ciudad 
   TABLE DATA           M   COPY "SEGURO_G29987471".ciudad (cod_ciudad, cod_pais, nb_ciudad) FROM stdin;
    SEGURO_G29987471          root    false    229   ��       �          0    26806    cliente 
   TABLE DATA           ~   COPY "SEGURO_G29987471".cliente (cod_cliente, cedula, telefono, cod_sucursal, nb_cliente, sexo, email, direccion) FROM stdin;
    SEGURO_G29987471          root    false    231   [�       �          0    26812    contrato 
   TABLE DATA           N   COPY "SEGURO_G29987471".contrato (nro_contrato, descrip_contrato) FROM stdin;
    SEGURO_G29987471          root    false    233   ��      �          0    26818    evaluacion_servicio 
   TABLE DATA           _   COPY "SEGURO_G29987471".evaluacion_servicio (cod_evaluacion_servicio, descripcion) FROM stdin;
    SEGURO_G29987471          root    false    235   &�      �          0    26824    pais 
   TABLE DATA           =   COPY "SEGURO_G29987471".pais (cod_pais, nb_pais) FROM stdin;
    SEGURO_G29987471          root    false    237   o�      �          0    26830    producto 
   TABLE DATA           w   COPY "SEGURO_G29987471".producto (cod_producto, cod_tipo_producto, nb_producto, descripcion, calificacion) FROM stdin;
    SEGURO_G29987471          root    false    239   ݴ      �          0    26836 
   recomienda 
   TABLE DATA           v   COPY "SEGURO_G29987471".recomienda (cod_cliente, cod_evaluacion_servicio, cod_producto, recomienda_amigo) FROM stdin;
    SEGURO_G29987471          root    false    241   ��      �          0    26841    registro_contrato 
   TABLE DATA           �   COPY "SEGURO_G29987471".registro_contrato (nro_contrato, cod_producto, cod_cliente, fecha_inicio, fecha_fin, estado_contrato, monto) FROM stdin;
    SEGURO_G29987471          root    false    242   ��      �          0    26846    registro_siniestro 
   TABLE DATA           �   COPY "SEGURO_G29987471".registro_siniestro (nro_siniestro, nro_contrato, fecha_siniestro, fecha_respuesta, id_rechazo, monto_reconocido, monto_solicitado) FROM stdin;
    SEGURO_G29987471          root    false    243   �=      �          0    26851 	   siniestro 
   TABLE DATA           U   COPY "SEGURO_G29987471".siniestro (nro_siniestro, descripcion_siniestro) FROM stdin;
    SEGURO_G29987471          root    false    244   �      �          0    26857    sucursal 
   TABLE DATA           U   COPY "SEGURO_G29987471".sucursal (cod_sucursal, cod_ciudad, nb_sucursal) FROM stdin;
    SEGURO_G29987471          root    false    246   ��      �          0    26863    tipo_producto 
   TABLE DATA           X   COPY "SEGURO_G29987471".tipo_producto (cod_tipo_producto, nb_tipo_producto) FROM stdin;
    SEGURO_G29987471          root    false    248   ��                 0    0    ciudad_cod_ciudad_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"SEGURO_G29987471".ciudad_cod_ciudad_seq', 1, false);
          SEGURO_G29987471          root    false    230                       0    0    cliente_cod_cliente_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"SEGURO_G29987471".cliente_cod_cliente_seq', 1, false);
          SEGURO_G29987471          root    false    232                       0    0    contrato_nro_contrato_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"SEGURO_G29987471".contrato_nro_contrato_seq', 1, false);
          SEGURO_G29987471          root    false    234                       0    0 /   evaluacion_servicio_cod_evaluacion_servicio_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('"SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq', 1, false);
          SEGURO_G29987471          root    false    236                       0    0    pais_cod_pais_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"SEGURO_G29987471".pais_cod_pais_seq', 1, false);
          SEGURO_G29987471          root    false    238                       0    0    producto_cod_producto_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"SEGURO_G29987471".producto_cod_producto_seq', 1, false);
          SEGURO_G29987471          root    false    240            	           0    0    siniestro_nro_siniestro_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"SEGURO_G29987471".siniestro_nro_siniestro_seq', 1, false);
          SEGURO_G29987471          root    false    245            
           0    0    sucursal_cod_sucursal_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"SEGURO_G29987471".sucursal_cod_sucursal_seq', 1, false);
          SEGURO_G29987471          root    false    247                       0    0 #   tipo_producto_cod_tipo_producto_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('"SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq', 1, false);
          SEGURO_G29987471          root    false    249            �           2606    26879    dim_cliente dim_cliente_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_cliente
    ADD CONSTRAINT dim_cliente_pkey PRIMARY KEY (sk_dim_cliente);
 U   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_cliente DROP CONSTRAINT dim_cliente_pkey;
       SEGURO_DW_G29987471            root    false    217            �           2606    26881    dim_contrato dim_contrato_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_contrato
    ADD CONSTRAINT dim_contrato_pkey PRIMARY KEY (sk_dim_contrato);
 W   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_contrato DROP CONSTRAINT dim_contrato_pkey;
       SEGURO_DW_G29987471            root    false    218            �           2606    26883 ,   dim_estado_contrato dim_estado_contrato_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_estado_contrato
    ADD CONSTRAINT dim_estado_contrato_pkey PRIMARY KEY (sk_dim_estado_contrato);
 e   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_estado_contrato DROP CONSTRAINT dim_estado_contrato_pkey;
       SEGURO_DW_G29987471            root    false    219            �           2606    26885 4   dim_evaluacion_servicio dim_evaluacion_servicio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_evaluacion_servicio
    ADD CONSTRAINT dim_evaluacion_servicio_pkey PRIMARY KEY (sk_dim_evaluacion_servicio);
 m   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_evaluacion_servicio DROP CONSTRAINT dim_evaluacion_servicio_pkey;
       SEGURO_DW_G29987471            root    false    220            �           2606    26887    dim_producto dim_producto_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_producto
    ADD CONSTRAINT dim_producto_pkey PRIMARY KEY (sk_dim_producto);
 W   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_producto DROP CONSTRAINT dim_producto_pkey;
       SEGURO_DW_G29987471            root    false    221            �           2606    26889     dim_siniestro dim_siniestro_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_siniestro
    ADD CONSTRAINT dim_siniestro_pkey PRIMARY KEY (sk_dim_siniestro);
 Y   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_siniestro DROP CONSTRAINT dim_siniestro_pkey;
       SEGURO_DW_G29987471            root    false    222            �           2606    26891    dim_sucursal dim_sucursal_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_sucursal
    ADD CONSTRAINT dim_sucursal_pkey PRIMARY KEY (sk_dim_sucursal);
 W   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_sucursal DROP CONSTRAINT dim_sucursal_pkey;
       SEGURO_DW_G29987471            root    false    223                       2606    26893    dim_tiempo dim_tiempo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_tiempo
    ADD CONSTRAINT dim_tiempo_pkey PRIMARY KEY (sk_dim_tiempo);
 S   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_tiempo DROP CONSTRAINT dim_tiempo_pkey;
       SEGURO_DW_G29987471            root    false    224                       2606    26895 6   fact_evaluacion_servicio fact_evaluacion_servicio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio
    ADD CONSTRAINT fact_evaluacion_servicio_pkey PRIMARY KEY (sk_dim_cliente, sk_dim_producto, sk_dim_evaluacion_servicio);
 o   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio DROP CONSTRAINT fact_evaluacion_servicio_pkey;
       SEGURO_DW_G29987471            root    false    225    225    225                       2606    26897    fact_metas fact_metas_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_pkey PRIMARY KEY (sk_dim_fecha_inicio_meta, sk_dim_fecha_fin_meta, sk_dim_cliente, sk_dim_producto, sk_dim_contrato);
 S   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_pkey;
       SEGURO_DW_G29987471            root    false    226    226    226    226    226                       2606    26899 2   fact_registro_contrato fact_registro_contrato_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_pkey PRIMARY KEY (sk_dim_tiempo_fecha_inicio, sk_dim_tiempo_fecha_fin, sk_dim_cliente, sk_dim_contrato, sk_dim_producto, sk_dim_estado_contrato);
 k   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_pkey;
       SEGURO_DW_G29987471            root    false    227    227    227    227    227    227            	           2606    26901 4   fact_registro_siniestro fact_registro_siniestro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_pkey PRIMARY KEY (sk_fecha_siniestro, sk_fecha_respuesta, sk_dim_cliente, sk_dim_contrato, sk_dim_sucursal, sk_dim_producto, sk_dim_siniestro);
 m   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_pkey;
       SEGURO_DW_G29987471            root    false    228    228    228    228    228    228    228                       2606    26903 2   evaluacion_servicio PK_1983dd201c57098d7e9f73ad2cf 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".evaluacion_servicio
    ADD CONSTRAINT "PK_1983dd201c57098d7e9f73ad2cf" PRIMARY KEY (cod_evaluacion_servicio);
 j   ALTER TABLE ONLY "SEGURO_G29987471".evaluacion_servicio DROP CONSTRAINT "PK_1983dd201c57098d7e9f73ad2cf";
       SEGURO_G29987471            root    false    235                       2606    26905 &   cliente PK_30e34515d653a77773ce9acad72 
   CONSTRAINT     {   ALTER TABLE ONLY "SEGURO_G29987471".cliente
    ADD CONSTRAINT "PK_30e34515d653a77773ce9acad72" PRIMARY KEY (cod_cliente);
 ^   ALTER TABLE ONLY "SEGURO_G29987471".cliente DROP CONSTRAINT "PK_30e34515d653a77773ce9acad72";
       SEGURO_G29987471            root    false    231                       2606    26907 #   pais PK_38afe25b3fbd774c49f9345be8c 
   CONSTRAINT     u   ALTER TABLE ONLY "SEGURO_G29987471".pais
    ADD CONSTRAINT "PK_38afe25b3fbd774c49f9345be8c" PRIMARY KEY (cod_pais);
 [   ALTER TABLE ONLY "SEGURO_G29987471".pais DROP CONSTRAINT "PK_38afe25b3fbd774c49f9345be8c";
       SEGURO_G29987471            root    false    237                       2606    26909 )   recomienda PK_62d6a750d165b4b5d00c35a7c60 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".recomienda
    ADD CONSTRAINT "PK_62d6a750d165b4b5d00c35a7c60" PRIMARY KEY (cod_cliente, cod_evaluacion_servicio, cod_producto);
 a   ALTER TABLE ONLY "SEGURO_G29987471".recomienda DROP CONSTRAINT "PK_62d6a750d165b4b5d00c35a7c60";
       SEGURO_G29987471            root    false    241    241    241                       2606    26911 '   sucursal PK_72da96b56c6e7d2e50ee02e5981 
   CONSTRAINT     }   ALTER TABLE ONLY "SEGURO_G29987471".sucursal
    ADD CONSTRAINT "PK_72da96b56c6e7d2e50ee02e5981" PRIMARY KEY (cod_sucursal);
 _   ALTER TABLE ONLY "SEGURO_G29987471".sucursal DROP CONSTRAINT "PK_72da96b56c6e7d2e50ee02e5981";
       SEGURO_G29987471            root    false    246                       2606    26913 (   siniestro PK_795558fe3169fa8c19102418043 
   CONSTRAINT        ALTER TABLE ONLY "SEGURO_G29987471".siniestro
    ADD CONSTRAINT "PK_795558fe3169fa8c19102418043" PRIMARY KEY (nro_siniestro);
 `   ALTER TABLE ONLY "SEGURO_G29987471".siniestro DROP CONSTRAINT "PK_795558fe3169fa8c19102418043";
       SEGURO_G29987471            root    false    244            !           2606    26915 ,   tipo_producto PK_81ef1a237a02f68c92750cdbaf2 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".tipo_producto
    ADD CONSTRAINT "PK_81ef1a237a02f68c92750cdbaf2" PRIMARY KEY (cod_tipo_producto);
 d   ALTER TABLE ONLY "SEGURO_G29987471".tipo_producto DROP CONSTRAINT "PK_81ef1a237a02f68c92750cdbaf2";
       SEGURO_G29987471            root    false    248                       2606    26917 %   ciudad PK_8596bb6c514c7838b26c7b148ef 
   CONSTRAINT     y   ALTER TABLE ONLY "SEGURO_G29987471".ciudad
    ADD CONSTRAINT "PK_8596bb6c514c7838b26c7b148ef" PRIMARY KEY (cod_ciudad);
 ]   ALTER TABLE ONLY "SEGURO_G29987471".ciudad DROP CONSTRAINT "PK_8596bb6c514c7838b26c7b148ef";
       SEGURO_G29987471            root    false    229                       2606    26919 '   producto PK_b93ddc4e823830d01ece33a7f64 
   CONSTRAINT     }   ALTER TABLE ONLY "SEGURO_G29987471".producto
    ADD CONSTRAINT "PK_b93ddc4e823830d01ece33a7f64" PRIMARY KEY (cod_producto);
 _   ALTER TABLE ONLY "SEGURO_G29987471".producto DROP CONSTRAINT "PK_b93ddc4e823830d01ece33a7f64";
       SEGURO_G29987471            root    false    239                       2606    26921 1   registro_siniestro PK_d274566e39a2b126dc54b734e96 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro
    ADD CONSTRAINT "PK_d274566e39a2b126dc54b734e96" PRIMARY KEY (nro_siniestro, nro_contrato, fecha_siniestro);
 i   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro DROP CONSTRAINT "PK_d274566e39a2b126dc54b734e96";
       SEGURO_G29987471            root    false    243    243    243                       2606    26923 '   contrato PK_d854784824a3f84781cfa961d72 
   CONSTRAINT     }   ALTER TABLE ONLY "SEGURO_G29987471".contrato
    ADD CONSTRAINT "PK_d854784824a3f84781cfa961d72" PRIMARY KEY (nro_contrato);
 _   ALTER TABLE ONLY "SEGURO_G29987471".contrato DROP CONSTRAINT "PK_d854784824a3f84781cfa961d72";
       SEGURO_G29987471            root    false    233                       2606    26925 0   registro_contrato PK_e6962570b6f34851c25d1d55f3c 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato
    ADD CONSTRAINT "PK_e6962570b6f34851c25d1d55f3c" PRIMARY KEY (nro_contrato, cod_producto, cod_cliente);
 h   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato DROP CONSTRAINT "PK_e6962570b6f34851c25d1d55f3c";
       SEGURO_G29987471            root    false    242    242    242            "           2606    26926 E   fact_evaluacion_servicio fact_evaluacion_servicio_sk_dim_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio
    ADD CONSTRAINT fact_evaluacion_servicio_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente) REFERENCES "SEGURO_DW_G29987471".dim_cliente(sk_dim_cliente);
 ~   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio DROP CONSTRAINT fact_evaluacion_servicio_sk_dim_cliente_fkey;
       SEGURO_DW_G29987471          root    false    3315    225    217            #           2606    26931 Q   fact_evaluacion_servicio fact_evaluacion_servicio_sk_dim_evaluacion_servicio_fkey    FK CONSTRAINT       ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio
    ADD CONSTRAINT fact_evaluacion_servicio_sk_dim_evaluacion_servicio_fkey FOREIGN KEY (sk_dim_evaluacion_servicio) REFERENCES "SEGURO_DW_G29987471".dim_evaluacion_servicio(sk_dim_evaluacion_servicio);
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio DROP CONSTRAINT fact_evaluacion_servicio_sk_dim_evaluacion_servicio_fkey;
       SEGURO_DW_G29987471          root    false    3321    220    225            $           2606    26936 F   fact_evaluacion_servicio fact_evaluacion_servicio_sk_dim_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio
    ADD CONSTRAINT fact_evaluacion_servicio_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29987471".dim_producto(sk_dim_producto);
    ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio DROP CONSTRAINT fact_evaluacion_servicio_sk_dim_producto_fkey;
       SEGURO_DW_G29987471          root    false    225    3323    221            %           2606    26941 )   fact_metas fact_metas_sk_dim_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente) REFERENCES "SEGURO_DW_G29987471".dim_cliente(sk_dim_cliente);
 b   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_sk_dim_cliente_fkey;
       SEGURO_DW_G29987471          root    false    217    3315    226            &           2606    26946 *   fact_metas fact_metas_sk_dim_contrato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_sk_dim_contrato_fkey FOREIGN KEY (sk_dim_contrato) REFERENCES "SEGURO_DW_G29987471".dim_contrato(sk_dim_contrato);
 c   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_sk_dim_contrato_fkey;
       SEGURO_DW_G29987471          root    false    218    3317    226            '           2606    26951 0   fact_metas fact_metas_sk_dim_fecha_fin_meta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_sk_dim_fecha_fin_meta_fkey FOREIGN KEY (sk_dim_fecha_fin_meta) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo);
 i   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_sk_dim_fecha_fin_meta_fkey;
       SEGURO_DW_G29987471          root    false    226    224    3329            (           2606    26956 3   fact_metas fact_metas_sk_dim_fecha_inicio_meta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_sk_dim_fecha_inicio_meta_fkey FOREIGN KEY (sk_dim_fecha_inicio_meta) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo);
 l   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_sk_dim_fecha_inicio_meta_fkey;
       SEGURO_DW_G29987471          root    false    3329    226    224            )           2606    26961 *   fact_metas fact_metas_sk_dim_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29987471".dim_producto(sk_dim_producto);
 c   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_sk_dim_producto_fkey;
       SEGURO_DW_G29987471          root    false    3323    221    226            *           2606    26966 A   fact_registro_contrato fact_registro_contrato_sk_dim_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente) REFERENCES "SEGURO_DW_G29987471".dim_cliente(sk_dim_cliente) NOT VALID;
 z   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_cliente_fkey;
       SEGURO_DW_G29987471          root    false    227    3315    217            +           2606    26971 B   fact_registro_contrato fact_registro_contrato_sk_dim_contrato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_contrato_fkey FOREIGN KEY (sk_dim_contrato) REFERENCES "SEGURO_DW_G29987471".dim_contrato(sk_dim_contrato) NOT VALID;
 {   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_contrato_fkey;
       SEGURO_DW_G29987471          root    false    218    227    3317            ,           2606    26976 I   fact_registro_contrato fact_registro_contrato_sk_dim_estado_contrato_fkey    FK CONSTRAINT       ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_estado_contrato_fkey FOREIGN KEY (sk_dim_estado_contrato) REFERENCES "SEGURO_DW_G29987471".dim_estado_contrato(sk_dim_estado_contrato) NOT VALID;
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_estado_contrato_fkey;
       SEGURO_DW_G29987471          root    false    227    219    3319            -           2606    26981 B   fact_registro_contrato fact_registro_contrato_sk_dim_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29987471".dim_producto(sk_dim_producto) NOT VALID;
 {   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_producto_fkey;
       SEGURO_DW_G29987471          root    false    3323    221    227            .           2606    26986 J   fact_registro_contrato fact_registro_contrato_sk_dim_tiempo_fecha_fin_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_tiempo_fecha_fin_fkey FOREIGN KEY (sk_dim_tiempo_fecha_fin) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo) NOT VALID;
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_tiempo_fecha_fin_fkey;
       SEGURO_DW_G29987471          root    false    227    224    3329            /           2606    26991 M   fact_registro_contrato fact_registro_contrato_sk_dim_tiempo_fecha_inicio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_tiempo_fecha_inicio_fkey FOREIGN KEY (sk_dim_tiempo_fecha_inicio) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo) NOT VALID;
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_tiempo_fecha_inicio_fkey;
       SEGURO_DW_G29987471          root    false    227    224    3329            0           2606    26996 C   fact_registro_siniestro fact_registro_siniestro_sk_dim_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente) REFERENCES "SEGURO_DW_G29987471".dim_cliente(sk_dim_cliente) NOT VALID;
 |   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_dim_cliente_fkey;
       SEGURO_DW_G29987471          root    false    217    228    3315            1           2606    27001 D   fact_registro_siniestro fact_registro_siniestro_sk_dim_contrato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_dim_contrato_fkey FOREIGN KEY (sk_dim_contrato) REFERENCES "SEGURO_DW_G29987471".dim_contrato(sk_dim_contrato) NOT VALID;
 }   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_dim_contrato_fkey;
       SEGURO_DW_G29987471          root    false    3317    228    218            2           2606    27006 D   fact_registro_siniestro fact_registro_siniestro_sk_dim_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29987471".dim_producto(sk_dim_producto) NOT VALID;
 }   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_dim_producto_fkey;
       SEGURO_DW_G29987471          root    false    221    3323    228            3           2606    27011 E   fact_registro_siniestro fact_registro_siniestro_sk_dim_siniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_dim_siniestro_fkey FOREIGN KEY (sk_dim_siniestro) REFERENCES "SEGURO_DW_G29987471".dim_siniestro(sk_dim_siniestro) NOT VALID;
 ~   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_dim_siniestro_fkey;
       SEGURO_DW_G29987471          root    false    228    3325    222            4           2606    27016 D   fact_registro_siniestro fact_registro_siniestro_sk_dim_sucursal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_dim_sucursal_fkey FOREIGN KEY (sk_dim_sucursal) REFERENCES "SEGURO_DW_G29987471".dim_sucursal(sk_dim_sucursal) NOT VALID;
 }   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_dim_sucursal_fkey;
       SEGURO_DW_G29987471          root    false    223    3327    228            5           2606    27021 G   fact_registro_siniestro fact_registro_siniestro_sk_fecha_respuesta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_fecha_respuesta_fkey FOREIGN KEY (sk_fecha_respuesta) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo) NOT VALID;
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_fecha_respuesta_fkey;
       SEGURO_DW_G29987471          root    false    3329    224    228            6           2606    27026 G   fact_registro_siniestro fact_registro_siniestro_sk_fecha_siniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_fecha_siniestro_fkey FOREIGN KEY (sk_fecha_siniestro) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo) NOT VALID;
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_fecha_siniestro_fkey;
       SEGURO_DW_G29987471          root    false    3329    228    224            @           2606    27031 1   registro_siniestro FK_077b08f646d39452c6792fa89d1    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro
    ADD CONSTRAINT "FK_077b08f646d39452c6792fa89d1" FOREIGN KEY (nro_siniestro) REFERENCES "SEGURO_G29987471".siniestro(nro_siniestro);
 i   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro DROP CONSTRAINT "FK_077b08f646d39452c6792fa89d1";
       SEGURO_G29987471          root    false    3357    243    244            8           2606    27036 &   cliente FK_57784698f4e7f7d5c9d55132b23    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".cliente
    ADD CONSTRAINT "FK_57784698f4e7f7d5c9d55132b23" FOREIGN KEY (cod_sucursal) REFERENCES "SEGURO_G29987471".sucursal(cod_sucursal);
 ^   ALTER TABLE ONLY "SEGURO_G29987471".cliente DROP CONSTRAINT "FK_57784698f4e7f7d5c9d55132b23";
       SEGURO_G29987471          root    false    3359    246    231            9           2606    27041 '   producto FK_5dca93947111ad9b576d903cf2a    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".producto
    ADD CONSTRAINT "FK_5dca93947111ad9b576d903cf2a" FOREIGN KEY (cod_tipo_producto) REFERENCES "SEGURO_G29987471".tipo_producto(cod_tipo_producto);
 _   ALTER TABLE ONLY "SEGURO_G29987471".producto DROP CONSTRAINT "FK_5dca93947111ad9b576d903cf2a";
       SEGURO_G29987471          root    false    248    3361    239            :           2606    27046 )   recomienda FK_778a85c79a63e0b71b58078b891    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".recomienda
    ADD CONSTRAINT "FK_778a85c79a63e0b71b58078b891" FOREIGN KEY (cod_producto) REFERENCES "SEGURO_G29987471".producto(cod_producto);
 a   ALTER TABLE ONLY "SEGURO_G29987471".recomienda DROP CONSTRAINT "FK_778a85c79a63e0b71b58078b891";
       SEGURO_G29987471          root    false    3349    239    241            =           2606    27051 0   registro_contrato FK_8a8b9c6216ddd54b902795b8560    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato
    ADD CONSTRAINT "FK_8a8b9c6216ddd54b902795b8560" FOREIGN KEY (cod_cliente) REFERENCES "SEGURO_G29987471".cliente(cod_cliente);
 h   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato DROP CONSTRAINT "FK_8a8b9c6216ddd54b902795b8560";
       SEGURO_G29987471          root    false    242    3341    231            B           2606    27056 '   sucursal FK_9fba729e0a51c28d8d09aac040e    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".sucursal
    ADD CONSTRAINT "FK_9fba729e0a51c28d8d09aac040e" FOREIGN KEY (cod_ciudad) REFERENCES "SEGURO_G29987471".ciudad(cod_ciudad);
 _   ALTER TABLE ONLY "SEGURO_G29987471".sucursal DROP CONSTRAINT "FK_9fba729e0a51c28d8d09aac040e";
       SEGURO_G29987471          root    false    246    3339    229            A           2606    27061 1   registro_siniestro FK_c7c9ea3b81491c83d9d6b534bea    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro
    ADD CONSTRAINT "FK_c7c9ea3b81491c83d9d6b534bea" FOREIGN KEY (nro_contrato) REFERENCES "SEGURO_G29987471".contrato(nro_contrato);
 i   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro DROP CONSTRAINT "FK_c7c9ea3b81491c83d9d6b534bea";
       SEGURO_G29987471          root    false    243    3343    233            >           2606    27066 0   registro_contrato FK_cea2c686c92d4d1fa8c1bbfbb36    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato
    ADD CONSTRAINT "FK_cea2c686c92d4d1fa8c1bbfbb36" FOREIGN KEY (nro_contrato) REFERENCES "SEGURO_G29987471".contrato(nro_contrato);
 h   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato DROP CONSTRAINT "FK_cea2c686c92d4d1fa8c1bbfbb36";
       SEGURO_G29987471          root    false    3343    233    242            ?           2606    27071 0   registro_contrato FK_d5db285938e57149f41ae7fe481    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato
    ADD CONSTRAINT "FK_d5db285938e57149f41ae7fe481" FOREIGN KEY (cod_producto) REFERENCES "SEGURO_G29987471".producto(cod_producto);
 h   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato DROP CONSTRAINT "FK_d5db285938e57149f41ae7fe481";
       SEGURO_G29987471          root    false    3349    242    239            ;           2606    27076 )   recomienda FK_d697808af3b479e57c725f7cc3c    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".recomienda
    ADD CONSTRAINT "FK_d697808af3b479e57c725f7cc3c" FOREIGN KEY (cod_evaluacion_servicio) REFERENCES "SEGURO_G29987471".evaluacion_servicio(cod_evaluacion_servicio);
 a   ALTER TABLE ONLY "SEGURO_G29987471".recomienda DROP CONSTRAINT "FK_d697808af3b479e57c725f7cc3c";
       SEGURO_G29987471          root    false    241    3345    235            7           2606    27081 %   ciudad FK_e22978e6591e35a396bd90a9aab    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".ciudad
    ADD CONSTRAINT "FK_e22978e6591e35a396bd90a9aab" FOREIGN KEY (cod_pais) REFERENCES "SEGURO_G29987471".pais(cod_pais);
 ]   ALTER TABLE ONLY "SEGURO_G29987471".ciudad DROP CONSTRAINT "FK_e22978e6591e35a396bd90a9aab";
       SEGURO_G29987471          root    false    229    3347    237            <           2606    27086 )   recomienda FK_fc6baefda4d2a86427c47a2508c    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".recomienda
    ADD CONSTRAINT "FK_fc6baefda4d2a86427c47a2508c" FOREIGN KEY (cod_cliente) REFERENCES "SEGURO_G29987471".cliente(cod_cliente);
 a   ALTER TABLE ONLY "SEGURO_G29987471".recomienda DROP CONSTRAINT "FK_fc6baefda4d2a86427c47a2508c";
       SEGURO_G29987471          root    false    241    231    3341            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�M�=�@��z����|���ؘ��X�<acp�,��<�sJ�����S��+;����r��	\�m،�#$����n��sm�u�!��$�J�`�2���"~� >PE�u�N��G��'�� ��jz#�ev.���nk�����^®�=�^�&v�E?#L3��;f�c<�      �      x�|�ɚ�H�-�&����Џ��Rhʔ��V�fv�IA�	�b�M/���#ԋ�瘃$"��_g��5�>�3;f.�Ș4���.B�7�
S�_���ŗ|���̓}����n���ś���}���:[��}U���m޶���0�U�֔}������}=4]���v΄�˿$YD���c�_����e�t���?OO�����0��Ќ���|�i&:t��C�E�x��|�+|��(�?�o�U?�aݽ�M��u��׻�m�e��CmLd͋q�"J����O��9���v2m��=}7Q��O��ʼ�?��_��k�|���PGμ��Y�v�[���_�ݕ�����������}w�����������$�QI���,g���-��c=t�;*���z��՟wo�˿"��+x�b/�C��5�%����o������^=���1�����堷}w��4��]�q*�㺅��M|ȇgæ���_�?�ww?�����u�!>�}����KV<}1:ΞZ�n����Z���|��~g���0�E�b=�!_:�0IS�b��h��l6��_�!o���x��/����?�?�F�w8s�O�X%�{1`��`q��������+��淿?���\0��s�#��5鋱��Ù��7���x�������ǟ&�C}�1�;N����,G:y9i���-?�D|�����]��������S����a�w�+K�*�Z�I�r�4.����|-�k�wc�~�ߎ?�Z[��y�0+�$7ㅉY��Fǁ�X�8]��i�)xS�kL��VLr�����^U�������G�b�h�)i�n���6�I�a��I`��n�a�����w�hY�eES��:?ԏ�If{wl�i.YF�X�oscL�6i������wU�~W��X�0b=z1��:�y�������h���o�Q�&M�ha9�0	"(M��?�����c�����x�/&ٮ�r�M޽Z���n���K|X�қDݤ�3�� R\G�����q�.x��s<�DR��寺���������-#-a_�;�c�Ab�T[�����Z�ҎtV�(�~͑^�A�%�'� �`j��F�xj�͈�H�������H����d�	��Ӥ��:Z�&*����2�H\���j�x�>o�U�V�XևC�W�$��a�k�o���x�]��ㅉ��$�?�,��0�8���ś��q�G(���},��f���U�����VK����lebt���ޓO�@cIKUǱ�ow�.[��Ge>2Qt��۾����,]t�c�K���.�
V
}]��|�*�����l�<������ULp����"��1�M��Ba$Aǁ��־͇���7Ǫ�b���Pd�C�s�?7��v�&��G� �ku���H0&O���#gs��k7^,��x|UWG?���%����&u	��6����X�oG�ç#���6l�Xe�|�丶��j�%���&��\B�(|^(�b߇#�6�iw=��a'R�0V[��_����en,@���%�J��0���u��C�qŸ��H+(���U?��$]b6��7�T[��B���'�m]����I�I^g���oʫ&��0^b�`ިJTDU�M�q�[�*�v��8!~��N�&�O���ͪ%v-�EqWm���60�i�h���.<0��31��dE�TG���rv�$���|#N*�P��A�ZG����`���f݊>*E�ϊ��%;�tU��lp�n,V.q�6	bk�(���C�Z��[�rC��I�f%L+J�<EY6��0�5��p.H�Ե����4�6 ��[���*�oמ�����a8h������5v �҅<1�i�o����t��w8���ę��5�/v{yc��$gp�������{���ЏP�5>���" t�c_5�gc��7ix�S��qϰ: մ^o�my
>5;�~�Vm��g��U���U�2q�����U�pN��@�EU/ ��N�~\��+���Ϻ�._?7�
�X���r�$��� �D�6�\��}�6<���Ha�m}x��f>�]��"eh�����{U`B bܯ/MW���}{z�'e���!��S"��i0�T�B�����E�58���~�V+|kٯ�MGDY��<f
ji�������RH�s�,N��FPK6�&O�o�<��7���R����E=�_��C�ٛ�w�D<%i C��:��������/a��&���y8�HS��J��,B�p�4���n s�u��+1z�!��`��~�4���!�Q��^��5#�v�λ� oĘSx���yR���,Q��q��b��(4&J��KN������)��6��~�o��R�o�2�pXv2��D|�o� DŰєNY]|uܞ7*tKU[��JA��?��������>�5[���~<e�� ��A�e�ZH��^V�b��rn�is��/���ى�٦�q�f� ���B8j78
��-hK�o������|[�L��(k�U?����{E�
8M-5��h�Fߞ*��0�ʤj��]S���
��8k�C����v:/5�? L�o܉�ҡ ��aS�m�pݟ�������#J�U�����Qz]:�{NS%��8���|��R(�n�����~��-,��.@AhD�������4+�sC�r���N-nT	�����x1��c]t}5"�.�>P�7I�D�9�A�%8�_������0�	�
�ɚ�������*<�	-.�r&H���.>��!��cެ���٬� ����q��M�p���uby�,�F�1��uU�V-��f���w?��q�԰0�0� �`��*7\	G������;P\~E.qH�;�i�Kx�{�pd�D���!�E�j8�O���|:�����(?;�׭�v�à`jp�"+�($@8��H&��T��W�IW��n<u��0SMi���� tt)�D����PV�>lN��j]�~����#�^}�����p���eJc��+`l�������S�U6�3�fvz��.�l��fJ���½\�|Äǘ��Z����i@�Y.����;�#]8\X@�h�@���.���n����j((D�l�W5�A9�g��%��ǲ���K���j���� v��݋���잻�Zi ~1P�F�UM``,.�]~�p��\X�FLκ���6���C�n��j��<qN� K�(��	��N����G���n��є�_Q�˱�ݽ:��PP&�����R
�����f�?i��7����!��9T��l����2�8�6�B�T�9�ҟs)n����^������z͵���h;�ٲ%�#���*�s���s�cC*g\��TP��Hhm�ыQ��y�E�sxF;N�N�([x(�Q���
�-?��0n�Fю�/p�/F;�r�<�3\G�&M0 5� ���BPcȝ��)�\����a�Ũ�Ɓ���U�Zz�T�Y-���Þ��Ϧ�^���[Tw��9^�����W�iW��Տ���i���<8'�>H<F��~����+o'9�g�;"e90�)>�5P�!��MB�� �!�E��S�o@�!�/�mu���6���8���	]4II�������}v���Ϧ��|)?�����B����jZ�����^���5t���K]R�|����z~Y��I��l]�esh��6�.aV�)����[� �3P)���J���#�;̱�{1:`=��Y�Cyq�Lq[�-��E6b8O����a���y�-V��c���pfJ,T�2�Q@�8�p�]j�����3l�]7�M�g݌t6���,��%Wk��Lٕ�RSA & ńf�`3R�J8�}|�}�q�R��r7��YB=��R���b8�:�	�S��.^�F��Z5#qG>z1���y#Q�W�?��FK�^�7�WM�,�kz�����5_�-/��^��C_�E� ^�$�U� �
~2�z�w�Ϟ��-���S���)�x�Y5e���kw�    8 f�Q)�(cFf��`���;l!�>��ǐa�E�����zkT��8)}H��ԇ�t �J9�.o���1|)_È%�+s��(+r  ���ϡ��;+	�-����@]���m%���)�'�C�
�"����+�aR��gne��LqKR�Xm
 ��9tX�d�)?0���Ӷ�#�'3�0�,](���ڐ@� �W~��ǎa������{2ɱz���C��KG��G����?�ӒӋ�SE	�3�p��^�u����c�C���l��Љ��sp�i�4L@ҟ��f@��P���#�c��/o���@�!�J��D)�	-��k���,�5}�s�i��q/�^��f����n���L�K'�'鴊eK4,*�&�,�������0��Xm}���]6Qj����$��@�����XE��4��_��������|�w�.�q7�����7��H�V�©Y���'9�3U��A��ɖ`�,�7���;�:�u�JK���o����{��Y��!���"Q �	�7U3�<1i�طD��Ȼ���@�t���u��Rn�B�h5�vG*�ݘ0�`|�Ώ�k� "KpWG�]�^��lC�}��%��Qȸ!� 
�����]� 9��	���j��Պ��x��/&yv�1A�d$�F��X%7�����ys���ڶ+PS�W�s9S�8�1n6�AY�|����87>|�$�a�'`2��#���?Yr(,��o��bH��ƾ@9��x� �9.�%l��b�9�&�z� �"�#l�q�aX �HC_H�����y��.��ɀ�6�B6�@���]�9��2 �Ns�Hrk��pD�?�j`�n�?�{h�������� ���`q�RM��h����4�L���2�RNr��}��T	&�J:,ƥ����LZN%������'���U ���Y)D����Be�X)�W"�QQ��E�G�1��>���}XMr���04��p5)��y?���0輸;b�x�n9��;���z��.۔��{�����X?��Q��nՀ	F��7XS��;�_�Tޔn��5��D����]S:}��1 1]z������UL`aZ�s�d��x�ǵ�7����,��+�4����d��xh�~�ٖ�|��$�e�c%N���t9�;8���qU�,���_�9��ݦ9'(�����o�(�S�QJ�)����VL�����;��x¨�@]M5�~��?��|.����)��/X cxK�a �j�������D�پ�-őp_���dS�%�+����999�/��qU�}.+/�Ǭ=��3��4]��5I�l�gqVtL]ý�%�v�����oS��C�黼�W$��L)����h����Z'N4tρ�D\�����U��賓��!~�
o �kLh:�
�:�o��\l6�EН��T_����0օ���6�����}�b�&|�uL�C�b�	�R��D�|�K ���x@���S]	�30�=���5��;k��ٷ�z�[d^@��z.^�Kr�mv����)��ݫ���x�%]�����Qao"�xND�Sp��j�F��� b����g��%,�7�ˤ�c�y�i�<�������֋I���?ԧ]�m��"bp��ʋ�SnsD� G�p���χ6?��G��ض���$��&�����
"l ��;=(aؔg$�y����[�?zQ�^L�gQ��Bn���	��8r�*��_v0�X0�V0�c��W�Or���²�K�+��5l��#�0�zJ��mة�~���;Gfw�IN���������e���p��\Ѵb�8�rÿ��<�mq��]-q������p\P([-J�0��X舻C��oM	�"�ouU��DJl�kװ���O��p�S:V��S���l���1�ؚJ"M�0DL�lWWM�:_��Ul��aǞC������=MST��;}�V ��)qٱ�h˫b�_ݚ���@jN�n%̃1Pnq��(��z�)�-�L�ǿwsIb�����I�2�q@�$���p̰�;��$=p���WRd���K�gsd�/e��2hb��� �G�6�[������၏�+��)1�X^CX�J1��|�_c|_�c��q�u��0���<�>���MrRe�gޮM"h��`���ѱ��t�s06��>�yl�����$	h���Ϊ�0�7��,P�b��)���cU§����I���i���B5Nx;�X0-r��^-]0G;�8�(Q�_���n�'���B�>d�#Ds	E����!-��1F�:��>CM���d3�ygХ�d�p""�g�0��UۈA�/G\��j�����n�=��,&Kz�0�	�5� ���c�,A��F8´�]N����_��>;��W��@jD���N$Y�@��1�Gw��x�z��d�;�'�a��`�5q
�m�b|@"N%D�k�ò%�@z� ����n�vP�ppTh��i	����Q���C/y��H�/��3R��(�Sڽ�X��c(B8Ί��cX"8]�H+ZRH��Q�h>"튓�[(M����fF�.n��w�>����'��v��>��0�����!e�����ʑ�`C^;��N2�u��ÄBH�Y���ͼ%d���\"!h�B���mNf�|���j����>o��NB3~]�F$�Ō���4���������(n�f�?�!k��ֳ���@�@J�Q�D� ��I�0HC�LS�~�W���.��ϒ>J���0DcO3���#Y.a�!b���_p��]QH�S�S ���$��ڈ�EmpM%�>ԏp
k���(Rr����a�Ӵ�bM�'�,���ʄՀW��C���Ù���G�ۜB�0#~���5��8}�"h��[C%po�"\|�q����r����,$΋|��"��P7�v�4�W������� -�c�3�Hq�O"%?D{�^h/�9 A����9	V���,��It��%�SHN/��£h�<�)YR�e� �mq�nI���7�G��~�� ��R�r�����gV�	��Y�$B�� �t�N-�]�8a]m�T����]}�ʲ�IJ�4�f¬a�0Kk������� ��x��0�&>�U�5���o1����Y�B�d�S3X"����*l�$R�K���Y"�º�p�}3K�_2Ň㩅��߇|Z�r-�J����!㑦fV�@b��T�H(k���}�ش�	*��qX7��)DR*p���tuv�0�N..��\'�8�p�൐��I����"v]�( �j�V'%���dp#�3�A�k���'�x��[��e��t��Em�����"��Q�X�~�Ѱ��S{��� �8f��$+��w���4!�V��3��B�i��0��{�Z5�o�W?��./��_�h{�����<+)�D�#X<`�$P�"��T7A��0ɼnד��W�%n�P�3�ei��$��'�͓$���ޫoq3���Rz�'
*�%��,�b����Z�0���T��X�m�v�ܩW"�"�u>��v���J�q��*4��%z�x����9xR��EUf�]w�t4���KB�/MJ�9�n1����y��Ԥݬ��C1ɪ�v�V2�	3@	�>I!F�&�0!YTR�����تjT-ZuM�FKHk ��1�@��c�b4O��+׬���>�"�Ze����3OL�Be�c�@茹�	�4�Tǒv^HD�&J��d@U�Z_Pg����`PLLR����ZZcE;�G��|ꇮ?�5�����Cm����z��/�KL a���%��l��?���_�'<?�ERMV���!���h�-M����`�4������.��?���n�
���r ���+R���	2s��H�p��hr�B����M/�=�@kڷ�Ֆ܁�����$fdNK����������0G��6��fͅ�QN����nV�J�f�b�;�Jx�F �t�ca��t    �/_mU켨vg��k�j?e��(ԄYP�x �D��p_���]�)��d��?���\�I(Š�&i<Hx�ȩ�$�2�7����K,w�̣��M`/IJ�	Of2p��<�>6�0�j/��?KXGf6��8T*<'t��="�ۨ�>�K!�T��fM��K�/�'���ŀ�$� D���g�����g�pM�2r
�&���u�aN'eԌ�n܉�%���Ż
��:;�֥՘�>��^�T�ˆ��P̡��@?��,*Tj�tqw����G�vc+�:���	�[���
�b��%���1�ভ��޶�(̱�ދ����	5^4@\c���n:TB�B �8�?���\n$uy�p������x��j@�9��1�Ei∩��w3X���� �hț��f}���>Cp�0*�<O��(��q�-ڐ�k�x�kO!G����.&Y�8�f��e�X�&��?����mꩳ� N�-��ѳ!��ߑ%� � .��f�$����r�$F�o� ��0����W������RO�#�^ ��H�Ծ�AⓅ5Ta��a4��5P��fW"����$ bn����Q12�j�A	�٘��,�����_L���ݱ=4��Y�!�6��
Xr1;�� �a*D�߻��H@�=�~�~W�"�8;��p���ډ�c��*��B-�V��l�|�Ŷy����wy��j���8&��\�*6p�JE�%��
���#R#k�Z���fZ��h˒H���u�.����aX�� �T
�{���O�%�q���r," ����ލ����)C���$k�<�{�, LRY�TFg�P>��6p�S���f�Nw��q�E�6[�vƜP	c헐m��r�x�*��'n�I|Ϸ۞C��t�m��8���%�ђ0Pj�5�n]"���?�a��hhz����ɧ���Z#Y�(�b�נ"���? ��,x�ǆ��E�yvȟ�,7B�a� �}�[WJ���kN?���2 �����	���N���d���=&dJ�Y��pF9�@ˀ�w)���sI�YS��5t:�` \8o�n��	���a�V?��|�G�I��f#��.c]#���q�ʹ
*"�5�a�tL�w}�k��x������/�]����ѭ�~�	i��m��h\��V����c.
j/�^]���p��@�Pʋ4u�%��S`����~9�o��Ἅ��I�/�w�1��R�ʇ�a��|}p$ٰf|����V$��*� �?h���� -�`?�s��e�ID�/w�^&�0�/A^��,�p�pG6~��Mh���R$	%N���n�q�1!2Jʮ�'Y�g��>��PG�1�p\�HY� )!OP->5��"��l��f�2~f�#�s�
��a+�N�[� ]p~�����	u����m&!~I�z����m	i�H���'p����ۭ6�|���=g��)��-c�.e���Ht�V��oO9=;:��A"��$��%o�����8�F<����!�=�������ө�t>��q�&�t������;��`@�)�j����C�G��=|���z������FR"���6%P1�n�g��Fj[ꇆ��o�Z����?�_�^����Lw�
�pIg��2�Jm,��0�����vs��:LFsy�����U��L����t�qtR����Z����g���ccL�I���q]�����)�zG�M�h�v�8F3Zu؎/���@��ؕH�����?ΉS�
��h���a�$���%6/�RDM��>f���?���q�DbJ̆a��=�����)I���?y�Q����L�D�yzIJ �`�t���%U��}����5|�������$�ǿ�	T�$���4p�,�2��]U����T0/~����M/\��5��Ye�2�=i�?�Rs�������z}
�7��=�`8�Ч��3�@K�-�p�/(�~,���Ia��g(�s?yd�����ړ���.c�3'/�q3��z�x���p��	T&�v`w7$�^D��OCC&�"
�[��!=��)�U�:6��w=x�DYՌ%s�S��Z3�s��Bx)0�0 #I"�dQcg�@D�L�mff T�󐐇#ܗб���N����r��i�~*��d��%*���.K۬bcY!��� �rJ��}�jg���n�Gk/����O�Q$
���aj�D,�df;��Jۺ>BK�'�6"�3�pR�3l�B5�KU�p1�o����)��i�ӮE2&���m�|;Lv���1�m����
C���u$���s�rV�y��=cgn��3�E�ώ�A6XpЉ��IR�T�F��M
s����R�!���AICa�)��I���K���~�+��y��+���q�j�k�/AeB� ���8 J��N�:����®����s����gQ9����İ�y�dM)��*߇�_��s�ۆ�)�*_�]�����,ch��3s�c���p�ib36��ld@x�ɔ٪��a|����g,)|�:Y1#hc^qR"#��7�a������ы����o��g$Y����		26�F�tbf����.r�����D8�"���x�ې9˖F��]a�4�{�^�JÐ�8�]���������ì�0Zs�B��T�K�o*->p�M�ꛏq7=9��(
��:��CVO�7��t^M�h�"&qZ�>Ҧ~���|SӐ��h6g5=Q�j���G�z�Y��lX=|�o���y^
���4Y�H!ٜ]�4!A0�>�ur�V=�d��� ��i���s��v��ʞ*<bX<����9d:�#��*&�&��n��x2
�Ą��l3����Z�m�U=��R�o�{��8ID1(fʙ﷋��9��M����^�L�8;�-��2K������.?���G~�Zz̴�I6���Űl��Y��F0�M�KC��R�t*  �C���K�l:���ծi��\���y��!���.�������>U���壏���l�k��5��`l%�f�oX݁K����[�����b����g�7�Qz��#¤{��/e�ЧƷ����������j�V" 뺟�ÏS_���,P��YP�D���0ܣN/����q�u�j��f�>/x�1�šԙ�%��U�1˭�`5\�z�[P0#��U^ҕ�Q`#M�3��D�Ydb#6���b��~8
��]~���%����,c�<�[�;ȉe[26�����ˇ�Aa'�޻'�9�L_>3
�2%�CLJv"�喹�hq&r�mp���>��,�I6S�"cw��R�Щؼ�l�%�����O{70�ٰ��D����<f��j]�11c]R'��w��X�M��&��$ݼG�
��
�|���=npQ�B����i�<�	�]��Y)V�p�?�1n�N�ȇ��9eݩʛ�tiP1�����&���1�*���:�-F��;�d��d���[?k�a#�Ac|M���`6 cFR��I�l�,��_���
h�_�0�ŎH�3r#��L��o����b�{�\����6z�������J��F:��<�	[JE������ۜt3"�������(&e��9N��h�$��Y(�ao�Ў���/8جx��^�Fቋd��8��t0X:K�=�,�g�=$�>��c�4Jq���
Vͪ\�� qx?Bi��	�6�*�y�����mV���H�ZJRF/Z��m~t�I�	�e`��,�����^/y�?w]3��v|z:�7�H�d��Sa�ؑQÜ�#�3�!@b)��Юn���P��������9+���*�C���QZJ�c�iT��wm�d;�'���W"�4����+�km�
.��a*�I��aj����#N+O�V��};����y3ǏD e��wL�A��w�nd}�:Sr��6�;.Z?��א�)�H�td	�����0�;6�`�r��Zן�� u�v���Sര΀�M�0-�mDi�7Ø�A���9��5Qq�aK2W�    ���g-��U�]��g!$Ce.���A3������� ��vcK�V�i
����	�S��$� �zm��&jl�*="w;�l�����=&�0,$�	�^�B)�I�D�>�z>��=�Bf�l/���Y]���O��2R�Mc�0<�Ό�H��/d'c�Et�+�?�:+��%i3�Hir�ªi
i)�SR��oS?=��_^����Ly�#����n�ʄ=���!�V�o����*x=n�R���l�1�󂬅��S(qt�I2��_�#��H%�zj�?�.����٢���!��=#'���D@�KB2�K�gG�K��a���=4D)�>�p�z�ۿ�})F}��+��92q)Y����F�����q#�m�]Iׄ�pgI&�l�{U��{����1�`w�J�I���l�3ďO���V��s�����}"������z�5��Y�@�l\6�*��su֧�`�Z��L��c]��	�E�}V����W��ט�{+<I%̯TI�%�/���|���j/��_���P������*�;$v�Z�GY|n�S|�%޶�_�4������EqJz�E1y�F>S�`���'���d/��E7Ig�)�\V�� ZU*���;�D�2v����"�d;�;��F�s6;L+��t�0vH�=)���T,Wa��}|폭O��^�@���_t��Mr�a�X0:Z(�8�-�)[�S�%oK�M���y�����w�!0 �,�c�%d�Q�kG�x��b�ȱ���I#58������v�|Α4�6	� T r�X��i	��0�H�?�����4��L�Y��a�#lٱ�n�cM�C.1Q��Gϻы�ǜ�?i/�Get,�2v�L#+���aI\����kK�E����R�9a+Jt�4q|��\<�G���վT�z�g��X�]�N�}�����^�q�ɲE�Ҍq9�0�RG�v�k�����p_���Y���CJ�^J��T�9\Fr-�`�$򽒙���Ϛ���z1��#.��,��ŋ̒S:�Y�5��i)��ܐ����M��A�4�wa���#o�]�^زl(�-v����(�7b-R�d���V6ڛ�k�;a��� 3o�Sl�0���_����c��T�3��DJ�s򌙍h�x��*h"F�B}C��'��i�{���i'9�Y}N�
�Pz1p��g��44-�{h$,_�"����ל����,=���b�����.�lO.F�}�b
����^F�6581�]k�]ס�3�%���NPj��V5�0�a�tn�'��|�c��HZK��Ȥ�� 3��9yRc�n�Rw!*_X�	Gc0#�l������'�FJ0�XR�՞B�g�#\��j�"|�೬b�1#��Yp�#E4b����6�,�)-�`���+\�[_�ǞWJ� ���e>t|j��'��+����d���%�2�\�0d?v�4Z2C�2�zs����m�?�*�;�4��03l$})����Jڊ'e����ԗ��ADJ���_MU"�A�ˠ�Эt��,ò�a�t�Ơ��fj����JW��t�97�+T}���"�%��8	{"0k�67�Z�����_�e ��uK;ZhWlN�"�W�4��d�*��q��$��g���M ��'%�h�
%�JB,�b̄ݲ�� !=�+�ħ�Hi���p��N���KKx���	z6a���t ,0;t��Ӷ~�P����W�^����9���JH�#������R�^ ]jer�����V�}��t;K��h�lGm��-���J��Z�L�̘��j`�q�(Qo/�m���s�沔�3��;���}��D�|b�S�ah�Oqڮ'9�e+����bCi���!"O����wxc&B�����yܦݼF�ۥ���_i��֊��aÂ�$�b�Mޒ��V��o�;,b�g�;(.��X&RD�;�%g#�JG2Q]�"���5�V|�9�A��t3?o1%C2)�Ɛ]����b������i�療1J���0�)�ڰ���f� �C��<;�c�.�VS �Z:��2�|��K���^L�s�r5\Ѝ����==#��� go�FO����M͞b%30I�t��^Zt�?��Sʪ=����5�]d#	�J�y����le!Rzxa|��DK򄌕� �QD�(jk���兄���Lq(�G Oh2v���Z�/I!x.��c9���c���s^�����]Ӷ�b��p��ݛ�]g�z�z,�V�7 ߤ��~�J��<�vȷRr���j��ر�tvN�9�t���#^����fs���[{1���&�]�1mK�ɀ�[���l��yn��q��7N����fW��v}b�:'�[.���ވ�46�o|rb���gAL�>1R5���Z{��w#��lp��B�H�09�C3�Y�99%os��ሕH.|A��@���`��eK�;���S�.߅�?u�܎���[3S��ST���0�E�.NI��YO!���=v�o1�^tqv�*�}�g�%d�%�z|�-6f���[�ylwsw���ؕ�%ϊ�E}Q�{}�6�� ӥdA������E۱΃�3��Q����Sc�.�Jfh�#���?�d=k`��Ci{Ò�-K�6�;�=�.O�ONc�7s�2��	c�a$�@� n������"^����{hv���s��$;��i���VR���� ����)��g߱��gnN����v�Y����l31|1m�>���	��n}��6,i
.� ��Ł�ʗ-!�")�ƻ�qV(l�
�p��v��ϭ���^t��c�)�xV�D��v��'�Vk�ů����C>�q���S~M�����w�t.6kgB�A?G%rYN�"Ĝ�I�芌X�zZ�.	Ԍ������HJ�-��H���z�> ���]�I*��Wfe?���倧�|[E��ka�<�����HN/1>c+9E�y��5D��^eZI��N�%A÷����?}��=��b~�j�]�B�\yM��Zμ�1-`�_�L��m�>Ʈ���E��>H1;�t����L3��@R�5�]/���;8 �%|Gd���C/�é������oO�Z�ҭ7X���2Z��$����d���c?��8y��W�	�!��c�����,��mul�懏��]�u}�ϓ�
���Tr�u`�&�q�`0��v� �g��o=��x?�����Ij�WIDP6ZJ��p�X��&]�r�ϝ���?�X�^T�j��VzI��7���2���xDI͔�]����Sk̈́ ͡�VPpm�wn�si�7��c�nt(YN��Kh���f7o��9��s��sӓ7 t��Cm��{�B*SI�� �}�9H-A��?]w�FK�������q4�CBI��ҁА�����\�m{_����]�SA���BFEo��
^(I/��Cj"X�7�T$�;p�%]L��n?C����\>�Vf��=�C��b�_{y3��X��X�����������T?s��h���:J��B[�\�WRѐ�1{�I`7L��}h62
j�id"YiF��9a�ki&�.޲S�c�H��t㹪��Zt	#/�B�����h��h�У��}!GvÊ�;xKJ�6����Ó��1�;�J� v5��v�窃Hn�1�O�LU�	O6���盘 Q�h�Ƌ�jRR��8 �v{/��9S�bUB�ْ���N|��M�$Z��.˗�M�ۀ%���{"���O��H��]���W�6��]��X�DG���o���,�F��O4�K��8��a6?"K�&	�
F�z�qؐF�����N���Y�������e���of"��F�3��`o�/;_O}���K��'�鄹]��ً��I�!�藼�§V��Z�bk�w�੐6��y�߮9�b�}�`_|��^��̌A8�]4CB�g쥧.����#vB�=A)�+�sO��_�T(!%�l�TD�g-9v����$��ϴ晋e����a
�us�Ο�䱖s?P��?<m�g�d���5�*��(> �ȧJ�XE�8�D��K����KV��3Ws�0�oٔ�5tUb*N�l�mĹ���    �Z*����<�?r�m6�,wOH��4�ql4������G"�_s�'?�����Bn����Q��V\�k�=I}.��7NK���0��cɥ�S{'΅�Z�^�����R	�C��f���$) |�s"��y�}�B�>�{i��6��cia�'$Y���|�)�:��u�^��b��?r�U�ù��D�c [���焕���x�e������g�qJ���ݳ�;C�1��B�X`�X7bc wG�x{���-󌮪�b^<{�q�b86P�i�Η7��+��W�$��>��C���������0�&�dy`��i�/
/\�7���Ľ{�rC��O�a|�b^a�F,���R���lb�D6%��̞]NYi��5�#�=yM�k���o^B��XC��ñl> �@��z�z�bAlH.�jyI!_=s�V���c�T��?_2�ah|Ö�b��ہ�,&�ж�����\�g�0ѵb=7�R����b�.y��Ao�e;��.��>�^�7�%}� �9d�>��
� <5��g�y�F��gv���N��7����y�K"#r�9k<+V� �
��ja���;�pH�*���g�C�#����)�b�cfX"�xW�5k�#�J�j%��D���د~���asg1V�C�!]y�
���Y�u����W�f�#�
vC��ߜp�������N�q��ɫ����7��_����D�7�$�;yl�Ⱥ�|�r(���n�J
"����T���dⷼ� ������_���3���h���'�b�,��1�ã*�U��l$��X�=n9|�|���s.:��9i�e_�`�2τw�/��Z-��M�&�I��/�j��A)�@����<敲1$S8�Hr���+������3�
#�К�^�>��)FS[�u����k��|��W��U%dG6Nº���vj�?x���C>n�ʞZ~�k
��3}:��0�&[3�FF@��pOk���H�����H���v4K�����p��M�Ĉ����-F�)�������9���Q��j��P���:p��:�pb�>��V���B� $V�h6�˝F*���䐑�0૽))����񱟛�����?�ݣ��������T��"�/���H�7kn�����3��=]c�J�L�I7!y,�`�HJ�-^��H@b��v�A�����4�_>�FKzߞ8i�!U�|�ш�n���/��Ij�ޕ?]�8�d�tcj�l��K'Z<\M�����)�~����A�"|�����:�x<�R��B,tI�'�D�K�ͻG<|,�XD?��	3�"��+Ӊt9Ðp�İ|"�MǍ�y+KHE���ó�c�%��p��N
W�����ͅ��Ƀ/u����΋E�V>M�+�\r#�+�3+�&Y�����w��{X�����m^�@0iX�X�.���� ĭ�=�J����A��������9���~ꝇ�MR��������u��c����/�ߍ}q)Uʥ�ҪC�����A4%/gK����D���ۯD*l��I�3�h�B�ʫpzR��: gyց'�h=�Tw,����+T�_Ez.���7᳅p˩)�=��[` �D�%�x���	}�1wy>��q��$d�*���X^�fr����߳�s���V���eg%����`fW^�bGsZ?�ϳ�a��ל��u���\�����t���W���Mh��Z��e��H����SY�R�@�+���|є�C�S�V��>e =͘��p�����RS����ǝ�����=��ٗ�?��2Ü{��.;����	�b8z�������_f]�,���dDo�4U��8����J��c��|8'}�~-b���U11�iv�e~H
G���|Ԓ8�xX�m�+L,�M�-�I.�ٸ�4SR~����*����+	�����b����c�;|̺�z��F��u1�*�2>F�H	����!~eW�?���t�(R�d6����q�sH���D���r����)��m��H����~,�'�އ���5�|��'S�uS�g�?���A��E*��
6��}g�s�z����F��nN5[�I{�:�� �o7b���G��_�y6U�"F�]$a�ƏA&xx�_�0��O�Z�b7A��q��Ki��6��|)7?���|fY^z1Sˑ�۸�Eݗ��\�����B*a&���9�6a�d��"�)/��k��?�>����mK�6vʌ�o�"��I�bͩDe� |i���9���}6�u/��|ٚ��,��Q�1�%O���4�_�u%��Kډ&R�׋��|K;͸�fٿ��a���}Aٖ�nS7�!@���p	@����vF�`�)�S�Д醴ޱ��Bx�f�
ŘUC�/���:J�p]c��72�B5�@�&{�E^���Ë��l�4�%huy���4uz�E��=��b�ʕ�#\��������
����RS')��C�3�f
��uwlҗa�~y�Q<��c�g�8�U�6|ru"/j���k�������%��j���u;�*����s�c�.�E6�u!E����X��>���C~!�Y v!�H6���dQ�^�|>�;�E��_�l/C\��8e�`����E�5NJ�TSѾ��<�F"MQ"�8��Q��~��f0�
6�^��M�nzi�Ϥ�d
9[#/���-{�z�%�1�ҍ�?Nlk�Iċe�f�]~����,�pT������Iz�J� m��*��b��G_$J�&�){ _>B�Ԙb�n�M�k����W��(�X�ُ3Gi�V��p�"�s�/���D�G�������+
e�?�u���~ᮧ��O|@��(�9�8,�: ��}�O�th>ɥ��n�W���xK
��?�(� ��6c�wB�x����M|�ry�-�PjI����"m�j����`�J�L[�A:��[� ʙ �J�K�����ѽ�3yӨ$��a_�D�'�|���܏M�����{��l�Xڟ��FVc@y���Ry�*6�����)~������š���2��H�T�GZk����4������7a�>]����󞶍H�{j�B�\;#���.k�">�Òf��R?Ǳn:,_Wyr�f��2�t��͕�_��R���:6/II �:��P�S�~QLrY\"Nװ#�%���8�¶g1v(�}�y4n%}�m-����yMӹW��5c��@����5,��k>b�&��������SY=p6K���9y������]��YdV�M���;��fFs�����'|z8���ii�G~�
�^Q������*�z_ʋIV"cZc9U��R�|I�!�={@�v�R�~��yW��k\7�"��¢������$����w̯a`l��I��\ٕW�d<s_lC=��M�L�i�Æ�{�JzT$�&�d��x��N�3�:MBH�����6�1[��P�]�������R(���w��0�Z�XQ��#)����ڄ$��~y�P�l(�ۗM�g����l.��N]���[mĆ:��AZ]ԏ>�u&�la�N}�.��sŭS�O�J�19�����i��Z�}^0pƧ\}�1��˯r�⁠k�>5�a��M�t+���|��:O��J��N�p�W�_e�=&�ć�6��~,�5,��[��zG����uqdT��XQK�>�(����_W6������i�I�cV%5)6�?e�[���3)7��a)C{�Q��0.OV*yfC1��bl�����M.޵�:�Ǻgs���?˿���C^�Ώ��ԇ<l��AI�p����(I��1X{n���aJ�������
�<�%:�\c)a����7�@�M�>WlV"��gl���g�Sz�L��k����]�(H���]>��Tm^���O�D�H�J����I�4����L�������C3x�<����us(w6�O��:b딈�>�J=�.��f��KP3ݗ^,��>}��A%�C��Rd�4Qt�謡ŋtl��<�0���l����q�1&ו�t�o��i�R�fa'�*I�G�I6[�w^��J/g{B��~3e��R`�YDF��"A�LO-���ʫN�OR6P1xU�^f/    1�4�)I�R﬩C��'�)N�;ۜ6+�y�w�_�ӳR�Kb��l�b�F���ғ�85b~_jk?��˹{�a��W>K���<XS�9Y�Q�k�����*�>`,�]�'��fO_LJh�T�qs�KlLl��Ѳ�H�{�����gg���ݶ����w���'ZX����~���k���I�y�d[�T%��^�Q���ɺ�i��D0��3�p�����g��6[���g;���^�n��cÕ#�IE1�o���G��MO��дl���'^���<�^Mq}H���`*����{��N�t:ܻ��jFT>M�g��Py����^_ ���f�s�|"�O��؁�}�ZF���K�*{!��.�K%M�I��g�/�i)gs��v{�+N��RދT��~4e��e���2l�	�[H֚��GSB�Yu�e��r/��]����/��܄!2>:��������! C����J�z������t��vd��ˊK��"�*�^�t�z��Ǽ�m��˯�x��R.m�ebɌ�l�'�ͤ��p@^�j�A�QK9,`�HU��O�8j���T>����P�؇����#�'a]p(<`f�)�c�HU��a���7��J��&ɓ��/��3�`��=�؇����HU��]��i`H�`�)�a�Ԗ4���f->����H��

U��ן��oZĆ�	>�zL2J�=�����%f��)�/���>?T�����"~l��K�U��c��X�B��b?nV D�6L��n<�xMG��ye:_rXJ��Ы^>mFZ�
�YZ{���;�t�wGc���7�p	����O̢{f�V�B��~�]�a͇��ǵO`����gooO뫖0��T�0�|-��0���$����m�������j;c�L�%��NL1;���g���Iӈ,��O<�̚�H T��h�LiwK�2��ho��XU�w���Z:*n����I�v/����	F���'�nR����$�#!�> e��v�"Uݥ���7�c�X��$Ӱ:L3����^���>�߯[�"U�ߵ?#O
�Yi�k�Z>���C���|�ﵾa��<��j��0���C�d�;�)A�����m�FQ�7�wyÞ�0gC^I1�H�_/�9�_4kxSA�����8���܏x���7�?��ٴzC���u����/
FS/_�`#�BYA��]u��������3�;��x��9i�fF�Bql�����¾���"���:��@�Wl��}Z����l,͌45�c�HO%���tj�8��1��έ./�Z���ϗVV�1_�(�ZM��{�^��@|ӏ����K3"\&�I�V'-�@ݰ3���<N)�����?�s�b����15X1���?XtZX�9�8f�ώ����[�T���~AlE���czy�P��� �"�� Y����E�N/���Ŗ��n;,����l�e�,٪҅�|���!���G���.���pl(���?�:|�X>;�63��+_���S��l��xɍǍ5�_Ґ�?�;lط�|v��D��/�TG�ЈTGفa��ڂ-$�1e#mf�%�2�N��|��Gs;}�oW�TǬ��L�7�U�+1��Bߍ-���VS'|� ��>�ϩ����d�?׹GP.����Fq���Q3H��$�f�t�X)r�~ne5�L��j&��g-o����Kqp1��~%�w�S�u�Hb�p /(�t)��tK���c��T��<H� \��d�~7����L��t�e[�ǛC������C��O�)�G�j{m�{y0��J�~'�j��:RJ�S�$WS�S������=�Nr�^ߤ�̥1Kyn"��X�P3�1����:�r��lş�J*��nrN���lز/�tս�f�5�5�ye��ыu>��v�viH}Ǭ?[#�cs��3dd��X\����K�ݸ�P���eҟ������RH���dz#����z+R]f���n�Y����{7\5޲�]�afs�H�u��1��[v���Hv����&n���Z/�qSᏲ(���5�����Iq�t�b�f�H}!}y��/Z��|Ԟ��n��"�T��������M�^7y'�3�I�Wپ��c��Mv|�]��_C.kOH>�����ݾ�pGV#�z�S��	�n1K��p��(����f$�S��ǎ�_NC�{gS�7/�Ѭ�z�ʻ*JޚYC�Z��D�D�GU[96�Z����6���=����@F�6S�C�Hm̗�# w�f绥�"��?�����-�y#��`=��*���vO��+kEjy�To�X��bń���Y+��*p�CyY� R��G�b<^�[��9#���5��ap�Ťp���ϭ&F��.���η:�Nj�P���7�$�����*�W�J�%��Ç�E9�\\�6�h�m��F���F�S8B��G�H`"���g��(z�m��.�|ס���S��,>}��~+�!G��M|�hI`x�*����#Q|�*��[Ā)n�R�J4@?��g�`�|�c�M��7ԴUq�Q����ح.jPi�Av��r5��c���D�&QqY�o��~啚A�z`��] ���5hYZb��Ů�L���}�˖�Xֶێ�
z�5t>��ӧʲ3�۹3G}cw�� ������K�ǷY1��Jhi�yx����3���qu�k+a	��*1�<y���}�K�L�4v&1�*!�;�f�|��'�� ��ݡi�"��2���#)���E9�i[Z�C�j+}�M��<�����
��(y⌜R��{bXݽ�������v�r�)*�7F�0ҋ��hf��!Mu� P�|HGR���>H'�����a�����)<A�+��g��acޕ5��~\��xiֹ��9]#O~�qz�~�}� 䒏Y��7z��+������rչ\���t?j���ҡ2$���j��%�#k$��)��f���s��A�<]�(��깞(�>���ޤrt����D0-h�ռ�����b�����A���WV��&��ڞ�W$�O���h���7�r�ҿQ�s+��?���PO�=��>2�4�Ϫ���[���ػpi��z$¥�E�x�ZFl�)�!0-f�DDc���>➰��A�|=��p�u8,n�e�ʥ�~�ȸ H�(V��^���t]L�w���KE��Um=�6�V�mɌ��J6��E�����ɗb�m	��x��격�ٙZ��t��am]�ݎ&�f�0�����/K [b}p�2�����8�ۍ��~3g�#��Job:���ňX���?��n���[x4�JbɌ\��ucK����U��
l�&����V��Ή�9��b�X�&H�If֋0&TO}����}��pj�>����>�5�Kc>S�L��zh���~��	��W<�$b�U�,����5�!�!��M4��30?I�8Tn��zyP��l�g�ֆ�
�~@= g�&	���� �W���,C���"L�{|�TX�.(�&�>8I	� =���N�{�f�¥��}<������IK�kA��Xʟ:Ծ�%M>XB��ѕ���bY�,�3m��,�P�S?WR�aT*��ʺ_O�+oy�+Z.5$S�;ޕ�WD��U��d�S@ܔ������V�N>Zn�r����W��C2<2� �3aON�Rؕ����3��j.L��&,��)�͑��{��3�7keM�l�)�[���ٻ߯��pYM�6lG�����@[ᯇ��-mn��d�h;5��G�P��bI���Ĉ�3^��g�t8�M@6֎�8��}���3`��݌ػv��U��I+�`��mSO�3����(t:��]E��=�T�],k�u��byְ�Ɩ�"�%��7��&h,��5~v��*䁒uxR��M-��D���cK;RJ��<�3U��rQ�# m��Z�߭vP��ղ�:�:��OL���G�#�|�^&�+�N��*����7pE"Q�-���ݨ�t�.�ׅ]�Ot���@�������ݢ��x	��Ҍ�����P��\*���a�ֲ��Łi�}Z-�x�p~��R-�     +R�=��$�G�f"b:g�_�����f��*o[�V�%r��=2S�d/O�@	��F�X��V֚[��Ų���}�Tr&���%�w�"$�Ј���~Y�* d6宖��:�ܜ�~���g8M'��a.�r㶲�[���K�����["�<��T]��.G�9�&n�6�$��G�g�=� =]u����b��rz��Wǩv9�Gم#�ty.!����?m-.���O.\>]�o�mt`���3d|8t2U�rw�[��w�\{�,��?��}؇ q"-�j���M�,��[f����	��i_1��,��C��XU�Z8V@��%����~\Z��[�
�EW�|��un�>�����P^�*?T0G(�N��z���]��F];�i Qv>���q3�p�C�½��g ;��*�ǲ�k6�+�UY���j�¡	X)8�f;A1���e���O�H�E�
�Q������y�BIa��c<֡s �j�ҷJ�z�
̰��pNw���I�ۭ����6�yj�}�L��wE������u�f%�*��B.�^�ܑ��(�8y�!��_T&ȣ��ɏma�7���_�\�2����V�^��@�x�.�s�b��~ڗ�V�tc���l���eS�?��k?��q�<僰hd�;�0�J_��Uzch{~^��qko�xa�&�K� 5�1�[jY��Z��������ʮ���R�-��ј��k�X�E)��u)}������(c�U��e��a\�:%V�&D�ִ�3ͅaO�/-��S����c�OC�*��XTW�\�����4=m��1e�d�uX54#�i�^�oE��K8p�ߣw ��#2G	H5�~��.�N�CY�+̆x5�V��;��~���xb�`*�
�������H��F}m�X�خ1oR�zt�|�9 lO�3	9]�(����q�|�a��-m�$�]�����:}��$��#��Mx���.W��-��P���uݠ���.z��c��j��wPP&���j5�����������%�Ub�VF��������#Nwы��z�Zk����h�j�Df�F@F���3���	>-�������|�����:/����v�;�&1�P���5�� +�@�U�s�
�����f�t�I��a�'�S��`Ȝ/@��>��������bh{�XmǙ�����}"�Y��]VQ�J�6s�l�]�/4g�YTQ=s᪞Z%a5߲,odh��}�s?7M���QI���t�����w��Z��u�HȷG�,��r*�!�������?�z���ꙓx[�p�PznG�yd�y¹�T�	z���kr�b^m������|���U$��"�c��yi�Hx/�K/�� V>G��v���G�����A��!^���{�va���H�C�z�\�D����ܽ]8,ۻ��u�b�h���G>(��S��@cV"(��k��Jc������j�>)ZuB��������J��CL�8<�X=x.!h�4]�)�𳇙�U�e_�h�e���#d�-]��s0y5�����̬l�v}�r�Zn�}��gnK1�2����M�ݶ$�a����^��+������8ڃ/;Q��n���)������~}�{�uxp~�:�r:_����|EL��p� Տ����<B'�~�O]a/�Drys��W�!^=����ۓ	`ƲI���iO�̳̌M��(O4�4bZ���ϱ���0ď� bh�1��7ϒ���^c�f4����buz�Z�0�K`{&���>�i������t�B�@�=m4՝����yTy�I�-:�o"�*m�ݖ�Y�@[�����F�l\�e�+Z{S�~�]q�<��M�A��*�{�8���!_bN`���.ܶkgCv�ōyI��*�M?�|A��1�a�e$~��|v=��� n�U����E1�)S� /���vh��A�5���Hddˎ��e�m%�y½�}�˧��lC϶��l��-:� �f�}��"�a�d9�aW��b�,��9	�;KGQ��}��y�h	('Z`҅�XjTB�jM/�y��ſ[�Vy����y>#w(�}�����̀�����tB3�$a�뱡��c��1�(̄Z�5���:l��Z�{��)V�J7��tj[�־�K��3h��~N��6��B��"�3H�P��r6s�:�-���'Ya%Zu�
A���5����i�^���j׏���W�λ�u����;$�P"�1>�0�h��&����*m��-o��bm鸽A��LKT#�^ܔ@��$��*�/� %O$�j�	.�_r�r�z6��}q�a��5���Ȝ������a�k���|Z�z~�x.X1/���>�m�Vt&�S;�T:^�z�6�<��	f�J�v=����|�o��۪����MN�kg�� >zH@�+4t����rj[���ُI����#b.��L�&���j���^��`�<B�q����3*�l���:��G�w�$����wգ��.\�n�̡ŷC�B*l�p�P�D���\<�lS�l���z��t����~�h@M�����-����}a��H��&����Y~�l�܎��OQtQ��C��BlϢ��`W��?U7��m���f:�]�me7�YOl��`�C�y"Vg$[Än^5v  IB�'+��ז��PY:I�tt�Tĳd`��j(3��
�"<M��|���e��u}�����uL��� �S����k3D�p{j�3��nZ�X�ѧˡ:h���cq�@C���Ox��]�Jh�]�pݼ`�UVf�ٲ�ȗ!k6�mK�%�	"�o��ɼ��w���eu�Ⱦ'Y���}IxCp94��B�[c��tG)�>�z�Zsб��u�'؈���qLA��y�8*�� �X���=�4�}��x+aXU,H8����q�n�*g5�h�Y��E����*^e(�\lN<t���;~���k��[�ui���(�?��@�j	0A:>�l�XP��|s���F���t^,˫��#Pj*�U~�:�WFB�H�9��K�c�j	�y6���>�cs$+D�}/�p�@�D�-��E�υm�LNkE�ǋ(�f����|2r*�r[���Π��U��+�e������}����R>s��uL�V���?wf0϶�O����J]˺s���Ȳy��ٱB���x��M�~$�N�Α�ɷ��r��^���j/"�m�@�̀�=z�ҭ�F�k�4�O➝Ʒ�B
���H������C>�y�磀�Y2�i ��G�I��`뱜�/*o:���"2�^�)��e�)��S[)_�4�㽨��z�+何(���m[��}9O�؍A�A��c����;Ϋ��DN�U0�h��D	m.@ �1��,6�3Q�<Ǖ�C���Z��	#����
�E�����;�X3T��R��n>=�N�}Ji>�U4}p�~����I�x�d�@"�I(��m���Pp�H���i_��L�獘DH*P*�n�c�iy� kI���=����g�U2n؎�K��C�!�s�O2�fŲ�ǫLETjC�m	�����Py���^D��vJ�12�S��A��\Q���Ѹ��n>wU6��R�c_^�#�7�a�(��z������' �?�m]=c%Rc�?_T�������L�U%����H��_�o��o �:��ʽ0s�KPd`o������NT�Qeh��XU_�ͬԭv���@��Cq=�2F�qdC/�u3�o9]�
�@/�~��՞��O������^n��L�m%���>P�1�;�4�ޗ�PE�8s)�΅�/�����>�a�ȧDd&1�����ݩ����Ƕ�q��	�r�/h���~�|O�֣���P�҃��U;�!�)�b��W�i��4����3�`Y���s�V�'�Q�8�{�:��]���\[: ��&�'<f���^��Հ�C���Z��GM'�$dȔ{��Yf��p))�{o�X {?TR����u�9(�� b�D0#���z\��Z��RS�(�..�����V�g��6RԠ\Rgj5h��>V� b��Y�LQ��� 8�Y6v�    ��2N�8s+4����3�Jgy�ZqU������r�8�/�����{�c0�w,[�i�r`�k���q����^&��,�a���%ÑY���G��9k�;~ud���C\5/'����p�E�Ϝ9�$�a?_	�t��Q��z7_V�+-'�-��[�0��P~�Y {M�N�d�_�u�j�l����j��l칥tp~<`\h�a�JC�D{&�n�.j�f6��ôh�����C�$�W#�]WSd@5�=+f�	$����(��A��~��X>�J�(��ka54HD�o��.4+�+���_����S��+!��V�^�-�]T8�~Q3�:�[r�չv=z�̕2�.rѴy��<���Ӆ���p�ZD����;S�-G�)O��E@��G��~�P�䷶'��N��3U+�\X=Z�\-���j־�(Y��"���*�b�jgUѣ� ZK��iz=}/����f���3Y�S�-���f�c]�bI��������/u���y��2b>���T����v*ཱsι�)�w�&�NS����,Y+3�ܓ���۶��H �_e�%e�k�ɫVQ�<���\�D��g"Hc�J�铸h���i��GI��n<�b�<Mva��g�­��2��������ռ�Oe��,�k_=I�SF�L�RVX(	C�^� �;�DI��Z[���Im�`ڷox�]{�5�C� .� ����"�$}�n*���T���|�����jN��Md�E��=i�A"o3�@&t�cs �=���tR��&�is��3���(���8�q����I��Sgg����ʅ��WY?ۄ�����I"���h�y���(�+Ng����|�I�����6��Dd۝��E�PF�:cp�^4�q8��3\�����j�������3��c�:$�y��>�� ����#g.?��#��C2m�MfK�wÏl�I?Jm��T.�l�.+��@�����]����b�7�K٪�_=�eK�O���>��L�K��ǲ��b1���
Q�G�M�:r2���](�8x��eĠ�#(����.�k[ڃqC
�].�����7�=[�'h�O��٪O���F�x;��~�{�l�s�q�f�˾��H���1żm��J�dt��}��j��[eŻ� �{nBO�.�jg?n��'S����Ų9�j�s<��ղ��qm7�t���>��yix/=�P���6��]�s�BOK%M�MV_�C�t�7��ئ���iq���%5�����ð
�k_�{�8��C�Y]�=�f
�0#���q.��(r��Db%	�I7-D�`�ڬ/�+}=E��R7J�T
j��R�LJ?���j���o������ቤR�M�PA>5Ms��Y*����Tg(!gt-��ʅ��4��Ug����O5*,i�+k�RD��I�:���= ~K����v�JN���hg%����|i�f�	$��]���P<�5�?��X9e K��M=-�C[4#�Bn�6�$j�����j� ��FT�'֋��O���_p�n�� ?�eXݞ(D��9qRd��h�ܺk6ʹ���i�+���в�3GBI�1���=
�O̾4���
WsE��v��@�yf�a��]eX�;�TY��f$��6�<!��o]�F+�ɼ�.^���U鱇^	�~��5���� -��aڜ��~!���×�	�F<E��d�3H	��e����*�A�Ӆ����H�ysƯ��v08*�R���w�w�Q�)��n��I���2)Sx	 G�OCH������u�Ύ����Է��;1��Q'��IS����7���|,O�OV�WL�i����������ߘ�� �h��33[ג��:�k$��݄�B���h)�<�jK�f�uAC�ū��1��9�f�$<~��S��n��.�<��=N���Y'� ��J��`�=��'��+�~�7h�4E��r�Ӝ�:4�Y+g��3���X?�wѰ�k�����{:_lN�,?����qd�ޓ06�	5\l�e����e�5s:����r�y�>ѹ�Vcۗk@R:��*Ð������&{���i����������ڷ�~���PZ�p��K�Uc@���)�����6��$}�Gn���z"E}�̑W��H5�C�I�0���/���8K�K,	��hg���.��4����Z�ݏC�d��䯮���L�.܆7΀��=_{C=X�V��LG3���t�
�(�.�F/$^])�$�B�~�����}� ����<�w��e &��H����nu���%YD��߃�.�zwf�1N,Ԙ�jQ5N��|�}E��C�����A�;��8&/.���Va�~#�'M�ޅ�tju�X���FԹT�"��yo�	�H3��T"a~Ci�>�n�'�fc�}���츉��R�=��O1�A��z �oҬu3��q����v�Q)$A=��}$kE`�/��I-��k�}��
E�b,4s��2�HR߹� �p�z��r���\NO��4l�bӝlg#����f�L>��y.6!
��A�z6�V�/�jU+�Χ�4��ێ8���g!WlY���!٧�1<�#ͬN��r�����-I��I;^�� &h+�.��?��j�?�T|��I�ֲ�fv+�bF�|K��cr'}Qt�܅A�~{��Yg�E�]NOl��s�:!��n��}2Đ�� ���@�Z�����n�u�����r����Yn�7�ݕ�u��	����3SN�֓�m�w�B7���Ԗ�0ZQ�U���>&$>G߿��屟���Z�p[�)#3�4e��

��`��)���dA���b��.���%�e+�=q�9a�71�})�X�c��VΫ����q���̅���^��b ��d��؉��JB͞�9u���]��~B[�O�zjk�Vz�6|~�ր�t#�S�R�4�����E�6��m�ݯ��6)w�L����������sO�������ͱ�	��K��!]����"ڏi��N���\���ǁ�dw�.sT�������|O�:���R����`X�#5.��Xo
v@�?���W�+��<�0����� �V�0FL�&v��ǯ	��q�F�q`m�O�QAa��QfD�7�"j���D��r�{U�"�� p!�`,1�0 �Z:��jƓ^5e��m��n�fm���;��ݤ��!�`u�'�p����!��~`�/�x{k���u5#�o�-�7 y�A�G��k�j�Fx�~����iW0'��*�~ι���q�%_¶��c�v�r�vz;��m����t�>���r��4E-���Y-���v�~x$��;{��H/qC�}����t�^���j�D�Cd�CDߐ���q����
�vE�X���ϗY�Ȼ�\��dL/XCd50�� �}e�K?�sV.ܞ��TgLGc�v�J����R�@��K�t�+ywogZ��ε1P5S�}~��.�(�w��N�����/;@,�y�@䩅[R���[{�~T
���W����!U��:E��W~3��hK��j2k[��<J�mO�䕆���S-4hm��Z�aE��wH���\��tw�Jq��������g�X�Sa��R�uh���ΝRL�q�h"��]�|��`5x�uA!��GU�����,]XGS���n�k�:��P�m�.���Θj^�.��'Z�dL+Eu�?t�F�a�!�/�*NԾ`�)��*袖nj_�HY��ɯ���4��`���I��m�H�@
f?JK��ɗ��CE_�/�tjo��V-�y̙D�֤�R��:*Q�p��q[�-�8�;���\�� ���4ޠ$)�g���#T`��}w\Ul�}�K����:�Zo��Sv~<��aˎ�p�;JP��\�+R��Ί�g���~M���N����@cu��y����t0Ii�( �mIю�E=��>�?�8�3���� �w�/����"o
,�٣��6�b~���/�<��%YQ#�@R_	XuH��<ț���䙹�^L�Ļ�%V&�m�%
x<����6���8�Gٻ�e���Du9-@�<��q���&�v��+Rq�v��
��C�hY(��8<�    \�`d�	��V�Z���������ɏ]y8�A���E��V)0c+.1�<[�Y��t��#)J�'�[S�]�J)ҶҢ�nQ��n*�1k��>�e��#��LG�FE�݇����+`�]1�������^����䁻��mSD�%]���|��y(�N�H�j�q��ڭ����,���G���z�	e�	�]����?m��J!�,ߓ��~�kK�˟���4G���_y ��(E=X �oE?���Ǿl�������x,�9�/�z��F�T���]lo�xKS<nw[��a���-A��b*��h�)���م�Ǒ��ĕMP堠k j|�dñ�a�Q��Ӓ�Y�(mc���"�����C�~2�OL>����TT���c�v�XY�F���b��������ZgRə����|Q�_�J�E��dc���W,D�����
�U��m��n'<�VT?p�?���!�3u����"[#6ߪ�(p�+xL;pr){[�s� \Xw��k�R�,�L8�2��)ʦ&]���K�4��j�K����>����F�Ȳ3|��SԔ�	mf�.0R|�1��������\m������f� �x��%�m�E*/
��;��� xy";Ay��g�&N �2,(�yV�"�ʷ��E"���$_���K�wOC\?�*�f�սHޖg فB�?� &�-��P�+�O�����lˬ,ǉ�Kl��j��i�{:�xPH�^�^4"E���z��劚��]$a�B�L0�K�H79���'��L����4�E���5�nE�H��1��&ò/V�c�n�Q��+�N�x0�i�����q��2�qCp,s2*�`9��*�>,V�5��n[�:�O.�y�2�ꞔ��������"���wb�}�j��m�����T{�_bVI�<�<`ȩ��ڦҬ�Z,�x��|r�.�֧y��U���@��ol�X��[��z?��2�g+�u ���_=!ΉO���-yB�3����4�\LA��u���(,�`ȵm��������@|_R�a��!����G����>��Ov����&���om��-T:`֔m�6k��N!UR���g�XXt.�%c�d� ګ�'���=��s��I1�s)�'��u�(w��z��ZoU��Xc��W�1��؁N��ɧr���ˊv٘R��o��@g��%a���\���`��[�9C5��C�˧�yp3#��m�
�Z�!�X���ѲͿ�������)E�|K��%�3�~.��D�ݷ��Y��xv�����f~��x?A�J#��v{�lS��S�4Ծ��g��f7��"_�HV;�����I=�*�ma����$~��If�5O���̆x���r��Ih�#��L��)�ر���^� ��;� �?��Ai��a�hWN���-��K쳒�Y�.c>�x�R!�}�{��X1Nf�IE-=���ni��׿��PB{U�T"I���r�5�S?R#�Щ�rĖC&�[M�;�q�J��=p�5�C��2�z�G2ԓ�V�^����~�O�w��3}�1�-��A�l-�� �#]�G��1R��\�\�����0,v�0޷��N�I�ܩ�7���N���ë�n�1��q|�o�D̼��2���C�V�N`h���^1��s�S۫V�+��a�n	{��%�3��`���˟ee�yqpP�b��]}#00@�99��[�/��7 =��|:�Kv� �(��v������/",��`भ�\��+����sɋ�|�E�fzl�ӏ*�,���� �3�y[r��T��-4���ڗ&3'cF�X�+�s�F��jq^�H`J�����O]�]�ۏ�4n�oh��e��4�Q'Vn�Dֈ��w�,��]��x�R�{��[I�Ie�����uXB[�������q��k�Ͻw#a�!e��
�X�G�tA���n�jS�li\�W�\��ʍ�%��d���H<��<��u\ ;?-�fmg ��_1Xw;˛�jQ�	7ր�q�{"z�S�g�t�"��m���=�Se��~��Z+ϑ՚`w|����"�/R���Xݾ3
�t�1��\8��ݚ`�����b�ǴT�T���פ�Cz���ݗC���MO?Ļ'��������,��:��;���������zP�S[/��&k����P��b\�D��i\���,q�$�=	��زh��
��X�s�X�����0��fPR) �cϝ 9��pȤ��o�|>�jۖ0\��E���c;� �b
�ܥk�y!j�:3m��u�c�V�n���C4��W��.��X�3�_R��2�����H.�%��~���qhx�JE�?}8�6.Ʋݖ��8B��x({r����yޗ?'v��ͻh]�\��g��ĳ8�S���DI�C{Сtt��ܟO�3=�o��	m�>"�p��|�;R�'N���$o�'y�������ۓ6�zC�D��k.�>��I�pD�XTE�@(n�3{��id�_���ӟ/�ض�3�Z=NK�ʤ�MB���0��w��߻v3�+�Q�*�NQ�L�E�nmQ�M��.Ӫ��n��P�h�#/g5����Z�: �+b������� ��P��:?��5vN�e�z��'����A�s���l9��K�яEMv3�ٯc��e^29M��J�<%M����VT�8Z(n���ۃF���X��l��n��=OK���jf;7Xw"��.l�W��ϖ6$BQ9C5��`5���[[�'�����=4��퇸�	f�z�*�s�n~:!SJ!aB��|4%�~|옲�(�u�ڝ�2�����|�gq��R�L��˶"��ݿA+V��ۦ�;���
�ň�u6:�7��H�KږP���]&�-ht/��>8m�m��)��4/FJ�Z��|�4�����D�BBūiD! ,1�ޅ��\�\Lٯ�ZBP/��.�DtB�>	R�&:}�-��kYn��<��;���Fx��".��}�ʦhJY�"��l�W��/� 
����^��6��ӣ�lc�qV�n6bU�����B�"|6rn�iW���@�~�D�mdh�س���3�����ٷ�;�pa��"���I �{\T4��=�jܾ�_�lV1 ��j.v�������x�>�s��� �,l[	햶���?M�T;�f;�M}�e��I�\�ZK�Bд���9�R���A���i�Ny�hv����S|&�e	�b�B� dy�t���|I�1`F3p����iF���RJd%�mĉ�>���n���e�xU+;}_t�F|,��#e,�.l�鉄�:�+�(d9��g��s�mc��d��mv��ܝl����}7W���ˌ��j����MJ#Et��ĭ,)ɰ��hS����y;�N�sMo"��v��y���kV�oP�ڂ|$a[�\�t�{�y��ૠT/�:c�h ��M�-����S2�7�^O��<����0\5�}�j��^0q��V��y([~�$�b$ !rK�s� �Q�ZQs�.�yyA!�*/��C�45'*�S��b��*w�[���/YZ���:���ؖf**�Eh�4l6�tx��3��$�W�*%�B���^��÷�Rh{���G�1���2���V���L'[����yzU(�2NJL��A@0�\S��G���v�mf��Y��)�oT�^��(��#�����C�'=:ݑ�s��/�_v|I'��\5��/��y?Ǒ�L�Hې�������ַ��bW�'��5���F�����P{���CG;��� �i��&_���	���[���f)O<G��;����e������=���	`~S�/�_����A��B�m`
=�d5��I����Ov����O��~�[������ ��ԧ�1O����"�+L,��^��umx�%�N$��
-�.W�,�N2F�<Y��a��c�ͷ�6�:��]��Z���d��e�w�swNd��b��c͊z1�|�L�b�]���-��ݾF�"�'ǓI{�M�ꑟ�i����ecy��H���@������ /�HX��.[:P�~)\��`߿_����|Ѧ�����c7�'L6fY��2nȞ�V��cm���    5K�D{���6�.G��䆱�q�Fc�l��N�wQ(#$�N��Ⓢ���z��v�j�����rz؁��&GD=6���i��Y��4>W��F�V�7�g���}/;��D��fM�R���Xu�G��%�D(ng23>��[��9�z)��خ0Up���Z�b�x߅]�\��������Ii�o��z1=���P��LՁ�]L���G�V;]�!@PB�P#'�WE$��wog31��X��չTU�/r;���>�V� O={�w(v���9��vy����ѷ��i:����ME[)bh�R���}��|Ѯ.شK&�P�!�OU��I�w10��UeV�Zʏ���<�X����]��P�ng��@�$�L�Ox>'����F���ĵua[ݐU�T>(�%���p+b��9"��8�S����G�#�E��%&x�[��v�
x��q^4���bq����]|O��r�n_�j>��Yn8����*V�"ddɚj��d��;�ɢra[���'�9HS�Y"���F��:�-����2I�V1�bs(�.lwәU�#�h�A`��%-i�c�����	���G{q������X��Bls�l�
\��}/2�4��=Vˁ��rQ���Eïz���}ں?����E�NwU5+��ֳ�`HCj���d�TM6�F�&�Ǿ���ǲ�=,K5�^�*A�����m�dJF���((_��������N�ݖ�#/{�n�ڇ)?G�|�7�n\R�렉a�G�j;o���I"�F	q�ډ�3��d�.n���>ė-.$�5e|��Ɨa����3S��!n�1�p�{�t.���1����+�,ۘ����Q�Q4��=LVݏA93�;�p�j;q ��ѥ�%pǷv_����]��s� �cT����02;]E�C��Q.*^"%��)�w���N�$�ĝ�hm�۟F�ș�x�,C�ʑ�o���)�m�O�y�����d������d�"�ly�=$�4�*4M[�6T�/o���_���:Ѿ�s����"�8S�b�i�#1���K���0v/:�Z��X}�]/ۓ�����o�B��:��<����7tK���G�$��������d��F'���A	��F�ԑ5:���2U���}�VOi��]��Fx� �|N\�'��P
�>ۻ�,̟�v���w�j�t�½o���F �j��^A���`o��� �(�.���q������}pic�vsK�h�D���@��ߝD�j"F+�޺pO�n���L A�m-Ks�m!&�:yX���D{�c�a���t�>���>�}��(zV3G<�����-x�ِ:��A�q��ߚ}<mڢ��y��lN4�Q��';0b$s�	���P��޳R�^�t��U}̦,V$��i�p $zv8T^��ʦ(��}:�5\���o�m�{$a�s���s�8������^���}��/a��C'~�!���`�d�8��h��vow.��/
q��ñ(I~��J4��P��4�z_η�(�8���X�xE�Ǫ�����<wSp�!�c%��ֱ?�
,~�h?��Ϣ�_9��%�)Ml�I�D|�wE7�3��+y�3E�9t�~^�z.؎�6���a���9x89��n&:�O����������8
l�@�a�{�2�.WW#�3D)��.[�� �T6�sE�R�ȿ��3���`�X�UFr%~���Ҵ����=���TZ
!������-�����斧X�a[��4C�Im|��&|^����^�W��#Ja�߭��$���-�q?��E��Z��kU+گ/��a�U����sK*l�����qf��hj���}��`_�+y+D/����0�$5�'ު�$�6����ғw�Z�D���!�o��jwCM�mݠa��I����o���˩�	�|nvm�ny��o-�<��S��r.�.�8b_D
� ����:��O��;+��j���E8x�x��%�'�F���/�b����ї\�thiKZ��Q�u����Ì���� !�����24!ed�K;�O]��*��f��n�U5�+2"E~l ge����k��5�a�G[�� KYn6}j[KMoHk���}s%���\&���u ��S�8�ۣ�_�z��#b�u���Zgs�bV�<s�ܔ�ͧ٩����Ʃ�Z��a���v�`l�OW��9���
�&���b��m�hf]+e�Z�f߽�\��ٛa˃�.G�:�Ot����Q������+d�E�~�!:w���-���)8D�.M'K%R��+\��xj.����U�>v=[0��Hl� Ձ�%�Y(!bZ��~l����m�$��LY�#U�8��)���!�p�~�ưS�}�f��UB���ܩ+}��?�/��W�s��-bX�ZIѪ�'m�hL�O[�?���f���;����_ͳ}{��n�%�D!Zn���",k'�߃��m�����3������Bu��$�E
���8���h&�a[�<��s�:�p`Y�O�E�jm7���8�����KW��
�q��O a������ʏC�p�V�*�?O���H��aH5���&(���R2=u����$�}ߓV�o�ךּ�YGv�ۙ�,�q�0>{�I�].��ռ�<j��.�*u�r�9؋ޜ���-#��($B�`Y�]��z���������˦@���!x5a	��R�3��Ɔ��>L�r/@���J'u]S <=�gZِ#�Fr$a��8޴�.�k��jX����~1[*z��?��#%�N���P��ʷ�:) �ݘ[��E�D揊�W�5.F�V�}I�$��A\�3�x���:���Q���pDlѢzH^�N����,@�P�P���e�'�X֖����)o߹�!��A��+W�1g�ة@gM#[ۚ��y�x�b��{;c|(wU����ٺx�^��y�䇞G9�"oӪ�x��!���7�X��� ����^�(�n	sj� �� %*��h�g�<�I-��s��Cqi'\�̹��"N��y �?���2��jEG�b\�X��w�f�J��Jқ8���Ue/�U�۷�|,f]%� ���0 L8��H�w�X���v�\���N<�/Gh�-�]���4
+l[��v������	%-����3��^6�$r�_�?���dD�0�R�d ���i�"��ʞ��m�;�J��N�iQ[�3L͢ѭ���A1�"I
A�{� �&WJԇ����r��zM'�X�����3SNt�S@����۽���6�֯` R~��#Z�F��)���'I���Zc���&��x�|�Fж��-��oK9���Zֶ�Rָ}�?;�B'���/��2<l�ͺ����)=1I&�L�Q d�V�/a���~�&��c-&�.|�^TM]���^J�&�%��z2=$��RC��|;v[��W{E���\0}62~��P��ק���Sa�����b�t�ۻ�a����U&|@suY,�d�-׉�9�g;wO�?o�uC�м��d�M�&l��LN8�0�dH��
������Zg������v"A��E0��O�1��ہ0"�@G+�~������.�r���Eu���Z�_����� �af3y����0���Y�vj	�����Fk�!j���"wK��$�>?k493o��[[��c�f����*��*�}��kj�[�pg9��S��c�vV'���
�/M�������+$��P"�vNE>*�D��V��˙�H��6���0�W��r;��0�����8�U�s@������^t�>�7�ۺޱ��t2��8N�i���'8��P�>l9uH0>��z�/W�)W��B��4T�%��ސ�}�N�i���H0�����D:���}{$$��Gj��W�,��]'��5E�Պ~�V���ٽ��l��|�=�	�2>LB���|�S,�(����T���L��)C:gL�|?��&6�J�a��&u�xx��p�X�!%MzF[ݖ�Jj���c�X��o�+���U�y��\
�۶��ߓr�U���H���q9�sv"e~ "  U�o:T��F��yL�L���n�e�N<��H>��N�s��}��O���&�>g��
�����L�M
�׉P"� ��ޕ���\؅���h�q�fK�Q��+:���y��>��Y����ʅ]4](�Pɂ@.��8��唁iʞ��$l���g�!��0��T�ɵ�jzWp	!^� ���G��� b�E�L�؇m�Et7m��������@�c�P0d��k���q��.�c	���Y��r�ҜHE����y�45Q'��`'C���]�eS��8�a��r=D�D_eQ�B��O[��>M���|*9ߺ�3�G�8QQ`�`�AK��3���G��=������oW��%���>�m��2!�O��yI�w�Y-_������n6�"� ��Z��.,�<�{v�x��Z�����k���������=,�^.�h4��|[	Z;\q�^�f%Ců퓥��r��[��5w�X
{/��>�^���'(z���o�3��8�<S���rZ>��l�l5�o�~č}�UYqS"�3N~g$�������Y!~�cLM�-�}���I���B�a U�5�>��t�P�~�M�*N�`Cpa��5��v���;RA��A�{a,N��I}�U;���3v��'��q�5�# �M�#F��cD_P�����ݲ>rN�̅]�
s������o�9�`T�Ϙ>$��T�� vKi���U���z��]	-� E�8'��v���6r){WX~O�4#�7l����n���]����J��vJ��)ݶ�E�|I4�媫�E�;�kW�q��~Ui:�X�S�=�˅�y�`8�I�e�+v�K�����
 ^���*`sS�Rq+	;������t؞/������ۨp�F�H�XX��}������>��.��^j a�|gě�/� 6�0���V�CS��sg�4��/����փۑ>o �i �taS����}����ZT��"�{�u|)����/�>�G��NXOR_o����\'����:/d(mӸ��u��w;�      �      x�m�;��nDc�Qxo����������*uеyS.�( K���������������������?k���?k�v���UУ��������d�+}��΂�kWHv�_k�ʾ~-����ZH{���ިsU�=���F�U�2������ת����~w��k6C�>���WM΍~~���TI��=~�ȯ�ߝ2��w��K%����%�2���	��^��:���C�'e�Y}z���{F�3������rn���s���8�7d��������{S�Q%!s�u;����z��<��{C�{�W)s��~�
�_�<WI������~����_������y���3gu�z���=�s������F�s�q�Wɓc~#d^��F�s��������^�:B�Q�k`??���~��L����1����%��U�9����*O���7so<�7c������U^���T���{=��{���J�\Zt�������W�<���W��.M�r��T������s�K'�<���;��UuR��N�����^��~�=�!�[��CX��j9�*
�w��(�z�+7��Z�,5'�Jч>���*�	�`��]�
�R�� �%~�	m-��+Q�%jK�W��.�{��D���ĵ��R����w��vc�T󁎵�5��}(��V� �R��ι�d$�kV�~��f��.�&�H����zt4���5���I�"c��9U-�e��]��|�q��'����y�̢Ԋ��M�o*J鵴oT�	��V(asJz��]ҿ��5o���	���K�\[V]�R���5�T��$�so5�;�U��9]�R�h�����(At� ���KE�s����Qi& i��$-�h	����9j+��&g�ܫ��s��1qjk�P�hX���Rr͜{��kig�{-��T-H_s�`�T�D�-]��}�`�\	��TQ�Zm߄�{հ_e%�X��D�.�&!�g;1VVm�0��XmhL�z�1��)�>L�*$Ҏ���9:����NǝX�Ǫ"X��҅��2]i#��^mu��Xk��kk
gA�r�k�oKW������*J��TǝX��q��j�߉�c��^ͧ����i��s�%}b��վox���s�����)ȼ����>��}��������-=q'�.E Xi�|`mY���+��^�U��N���Dk�zL}o�s���Ι�밋�tN��*��zL�t�5t�z�Gv'�zi_���^=�Ƽ�#�}�s�;ܧZ��ڭH�v�(�}WQJ?T��^�k��[������`cև��r�n`m�����מ��k&��Zڑ��P��~�����Lp\_�o��Kz`��h��C�p��K�������y���ĩ-!ҁU����#�n���T��2�n`�*!V�Z�*�V
f�Ɣ^]�&��Z���h%�`!K��{m����\�{��Ԏސ���G��N�������%�N����9�����U��s�RU��l�~m����ч/'�����Uҫh���W-bm��-W�A������J!?��^vþW�icN��h"�;T+��'���U+�d�w�*��)�n��#��K�`߫V�}9�O�~]�(���Z���k���'�j@���:���D����j+u�v�s�g�~�U��_{����8��#�Z��ӯS��n�J}_z�I�V��$�J<��W���X����~���OO��EϠp�dO���|b�OZG��&��Z��k�k5_�׎�f"���<�~m��_+��I���VGt@߫���Ei縭�^y"U�	X[���V+�H�;��v��Cyb�k
ӯ�uvΓX��WZi�L�Z׺��V�9��>K��s_6��R�4]Ԥ��j�g��Y�[�=��Ҟ�Z�f=��
�=��s� |�uD�X�ވ)H���}����<�5�1�^ĐuG
�����F��Q��p�׫W}*�� ��_*ʝSJ��J�SE�s
��v�Vo�������*^�"��%�*H��B~<Ú�hUB��]*��\meY�Mobm9�Ut�d����������zLY��Uk9�U��S¯Հ���_�ګfX[���@�Ъ�+׭�Ҝ{��K�����Z��������%�k�*!ku��&�nM��:g׎��B<�zD���M��rtD����!{�;�9��k�߫�<�:���r$�N�bȭ����v����7�v�(��:��!�(�/���:VJ��*��M�Vq�w@�ׇ󈥽����7�և/�v�ÌFiC�j�L윚/��RC�@�JK���M�v��&�.����a߅�H��X�[�w�c��k�j�Ԫ��9`ob���Z���k&k/�	Đ�><�*c�JxC�*:�^Đ�!q�T����(��r��p&zbm+��'��@��~WQJ_J�'�^��j>�ku�Б�T�{���=��sj�r�ڰ��*J}�T+���KS6Hb�̂�~�����V""*J�3�~�<��r�d=cȫ���9�W���S�~`�ԇ�!��ޟ�Br�:�ko��@z�J+�ӯՕd���Z:��NZ;�'�*6�_x'%�{蜎�ک�Ԙeu�!�Z��6���^'X�S�Vۤ��*k	�V�V��2�:������҇��Y�}�R���k������X{=�����!��zd��B<Gm!���0����pwR31ιGY�
~my�}"�P�rM!�V�hC�1��ז����v7��:�k���kVW;��T(�BĐu`ke�v��Zǌ!_����֢�VJQΟK�#����c��ku܁���Rz>��eu�����VE���@�ȍ�-7.H߫�+��Ju���F�YE�;YU��SE���B�>L}_gh�_����!O�J�%bȅ��Qe�Đ��HV2bb�xU�;����}m�����+��k�78kw��X[;g�_��@n���Qw�� �.Ʌ��H�S�o �,QCV�'��ګX[ 6�F�T+-�21ƃ�#!R�L�BLAEi���F�֋�HI���X�U+O��*�k�s��^������:�X�����:�U�[7�Bҹ�R甋427�*U;����0�}�ǁ��^D�U��Bm��ko�#���H�ֳ�X+��!O�uD�������Z7��a��F��H5. Ѩ�����!k�k�j�~�Ԁ�׺y�{Ղ�Q�9��Um��k��~��Ib���V@��(�h����0u�T��W�"�P�үU��@�q���1�1d������V�0����V�
iȚ��Z%�L�ז��kk�X[�<��<����ͅ��j.�L��ecN���:N����O��W}�<�߉�ڦZ��/�VJ�m��~���N5���a�fy�eM����M��C�����_���v�ux'X[j{&�^��Q���Ω���|��N��	����v���~���W;j+�^1C.Qq_��@�V�Rc�ڞ������z��(���8楶R���'s��!r�j@�!�ώx�^���)h���W����Z�s4���.����Zm���� k�����p�!O�Fii�s;�Z�ds�;�1�þ��kgM�@L��ǫ��w5�sT+�V9���o��<dy�]E�}�M�ښ�!7���ZEW愅\3�~��dүU��Ҥ����y_�F�zb�\����uX
�/}���k��kw9,X���ܨ�Zyj��*�V����9j+�r)w�!k�64���QX=�BN`�"�1�*J�Yg{]��j1dՂ}�V�ׇG�~%�����bV��QO!���Ԗ&_x
[���_{�-d����E[�ګ�GnTy���E��DEnTy'X��VZ
u���Ҙ�1d}x���Z4���DEY��p_���1�+ME�9%}��JX��--�Zm��q[G�BY�}m��+�Z��.�זr_x(��VGy��Lȍr[x������-<�-3}��O+Q3��Ǟ��z]y>�]�����Z�#�k�:GBd���B���֖����er�JTĐ��YȍꪅxN;�Vws�1䚯�!+�ue�`�+�1NDU�VoKq���[�L ku���G��o~j؈!7�]ŽU{Qص����}��X�V���ի���Q������Z9R~�j1����9:i��G��    �<d-cȪu�}X�Z��ZeF,�!�|��]�C.SqkNv��W�U�pV�Z=9�}��ROE�`�h�"��JT���VX����j=�_�Q~�ҿ*��V�#7j���^`�_+����rX6����̍�������z@E)�V[��/QC�$��yk��;�ڡ�~�x�~SP�<��v!�Z}����hS����r���������{�9�=��Fy�|%���N�����:|~�TQ��#!r��Xk�)�x��K��Ƙ~mMr!�P�
���9?��j��!���kKz��Ql�r��؈!�5F`��?y*6��DEY��~�,h#7j�CdvIT0?Ԁ�sC.�n37��c���
-��hO ��q�\3����Y�x�#^���֖ʹ��.��+�#��T�^y��
���J��!+δ��5lRXԢ!�,m��V"� �L퉍�S��~�r�vƐ�3�<-"�j+w�X.$Gu����)�,�=�ҷUp�ʐ�l�䔺�5�W\�ASex��z�S{�0���d�#�W���Ȅx��z��I>\������d9��T�f�qCilx	$2�b_y�������8���#>�oo���",_�XT����Z2?�:�:)�/�tEr�a����u=Ѝ�b�ꗏ�T/ov��,w�<*�;�x�e���T��-}�8<W@�K�x~4ȧ��^&��7���k^�+pH���J�X��9a�����y�!yν��b�9������A:��B�k���u��"�� د������#$We��h�H��DF�X��|����*��ۃ��~aw�^�y�"ոޒ����Dл��-�+\��U��+�g@���~�x�Gt��>]f�}�2��K����K��ۧ	��g0���,�����q��<�z?\9��٩�F���jx[4D�<�����z<��LCeX�
�X�\�&y�_YV:3Q��2\��q
��!�����sx{4^��R���Ӭ��s�1H%i�G�Ȥ�2P'i����X>�]����gG�W�3��χ�ś5����C>��2�H>�jX��K��EƇ�m�2�ɗxn;<V����d#�ɪ}ߞ����QIf��R���j)[��w�^ߎ@��M<��ؐ"-Ln��2	��˔o�`q=��p�)���<��y/��ޞg�){la�iz�[�K���_�xݣ9E���=�̪=<O�Y�x�mۆ��|�\u����>E޴�n:�]�(���2��]{��iٕ�pˬ���%�*�]����-��W��C"��ō�YBv��σ=�8�=�O{��W�k�,���{-��yz��kpϛ�M��>n��[��K�7L<ץ_����JD�ɂe��x~���[eH��"3��-R�Es.��=>�c�����}��59d���e�4/���d;�]�b��$+����������Z���7n��,л��L Svo;�~$3���������o�n�^cʵ)7��*��� b~��$���aY��j`�:�7���F���.C�G��ȹ�����v	����.����M�d�s'�/����H�����'��~��7�\���[��s�xji�.�v�?�+�=�hO��c��%��Z�� ���fn��u�_�l��M��i_Sw=$�K����uO�A��}��$��8|�� ���z�l��'�w��s�HI���͒S�\_�ZS� Y���p)��?����eI��g��n�>�D�kc�ܲ�3�K~-�4 ��>3��Ábk=����v��%���z�y�����Ń��z�z<�χʎW^d[��k`��#����=p�|e�����s����*�3&�ˀ���L-3�<�ϥ�@��g�����-����|�,Yp�-���)���}�~ԃx���v�`P�59��5ߒ���P�p-��s����� ��N?
T\zP��ۅ�R��`�h(B<��6Kv�����&�e �ռ���描��-���j���c������A�%;�����z��|>�r[<s�!M6���U�`��rPt���}�V��f�!%�} S2ػ�8�9 ��\��kxh�X)غ�3j�G�K�#����\����}�3�x��4��;�HM����_�s�]��A{���f��;���ֹ�o���.��i�ﺬǑ�6\9�����ހ���qy�0f�o�> �� �B\t��`l��R�OK./�඗#��?Y�[�y9˻���z-�P�[�K�o�ە��^ܟ�?Hx�%|#����
M���M�09��
Co��]��!N��oD{��ߓ�[/��q�iVw=�]���e�˸�/e��yl��$���o�W��ϡ��(��ҷ�sa���K@�5.�jl  �����z�[�+���K�L�²���I��%���/���˾Ƌx�������2�����B�ۻ�?wY;�I����뻳yq����s�_ܟ�� ��4P��n`�3	��f�,`����L>��+��"��y���OH��ʹ�C�Z�7�gܟ[o�A�G��.\ %�^���x.���9��]I����wI�p�`z�@��8-����W��s�&d�{ݐnn���s�>��8o���o&|>����^Z߼?w�4a�rx�5��|e����A��^����t���i���z��韻����0���p_����I�_�ӏ�̇�_k��_.���M�V�����w�G���W/�Z�s;�?:�s���u�;^i��B̿V�����b��~�~TG������zy��O����Ku����!�.[�#;]�
����u����\a@����(�|�N��_!N�cG���VL�L^1�I,V�(Yo���x��:��c�{��ܿk�����v�#���c^b��>=��χ���P~D�>�H1�_�i'�hLOZG�]6���^�c���?��>�ϭ��.���v�|p��|Ir��7[�?W�b�nqj��qQa-�Ǿ3�����~�[���,I�r}�:�#�s
�\�O�[��?��x����/��8��*?����oɀ��ψ�{��L�|=��M<w̼�?�~A��{OɆ�ý���]ǚ�&�А'��s�U��9�
�d�=-��-�o�m�o������HM���矯!���"�]s5@�2���^���Yc�>�⻖�C}��|����%M�����ϵ��s٧IU��>��)n� �o����o_��Z�ǯ�M}�܀����Ԛ{��=��|o �21����v������J���
�e��̇��`~��OϾ��YR�3�Df�?HL<��yn�p�S���0�<f��"~�����������������=���es���q��v�L��?��]n/�C6�`>�Ƒx>e���w���.C>�dۊ0t0��e�/q�9�0�ܮ�ιB�]~	�d����9��8����24^��������E���xnY��z��v�%��g�?���9�)��|΁�>3�碣id<{�-�C�@>��F�3��՚�8z�S���y�����0�|8������o�e��&�����+q����	<�.��(������z�&��?�]��#��o�> ����������{��?w^��lL�O���s���x�䏙�-�>�����������s��&߫ip��-�E5�ȇ�����Y 5�� �p��Ƚ'�?w�v"�~��?�+�����?�ۓ#�r-I�Li���W����z�ϛ���%��lu�=�C{���2�C����,��k-���1���E~�;��v���Ls��g|w"����R�}��_�A�&��z�?���{5a7�Ӗ����攔.��ù�I>ܟ[�!��D�]���L#N� h�l7M��W�w��`�ix�8!���>o���2#Ys�x��8^|.qn���s�u��� ��/�L$U��I<�}cҪ}o&��%�x1�ex���k�ZMz|ϵ'�ϻ���z���e*�k�?�?���WߠX��c�q M  х���o���T�}%YکwI�6\/�Dł@�6���G&�A �����\�tk��%ߚ�E��򷉃_�>�zWkҵ�?�L0m�?����O����`$���} �+�At������/�Aj-O�Ӷo�Y +�|�|����G���!~�z���ހ�����eA���x.v��\w6��0.�9���4^ܟ?�\/�ۿ2���8��>������v����� ����?������ޟ[f�?W�i�?�} r6�o��M�qn�g1|[�o��D>�����p�C���|0�nY�N�}?h��������,�?�,x�&<W��[����_����i��/���;����t�m��.�ZG �������z�����_������>p��o���o��}2o�?]v������12��g�ȇ��nХ.�K�V��F>�vY��4�q�-E7�s��� LnK��&E��τd�O�-3X�o�q���mz�o�GF7��M<W��o�n��\��>��N����������M?�m�ՔS��p���^K���e�z_�����?�+���]��8�?6��}��\gz��\6y�tVI�&���o��OFgϽ��?o�x�>ϛt�F~�|���v׃�Ҝ�5��s�U6~�u�^�}<�v��@^���8���+�����o���y��s��ϭ��^��t��M��}����l���s�<qo ����l�5���+@��,_�c��3�?�nd��9�{5����3H���\�p~'��'L��_�>`>�Ɔ|8٢��s~y἖��ˆ�ȇ�����s�yi���?�y��W�o���?���&?\���������1�      �   9   x�3��M���2�JM/�I,�2�t*M���2��-�T��M9]+�SsR�JR�b���� �`L      �   ^   x�3�K�K�*M�I�2�t����M�L�2�t���I�2�t-.H<�1�˄ӱ(=5�$3/�˔3 1/17��(]���_���	���A��*b���� G�$      �      x�e�1n�0Eg�<Aa�v��Y��څ���,��e�G���X)��v#���'�@/e��v[�Ñ�kD?�3�i��1m'K�/�X�nN��BVb@ǘ9��M���ɩ�G��
�m�i�k��r��9�Yؑ�sL(w��3��F�88�Y�%.8�gaUr�P�g��t��
�jm�(��v����&]��_;Z9��Ud�}�%�xW��A��;f�ѹ��Co��~"��n�/�Wio�4�\�޼?c�6n��      �      x�M�I�e)�ێ0i*'���^�Ϳ�~`�-7o\�H�X���3�������g����X�����Y������������#�>�~��������uV��,�֟�g�d����~���7���%��p��b��=њ�۵޾��w�1;�����~�+��W�_T?���G�7o�#���L�=.��S�8'�Q������g��f�}k�a
Y���Y��Y�J�SY?~}�U|�+�Q\�Ç۹��\<|87�����y��k̷J�w3�߭�=9��ۊx���Ug��9޷9ߙsA�Wi����J�ӿ�'�'���e��۟���̵�ċ=��*��
�|g.���I�������}��U~c�U�;A�;sדZ_�=68��S�)����\���6G<1΁~�Q�(s �9���d>�����L�eNg����'�9w0�u�0�k���w�S`.�߬���>��xa�s�g�s�gI�8���ެ�G�����-vr�]�w7\�x����L�4��,f��]�V��Y��}r^_���.I�$�to�{����q�6c=���{��	����J�5Z���Lb�̥��bip��-�kI��g�q��$ɒ$��e"�J���+�YIK�9z&4�p���?^�]VK��Z!4A�5�}v?���P؝o�5�3����3
ok`�k��b�$^�"$�~�f�������u��m�;����u|��x�FK�	G,tr��.`-$��fㅟ\D�V<%X̲V!(!��[��F0do��	�kc֎�Qk'��bFP^6�Z�{�C�8���ǖ�V(��ǥ%^Z.I��b݀`�{str}�䐥�`�ķĀ�Cʗ��n�
�n�\V����-��+����3j"����IX�%+A	���N1`�p`g��B�V���=P��s���omϑ��$�KևJ�g��8{���=�?{���0��F��=RX�ؽ�v��lOb��K��=�mO0�� �=��,�3���>��#�o[i�^�ǽ��"v���k/,`o`��S��-��d�Xa;ln����m���nϲ�M��g���\۰�m��xư-��@
��\�AA��'���o8>��K����$.	R�NZ���{ہu���w��vqv8��P������s�r��r��p�N�-_��Kv���+��)���iv���vI�%I����h����$m��������&��N����O��l��l I � �RO�ň�6���+U�%��	R�I4���qF��6AA��C��-Ы�)�2�E0U9l�Q��%�(x��m�`{�k�����6U!���-�/nږ$ws^��b
2CK�T����a�͈of��ěi7�n.I��,�u��K�(y�9��<9�p�ys��O�r0�	�X�H��@�"��r�.�oI�a�ݒ�fI4��$3E�s����V��-j
V�n������b�%&_b_�sFɄ�Z�ǚlњ�͚�ۚhj*��|�5%S��-����Xs�p�ׄx[�H�[O|�%�z�ϩQ"���nӕ����|�Q��'���m��������𓾨��Rp���T	W�3��7���D{��n���%�CsUuܥQ�˗�M�c�+4"��
����Q�r#v+�����.I:ǝL���%�Tgܩ�p�;�'��LăJ��'�n���DS����*q�<�\�K$X��4�_�p�O�ۓ��S:Yd�^DS/�ۋ<�O��#�%��K�
��Ozi��OzS���{o��AA�xe��hrȦ��ͽ�ObP��r� ��0�.��-�Q%�����.��E�>sU�CR����L������#Z�J|,$��-�4u��`�ؼ����aA/�%�]��%�����^��0*Oa�B�$L�f�����R��1�@x�7�$}����u�k7�pb@8x2��A�A��{�B�$���_�4��F����%w�$7��F�ޒ< �E�-F�޲4�lQ.��EU-js2�8QԹ�@�Q��(��F�DK'[��x�h��Ѻ7�K�uo&�ʁN��.r��� ȁ$s�c>U/ɑ"�o)\�I���SN�d�'����{K�^S����m�rQ��E֑��a.�-���h�,m��MF����έ�6�+7�57x2�x�%-I#⤁�ӈ�i��͸X#���oVZ_�N�I��t�d:֝��\�T�5���^����"���q2@A��k��"�MS�$C���-�+gRyJ�KR��LG��k_fj�T򲒥���VΒ$��#��d���En��[G�4̕�̖��r��;NvhH!�z�����^rH�k2�R�S�
F,�Fjȼ:Y�7��Xw�%��rM򀚮�qJ�ך�5��բT��Sk��"�)Lɗ�j��@��@A�������8�׻��x�/)����qjjS���O	�ȄK�8e�M�8e �2���^��@
e��rjA�w���<x}����%P���W.I�M�BZ�*Xw5�
ݛ�%�zI1���SI��P�%�T��{�9��Tj�L-�6��$���
��s�pI�b�k�v+�dѴ��j^���ߪɻ�7��&R:����T�޺��=@A=В��=ح����z�O�{�[�k�����&:��Փ,�'��N�T��T��$������(�����+�R��pI��ꓭ��.�M��z�鍟�W�-Inj
�S��[����mT��@
mQ�w�V���_҆�х��/i����/iǺ[��vݛ��s��	���J��*O�d��v�:�[�Fy�(m�{Kb@'�b'����I蔖�)��KZo­��V���q��[�QuߺȄ�ě|I�����M�@˗�r�nb@�vk�&\�-ޚ,�[�\cr������1�qh�k�:�ƈ������^�1�h�?��k��<=��f���<�7���#����_İ���)��o��N���-tNq��e�_��1������c�|���>ߞ��3���{~X챌/~�R0q�������1{~=�3v:���N�����}�<�Wg9����'�}E���蠟Hs�0du����Th�z����΋w��jt�wCV��{~=���,��_���y-��:��|����=b�{;���;���ze���������_p����:+���;��9_���:ww���I���N��t�0_mf�BV����\��n��r���Q�;�I�.��,=ޯ�U�o}r>9����Vn�〚;/�t=-9��y�'�9�[q�鵑�n��3��v�O��H�[���̷c�#�'�dG�#�G�g�8�t�=��߄|r�u�~=��=/@����ގُt��\�H>'p&4�m�v���p�����͕ݎ�ﳀ��� ޶$y*-w��un��7a#�����	������t�^�Q�y���/>���NC�e��q�橹���&߹1`>�[,�*6�v�����F��J�=�q_(�,��M�v���Rp���b	���͕N�|p���#�H�[Yg�����$YҒ�$��ȅ����Un�
���l��\�혽Q���}��$���	�	u0sC��'��1��ח|���5��5�chM�{M�mM{l���f<����\W��x;��;�����&l�5@��#��}dr��K���)��@��'r��_��;��%���M X;9�����v#�\��:f�
���n��s��K���l�x���K�q�c���'3�n.��Q�$=a�uo.-9���٩�~���"�+��_��ӳ �нE?�_��r�P
p�F|i=]��-uo	��u�>6KZRx�Uڭ�S���_��c�"�ގ��P�sW��˒/��w�H>@�E�'W�'W��Ɏ�y[Z�D�_�,�ؽ���K�0}�Of[��v�^D=�m�X���۞X�����ϐ� �=�iԞ�	��$%w�5�b�n��7���Tm��"4�O�{qn�읰I�����[l���`��1���쿲��W��%۰�Le��!#��fJ��\�c��+I~	�!���=��#Gwݛp�v�c��X���h?�ܧ��K��\;�&v �w�&'P�혽������ �  �)���{;f�b�"�\�c�[L�%�k���}�e�ڭ6+��\��N�R�I�.��v̾C6y�n��[�xk�����ݲ�.��S��1{�o�c��@Ĺ��\���F>�k���p�ɗ�$��4JE�.��MrPSq�&��>\rF�Cm�Ǳ-P��%r���e"]+���R�qo��ʶBU�c�%����c���"�I�ܛ}9Ι ��*z��v�^����_	đ�q�����̚�2�9���K�ś|���$��'͋��9!ނ�ۂL؂l�v�~�X�E ���`A�͂��r0�����H�%Y�)Ǳ$�$�$�Y�u��%�d5Q���`���5NV.��H��`E4��$[���C�X���]�I'�ʒ5���\� sH���\{7;fo�l�V ��:f�Kp�8>��}�|�%>AA>�ݦ���MH}V��u�"����n��W�g��\��Q�Rp���j�r��\9�T:�����@Ĺ��g�W�s;f�\��܈�n�QU8�t������W%����7�s�����<����|d�\NFu;f�hP)� p�U����o#9N��=��K<�ݞ sO�d��D��1�}F4���(��k��0T��.<���v�~�x./����F�[S��ֽ��Oz��5J4��Nv���bMc�C�$x2_����e.~�v�~� ��1{7�ķ���%1A
����bcR�I-��1˄~���*T{�^c�����
��>C���o!_�qb�&�zZ���&���1���7ݨO��7�Ǆ�´�aoaXw�i1 |0�T0n�����CO3��o�7���B$���r���!C�)ǉ0M �����1��"�%ɓS��#`�$�zI(ǉ���"��ގ�{����t���@x!\r;f�	����KΨ��e�M��x��Q�j�c�͕�5Ow�c�{�"�ݎُ\�@�$������&�V(���r��r��9�R���1����x�ɉ��I�S{��\�m�ܖK�-{w���;Wh$���\Թrqrr���HF�-I�8���oz��RH)���ihI��v�~��Q�[Zj��\��T�$]o��%��:���Q����8:�Nu&�:Wu��r
�dH��%��T�$U/I�LiI�ޒ�L���r�vK�����7�8�����,bw���E�+�Kn��]�$ɢf���􎓭{k��1��߲uo-��r��n���K���Q��V�Aͼ���KJ���5�ZRC�M��혽s�&\�P�qJo�5���n��/)���;N��Qbw��赖?��
�j��u�O�FKjO��wC%_R�,��k�P���v�~����%eD�2���WF]���Sɗ��qʰ��1{?s*O弈ݎ�o��\���/)'v����\��k��$�J��bk���k��V��P�EHK�hZ�窔��Z��Tbo� �JݛpI%H��KJ9N����%g�v+�V��J���5���&\
�&�.���q����Ʉ��s� O��S�Ѵ����v;fo{ˀ��[�6A�=�Fy[�$o��=�$v��ź{Rj���R�Κ"�b�ⵯ���ݎ��3��혽�-��&�dޛ����do^n��7A�m^�Z9No^2��ʷc���;N�%g�:W��FU��W��1�m2o�Kک��/M �ގٻ��������q\�T���,��
F1�<�zǹ�ɋX�M�<�!-�/i�N�j���N�:�-�hکn.��tM[��.��.i��q��zI~��������n���      �      x�����%��8����q�Ѝ��6�O������ )j��;�
u U�2��A�\\��?���|�����u��������υ�,�����������ڕ�O�'��>�������?��������������M81�`�?�DOQ�e�I�����E��I�W*�&s���������١��S��sW�Wj�a���at���;ڟ�r6X��
���П��ׂ��{���Ϸ�����t�0��Ƈ�J�����׎`����t��3�3{�>�_��6�G�I�ե[����%܂J?	v�������eoS��|�̔�l�b�X�������]��0ۿ?����{��|�:5U�R{����7R��&��Ɨ��u���y�b���̗/��f"����GWK_ϲ��\Ǩ�Ob��6T�W��u.o�u~�W�Ib�ɬ5//���7�p`W�?����R����N��d�������-�lq[k	�����P�>$��}�ǖe}�ט> W9�j>=z=˲�z����9���ؓ�+�c��2�d��1_L���S�]~J�of��J��[�6�7���?[�����Z���Ƽ��w;����]��-*��Sĭ3��b���?5j?e���m�׿rd�����q��%뙮�Q�e�C\�O)��3��}~h]~X{O�S��/��|��^�K��ȵ_���z�`Y_��-b��v���v��!y�@b���FRe�C(Q�)b��ͅ,6R���1����e�>�uY?�V�����K?����m=��S�Nk2KZ�~3����H�m���<O�棈�Vg��y,����1o�*���E����kz��v���6{��);+���?Un�J��؁��>��T��k7�ǲ�{L�L?Ub�z��=s�Ɲ�$&FZ����;�]���-��&w~3+�����c�2wCm.�����<3��f�jx�,�O[�qL[mŮ�����J9�4��[U[[CD�Z�}�L	��&���H��˪˷+�̴�Om�&e�������k�IJպ>Hx�/˷���}�8���HB�,[Z��<��6���b�u�T�~Hr}r>�M0ԩ�k%s�a�]����2�$F��ϰ�E�r�N�C�Q��O#�X�5�J�̳šR��_��?[p��Cb���3�|�\Ρ�k^�$�I����T��}@���i$��n_���z]�Ϭͬ��4�6�'�˲wbu~#$�IÎ3ʢ��󌲻�f7o��e�=H��t��~��5��,����E?]�i7C��wH�=�5S�.v�-�Si_��tc]|i��K�Lu)+���f��%��M�$,�-���Lk����I��X�>h��P�E�k���z���b�r�w��<΄�ޯ�Ci?]l�=�0Y�5ҝ��b�|��rG����K�Ò����«{Y~�Sm�����$ʖ��tJs1X�#�V��忊!s�X��#� "�4[��w�f�8�1˲�c^,�*������۟�۟ê̺�06��Y�,[Y5L̖,���u~�,�?uԡ�,��Aj/�g��/��,��2��3��W��ݿ�]���3�Î;\�\c�1��f01$\��q8����KO?C"�Qո�H@��1�2�� F3K��t��
Zm�g������/�r�K��\Adm�M�ߙ�����b)���o����a9V�,�A��7��A��{�]����K�"��L�(�|zj���n��wj�q!��=�%F+��~��:^���Z:�] \�&׾��5�йQ�Fw�U� ��f-Ć𣜯���/�K�,Gd��c�=��������@��{&�E^��2�(2]��u�����ݔ~�w[��jJ0���N���7Ug��l�ƴ�z�fۛ�W����̌#�`]~ 0m��$��?)V��eY滑��������[�2$SOp+��}�N�W�o�n9x+̪�e�Z�b3@�k8�d�+ˣ�z��q�ѿ}NiF)Ào��?�uY��\yn���ޡnbD��R^J �R6?"]˲^��ͤ?�-?����T)����R��$!X�,�o�ʣ�z�탣G����^r.��HA�����E��7w��!�jM$7B��*���w�,������w����j����x�"��T�d-��Ʋ|?u��_ɡ_)vy)�s��
l����Y���I�iS);��w_��yn\���# �u��
Z��٢`|Y6����]`���K���e�`
���xO���?��m��b�M�������>c�Xd��!Y¢
�[]]"���̥���z�_��u����6�u����=M����b�%�	D��➭��~�`.yK��s���*���'����V+���_S��Jx"��#����L�Ċ+���4..1I����!X��e9.-�w.��A��R������leH�����6
�˒����2[���xw���&ܲ�ZP��})�r��`�7f���e_�>� ���C���!�6��E(f�⮪e��-ɗ�p#�a}Y6�5����E�Rx��ˏ"^�}`���j�:�,on]��4�����+��"��,� �4���- >3�iy�4NA��F�]�/I�Y܍�ɇ7���+��̴]BLB���\�,M	PZ��/ϭ�2�9}���Kf�g���:9OC�Oc"���ĺ�7QǠ���vwR	���P�W ��@.���W�(x�n\M���^zi5�"=���]r}Big-������������k�ny�m7��Sci��WK��������E|�m��E��`��n�֒��p�˖XTyTϺu~���>�yE����iH�3	Y;<ng�MQ��� �"����]kmt�-]�v����'1B�09t���*%�y2@�'�(B����<��oƖ���E�T	�����<^�׽q6�G�~�}�Ai�>ж����zӉ�/���0`�]oNEQ�k�Wňz�:ëqY�gi��0B�n��V�@n.؎�-:��sbV��Sr�(;(�m	���ֹˀ��A 2b���.�:���[�4�L������ ǆ_���|�i`����"��`Dd �ҍ�w�Š�6`�����.�eY+�I|�����@x8�򝈒|����� q�Ԥ�;?��|���l�X.��;�j�W/������s�O7lx/u�M6I�$ᇴ,[�:sعK����/�5����]
H�߭a����G;��	����ب�47��j�O�޲�mC�L���!��?Ya���W\i�s��MnӍ|C��~�������e��9]s���5�ûKd�6�䱜n�{���1Ӵ�m9Y�,�/ˮ�e.�����|-"F�EM;k�'��&��׷J�=�lTq4w��b��,?g��JO�v�p;��pt��nNr�qq�,������)ŷ������F0��޸M�'�.�[NC_WđY�����ܖ�m�KJ����X,8Â�+�F������<�?��;e��j�*ӊ<�'(e�J�!}i������'�b#��'���d+�|�YFqA�6�vOE�aRk9k���_��
H[�Ɔ;x�e}�$>�C.�f�ak���(8�}(f����]��#l��-�@�@�[��P�̳)�Cg���7�5��YV�-�C��u�!Iz.Z�k���i��*����{C��t)��+$��p>ocD�8r�mY�� �	G@n��m;)�"1��jga@�,?N�J�Z.Þ(ʎ�/��q�<" o�Fގ	��2�y���|��y��۪�&���_u���V�0��6�s4PyM�ݲ�n��e'�ӛW8���"ؤ3ٙ/��\�����M�޸:><�M�Z��Y��L�bu��7C-�Nk�v8L^���vo���9���^|@D%2Hj�Y�N��!��q;F�%hPܖ��S����0�ʹ�z���a[����=��M7����(���(�X0��T�XX� �r3�"t���� ����e���X��J.������˲���$3!�S�����VI�)�����    as����f&77��*�v�� �%�#ඬ̵Sʨ��b���*g<�<I� n�L	$���e���[$X/Y�d��mxu�]:����ԯ�Oo{j3~��x�gdC3�pQ����S}ϛ����u��
�]��]%�!C�o���- ���a��n=�d껞֎�@��]��(90�ݓ� T �#^Ƶ���X���-�fwi
튊�v�v�7tG����%���%����'��P�$�T�%/
�owE��FY��?TI*;B�l�i��V������m�Jn{��\ǼU�t;f��]�{oj�qn�}br-s�l���[�t�U��-���u�,���%������˲����������WE���dX/[�z�-��$O��1I��6s��D��q�l<�3�1cH�9�|t�$�J��l�+�?8_��F\�ZªG��E
	d�<�8�6��)���aՇw�*�Ti��f81X�� �[�l�Xko׀� ��-+�-�:������!t�v��aYv0��@�0,c���=c\�S���~9f���q�(��ȟ��\f��E�,?��f�Z.(5)��*l�>g�0��rA����"��ô���T���_5l����Iœ�"�e�c�<IÓ8U�(�Y���t�MO��f0b���x�Ʊ9�˲��E����O���!�g��zTI��"��?�/7r`A����`w��-9���>?Jl��L���ퟢ4��j�����V��&�ƚ��x�M> oE9n��K�uM� Ǣ��)��Ɍ7�>�I�j>�X�rc��v���&��c����벽��s��'��C�/�N�B~T��nQF%
V��eu+*���?R}<��2�"I�,?i��Tq�^�JV��) ��laCh�e<���Q`�Jr���벁]Mv����7�k�Q�Vr�Y���G�q&F�?�=������u��˲e�U^3P����%�Vs����u���-wл�*w��^�"�����w��XIjR�(<�//ɕ9�,t���Ψ+jw=ˣ�x��.5�����x����2���)rWd��5�[v�2�$yK��ݖe�(�k�̂������t�z-�|,�����/�	k� i+7�-�*��k8��H[Q����M[�~��I�V��c�F��i����PZ�D�j[���M�V�y8�;9Q�����J�����A��TG��_��<d���F�d.=q�u�.p����C:�6��-���Vnf�ԇ�Zb���h璦� e+Jl{Wa���U)ȥ�T}Fh��H�`��i;��z�A3^��t�cXD���_]>���m�����%�6���\�}�73eP�9n�+8���s+��n1_��ц�pC�ۆN��{�S�}��ۊ�n5�O-��+�<a��Ur[�bXޏ{���n+d%a!���iq�B0d%��D�!�:��ɚ�^k���y�t`�dZ;a`�̆&xn�L�?�p]��(3ēb�f��XD/��dX�#��������"no/&��  �����Y�h�8�U�ϠY�+��q�7iIi�Y�ɛ�y䲬|��;,���Vt�~m���Yl�[Q�-J0j����(����|�p��80�rݤ��*.�:�4��p�8|���z�@J��a·�d�r���-Ǡ"��0���LD�[�t�n妻�ڶ���-7�of����G	��0�d�ptž�-�y~F�t�(Y��Vⶒe���#g犃ql�(6Z���]�u^-@�
��C�9,z��CG4_7��·~�N�*�RHK�f�q�������V��ʎ�Q�?�k��uv�@rd��d�_�>bi�,��@b��A,w6@�2\q4�.I�'���d�_�OK.�40_/3�OwE��<�8�o[~�H5hL%�-
��w�E�R���@ �T&�Q�ƀ��V�i;�)��5�G~�pY��̨�F"�8��-p�������D��z����忄<��FP(���7����V���o5h�y�g��Bw��8���8�YfQ ���띌�oFxɠ�>6�""�v������q6րv6����_�x7=�H�L�uɛ��;�8�(�U��H9�*��B镳w\p9s�j2_�%�������,�'K\��ʮ�I\\�ۢ�	y���<O����[ ��� �0�_�]~���sU������<��@x�:.\X��]*5�Á'��ŭ_��yF#�s����-�?�._�4fjWA��7(w���-p������-CLt��w��a$*�
�E<�,�%s;�(p��]+p�&�e#hT`s5�L��pn��?Y!.�<ҷ��y��������3_�l?��DO�,9�8�l̀v��x �}�LWɲ|�gƽ�+�pˀ�j���JBg�UBWB���cG��q�*�Y��]U�F���ݷ��4Un���B~������tɤ.�`��
k/e�+M�>W���+���Dq���kY�\Y�qq��8f�E�[HWo*�qÞ��.q�g([u~8���U��e��Z]Ke|��l�r?}ƲUk�<S���$0�Uip���ٮ���lV�+Ë��]d�n6W����u��"�[	'Cj0�o����V~��gS��'
K��.'9]����n����=q�
\Up��-�/����U��SaZ��E7x]e�-��i�e��.e �!sg��y)����f��pಬ�$�"p���&�`�z%�e���#�k|���_4�&��r� �,?�A�}444�l�ݬ�2�����;��x�B�<lWQ���eY�J<"\%�]#_���&�*'+���x�ķ�el�Hp�Fz�\�U\U�ҥ��6��Cb2B�{�N�G��u0J<\%�CDJ����3��,�JV>���r�X�������{�V`�U26gȫ^��l�D��Ur:&���t���ꪠ�U����,���W�]wX�s���E�v$o݊i���Us#��r�(.�/˚s�,sP�o���b�2��	W.w�����i-P��J��*�5H��y��/	$��ma( �,�d���b�[����Ucf����R�V�uC��\�mR�t��X�K��R�*��_^��Pq��v[��5�g H�^eD7�7�@ҐQ�4����B˲���_�l� �7����oP�U⢞����Q9�$HW��Ǚɗ;rz�i� �S�+�K���l��u�_'Ay���hFH����7NJ�H��ߥJ	�:���Q�ش�2�pO�y��k�t������g§���$C�:D.��h�hՁ���7�*��L�M�h�ruXKO����${�{�#����� ���oذ�,?��d�6��r�I�%��d���4*��ޒ�>�y3�i��lW2��!�Mq��n����9Bܻd�9`\���x����Fs�����X�w�qϜI������;Ҡ ���2� <�kl�Kx_��g�?���ǵD��}�Y^�G�&��o_w����F���`����o-]/�Q(K��H�)Gq9|����NM6�x��~�Jv��煙�glt����+��/��4�0�jR.C�5A��9̈́{n��@��I>)0ia�1+�(jX�ǦyL0�%������$�n��4�������t	Ɯ\)-�"���1�&�g��"���x�-��3�iS�����˖%0n7'�;���M�2��a\���h���>/�a�
�Ee�����)� ��%ה%�c`pY�7yM0��2��P�� \����[��7&�|yQ�)w:��hF]�ƫ \ԈU�e��F��R`�ʒ����<�a\Sm�W��eA�i���Zq��#�ޟ��V4����"}�,?R�����k�b�7rK���{�~�q5�7�,;ɗ"?	���o��RHޒ�t��Z^�%ߒ��M`��;���J� ���i���>���kռ~����m��d*B�^���b��kʓ[&\ߎsW���րŵ�p䣉�Z�J�t�[-��e����1_&�57	.T�Y�qԍ�~n�΀��mY6��Eq�R��Y��g_�%��pu    ]�������"gC����f�X_��Dss�B1���,O�Ip���p���6wH� ˵fJѭ�.�����\�����k���5����f�4�n��˭� �g��(������Yq�㫹K��\��G�5��j�&X�5���fX���  ���߳��Qyj �5�N�a/�0Ưw�\#��`qY�+>3��{�A֍�!˲ɘJ|<���z�0�W�����kd]�g��Gd5���8r<���ۗFF�$�F�h����h�@�9��Y���e�.V&��r�_gy�0`2���WI�r��(B1���˲=y�p�N�;M'}�7OL��)�F�?���^��5O��UW6N<�\`���i!���2D�ux^�����@Z��ʐ��\�┑��J�|�W ɵ�R��+��W9��<��(���S��	���ɽj���4 ɵ[��-��D��a\S��o�I���H�#F�cMπ�\c+�����T�b٨b�j?+ց��3А�Xr�-�;#���R��L�����3�+��h�ٺ)�i*˲�CI�	�\c�{�	Ȼ�]|�)���^���,�-ฦ򔧓��z;�)�2�z-F�aH�#�	wF}�Ta"\�xc4�{a�^JI�y�\\)ߵ'��nP�l�D�k���z6]���>����h"ty�6���i����1��-*������l��a8@9��76�t#��~�����<K�7������P�/�4�Fb�t���/_~U�<��a���k�$��knT���F���˲�E%��K�.���x���O�0�T�2�V�Y���t9�����8J&��qȹ��i�d�W�jI6�d�c���i9�` ʑ�������_MӔ�UIɸ�a@�,?���%k�	�����Ϸ<7)ؤ�ӜM�4���/��丵�v�p�$C�_0��L�Y���X���F�_�d���/��Ê�5�����VU6a<��\�ՙ�F�`$0�H��e\�L�3w�y� ƑW��v_{Ji���Q6p�L���n��t �Qvd��Nru�0�8�����{'P_>(f<�8[I⌨��%��re(" ��i7�8�]����o�ӧ�/ꕔ�m_�:$O�x"77.N��)А�A����	��ɷ����P�={r\ܚ�I�ۼ��Qy�Ӱ �a���$�(A%���G��øxY~��gI �Q���ԧىGT�3.��2�xn��FO�]Xq1�F�T�iF�s���p��ӌ��t%������;�,1,�� ��������Q���`9Rj�[J����j,��Ma�Ty�n5�0�_��63w G��ބ��fb�L�&p㨺.ḧq��%�
�G��Eb�5X�]��E���3�-���5O�$G������,a~�s�n�zD�8K^���J�YK8~�k��tV�!@������q"6VM�1�q���k��0*��)�@���})c�k`9j�Q8��ҖЛ3�.��ń�u�Q�����5�jy$�c�,��r�lX}X[��\��&06��E�g§϶�&��|ώ;vFBir6����:a���r@�#?7.F�v΂e���[�21X����L��br�1gR���<G
��BU��k�/:r�a�c��!4b{Я$r�=G� �OgZ9wAAD�͛:-��09�tr\�Z[�e�yK}d9R��Բle	�m	U�<�Wr���� ̑sѠ�,;��<�r�����w�����������n����,�1�MF���x5Z�ҿ�$U�%�k�uS7u,&��o��[/�������v�u��,�{�.�9Rl�-����8�+Iq�_1e
�#��(f,�׋��1G
̝�i5��	�9r�\X�Z����^��#ʽ�g��E�$E�N#�'�K�r@�ȏ���\1�E/]�<]�"�r?2bE�>m}����Y�@�]o{��'0�Lm!�r�╧��N�_b��и0��[�II"��;�޻�>������XFQZzm�5)?@��t`�/j`�x~���p��eمCyz�Q�4FTזe���-�#G�{9�s��9`f+��t�%�׏�t�=�{�и��e�Q%Er r4��H���)����a�[4�YJ�$�O�?�O����FW�sq��r�<QUqY~�g�e<��n��4CԹI�&Ve/�/�t�k޲p\W8�T�Qmwf�sq��r=iQ�k��ן$z���ƅ%ž))v���5�G���L�ށ&�0Ζ�Hޏ[��c���}_I�͛Dv�ĸ~��$̎�P�6�0�}`��K�T��2S�z2zgx���,F
ד���i�����P���r�߳,ې*��m8��F��Qe�&��?gYV�.G�Mf�g*��VgFݡM��[^糣b�Fd�~al�,?<�Lr~:q=���)�Z����]�O8ޘ]�c�:�o]�)#9�Gj���}�M�U��u���%�כF~�.Ur��mx��t"_�3S�ߺ��g�R)ʼ��F��EG!�}RM6a�*W1��U�����ln3�K��~ځ C��w o]iq�̧&ۊ⠙t(S�b.8�gY�@���� ���wV�cD�Z��|ۀ�z�����Z����������G�����@��גkkF���܈�D��2�;�b7u��+XQ����A��n����A��e�3`7�À���ef�΢"��q8	��ʦ;�v����j��we"�4_4*�ר�ӝ���� �z���w={��׫�a�lY��H��z�צ&vo-ˏ��c~\�V�U��M�h�
�$*C<�|�x�<��j]��^��L�]���D�+^=_%�t0�z�~x	O��/\o�-����4_̐��0���,��|k���[W��8(����!�i������U�L��̏�!�P���ѲlA�( v��
���vk��[�z3JQ�/m*W����|�0�������C�/HT�tK�.;�Zy?@ݺ�TF�$Dz_Z��t�uUv�"ĻQU3��_ D*;Y�������+��Ʌ��*��p����rJ&/ˆ�� ݺR�NAM�8��:��%q!�oY��:8.Y��;�N��n�7n�xӼ �i�y@���K�^�B���w�m]�Ӓ�YJ�o<�~�m!Ѱ�?n�\����hn�Ʊ�`Y��C�6p��R�f�V�$z�w#!��R79_y���׻u ���B�{�׉�׻����!-�]`��=-���Z8E����;�������s)ˋB��
���C�.j��{�mW$*Q��Gz��|���u���0fX �̀�� �u����C���;��z��x������n���p�碷R����kC{U����p@���'_��T������[;j�V�)�Z���9�pN��:�5p.p�l�g3�̒� ����������.���a�|6�R�q����u7<.�uv�m*w����R�ZI���Leֶs���� ���up\�����_�y�Ú��J��<E� P��p��Ը�LY��<\e<�xG�ɂ�`p\WVܢ�{��]㎸b�����W�����8��2�ƱbpQ�xj�T����.+���߳,���d�o|Y����;��]*�ę�Q*�Ѽ�~uJ�L�'���k�K]s�.���V�u~�$���79��W�oJ�ɏb�b4�3r��HU~��FV��E-R� �>f̊�qt�^�}�*�+T�9?T���I@�8Y��]�=��I0`��-'���k��4'p��ëI|�K�{4�a�]�&�Y��� �Ml��;���Q�����J���<�WIp��o��I�N��eg�e�p���x�S᏿4.�G��p�)c�i+�>�.g��4��}�8e8&�]\��E^�3g�o|�o�zc�L���0���ؓߢ��}!����d8�.�����w=M���J};�?b��i�/�7vz�g��>�e�n���|&X����k�@8��7�q�tg0��4; o\�:�Y���̳���o�v��/~�+�-fx�^�إb�w���.#�@̍�U�^J�拧�p���G�z��+    ��.F�?��zX��F�wd�P�sY����X`������*�d�<f@m�P�)J�Wb=F±�����-�"2�(Yyo��\�S"�g0_�~u2�Һq��۪m��+���RL�_��~/�7%J�f�gBs`^�n\�i=�DWFK"�8Ί �Z�u�wz���f�Å���.9��$� |�VykD�ƌU�7�S�o�m���my-a'��euX" ��ܸ��-�K�f#��I��
�Eb�%X�R~|7n�s'N���
h�/d(�Y�!�s2����F�v�F[�`�]�����ͪ��dfe�ҼX⇛�v�`?I-U�f�q���K�a ��d8�k;���/	|7��p���Yז�z�L���" �5�/Y�{����M���m�,���M���zw� �'UW�&��XG�ş�^�
k��F�d�g��-�w��� 8&'��Z�F��ɑ�F��!���	q|�p� �#�,�h@{��P�ȕ/ٺ
�;�[�ö,kn��&�����Qv�No�ܰ#���i<��! ���
h�^�;��X80߸[(�̲����0�⸻Vࣲ����� �5������ن�B���N._dq�(��O���;I�����bpQŪ�S\�%+��J͟�z��+�-�Z�eg��%|c������k�Ϛa��CG�s<�,�_��:w��tY֑� �1��U�N���1;���<�ؖA|cG|;+�d[|p7V�-Q��C�q�G�t��5��t�9�zԍ�epa�ֲ��XfH��p��#�GIr*(�ݜ���F��	ь�_�Dy�">�7��;lw3�l��� ���V��l���|�a�{F~<���3�(��Q�����/�������
� ���%e�q��˚~C��,[J*����/�����A��/�=�XϻJ\"зq��~1��4<�c_IX��2�=�Ǖ�^W��+�/��E�������w�5wa�bŇ�l�H�<�p��=���C�y��S��3 C9���k�%�>�*�#謣��H}n����M�����o#Y�p��?����V���ܩW�t�����j�d�g:9�� 7�%o/���y��ӽ-�4�3n,ˣ0~�#���4�$�M�p#9͇�F�G����Y���
QƊ���C~Xp#[~��$)����p�1��bYdTgB9 �
u�Ԡ���>O2�C��ET�F�i��,s�	��$,H+r*��c(r�3-ˆH�? ?9�S~�^Ҳ�P{�a��0c��(.�n��8 =9��p�-,˾�r���F����O�E����t'ÛrY�'��䷡ \�s�e��ǅ: čbE�3��r� #�F�@8,B,����r8#t&�k��.��ړ�8���e���n����3���`W�*��QD�����n�f�H���8�ǭ�M���F����pg�O�r�n8�[�|-��|ϟnx�[De���n��	|o5gX�[�]ۣ�0Fj©!5�7�,e���Q���*�r�X���O�I�i%�izL�o��nɻ�^b/��c���赅£�A��01n�_"Ƚ˹6dm��_fm˲�����۸�n+��Nrv݁�K���Ѭ�p�^��PD4m4X�-7)m��Ǹ��ʕd�v���K��Ӝ��@w^j2n��2���&�N�;�6N����m.s{-Y�k�7������Qs���u�ր��f��a���[Ji�,́|;kp]:���,�����R�6n�M���h[ d��6���uYv��$���~{+!�C~̂d��a��,?2�$o��Y��W�͌ 9_D��$�+���.; o~�&��A����&������&φD>Ś$z �6��_��{?q�E��m��|#�-��<)�a��uq$H�g#Bn����ގ���x��m��_�
*�7���0|X�M3"K0:B�N;gp;�/}R$CS�p�O�U5$�`Í�ڀ��_7�h~SE4Ǆ;�_�/3K.	���4���)O'�ɡ�o"�.�c,��NDm�)5����lfa�v ��Ԁ��`���y�_��7�0n�������7ZnKhO���~�2�\ p���2Ֆ�ƑT�!=9�Yo<ngs%м�&�"��U>��G���}	�	W����xO"=�Ía͔���e�G},�#��1\���r��#�m#a�u�=Uo�7����,?{M�4c����PF�4:Y�e8�ae�םET���1\7Z�2�Kq1k�sê���vn�o ���<e���r��K1�Ks��Y�m(�Lt��W����:B<�eW��oJ`��>N�hν�U���6�q��r�?���~v�jD��/��~�K�����_7(�z�%>PƟ�l9l����f�d��y�֕��eي
��Οm��Jd�Y�Bv�}�g�ao=.�l���LIW��r2�yI���!�|l9��"���'���Wa>�K/�#���3��O�"�+��E2�u���<|)�����?R���8'�	C&��m��$�8�Ԟ�,�w����@M|z�y^x�G~�m�!9n��|*Rs�1�x[/��i9�|�_Df1ћn;0���F\��Ä�Ί
�n������}�ѹ,�V��r�Yސ}��|{�"�'e���/��lh��Qn�������ěY�d0��I���6˲:�
��<��ˈ���E�>*~˃ظ�zZ�]s<n�<d���6�`�k.����Fv���s!y�%��q���laY~J79��e#k�>k���8�R�g9��w���97��E^6*1#2*pQ�V�U�eY��0�����T�/��1�l$֫t�hjT�:r��q��mb�]8F��]���Ƅ��wE��é�yݴ�0vX��ܣ1�*����:�,k3� 2F6qR/Gӌ4ӕ1�s܍������'HnnT��;�3�֣t9.yٵ�}m�n��.�1yF�Wń�U��Q�˲�f���"pp��G����,rT��
��z�;0+�H��2�X��@R.ĉM|py[2|��d��A�S=���i;(ܞb�Y�-1h���_�.��ݴ��p·�Ąu�c���e�&��$���l�	w,���2��p5�J��,���|��˯��ӷ�Sc��Zw���;oJ\puE����S�{�.�E�_w8hY֐�q3$��H�Qk]~|Ա���[l6�ԉ�v,1�.Hl���E�C��u�t�(���s�h�/���f�ۙ��B�$���<FW���p�<��H|p���W]$}�s��˺Mϊ�I��͔f��l�G��t	 ܔǰ�jY63�n]�f���`�N��{��d���Z�~����n3��0�\���%�o������e�Q�xQ]�`z�oz_M��2�&�ʼ�ב�H̍Ą��p�%sGY��v��!��տm�m�&�Ǒ����9i�$���ݠǳ..��|�,FL���V�V�a	 Ȫ�g2|�	�3��KC�,.���*���"x�(�\�,����g=�n��R���:^�˲e����~�[���HY��n�0�_���,ӄ�&9�p��&�zAyh���.y{-�Y+<�H�4�t�h�D�M��v��#�=�gD/�H��	;=�	�����sb�k?��q=n�l��Y+�q�"����]�N�|C����/zHثLW�A�e�Yk�];�|�Н�غԕ�]x"q��ot�V�jJ��1;p'nk�N�6=��.'��?Y']b�l�o)4�<w�N�3f��FF�QB(�~ʡQ#nRu�i�lbF|����d�����-�&{a1dE�#q�,�Dn��?�I��㵖e׈غ�"�p��;}j0�$�8�H�󌛌����+��Q��W�-L_��H�6�]$�$_^�e;x�"{8���s�o|+��FR�H�OX���ʏ��)vy�y5�����jhQ8��̢9��q�����T_����%%��sjK�NR��m�q���t�D��|�m�㙂���q�8�e={!�,?k�R�K9�g����K�a�2���{jGX�	�H$�    �s+o�P���!9�={$4��,?�� �����h�a�]F�:�}4��*�]f����K�|
�E��)R\�X�-U(��ʅ�eÛ��9u�.�\�q<�h�]�&���>���`O[��/��]x�Ëj�<;i.L�O��,p�M9	"� �%�̝��?4#$�L�����W��!3��&�X�� jS��xW��l=��\=#�)0b��j�/˶��
h9;&V���a:8�
+ή����}ꢐ3w�g~�e>q5�`'�2
��e��$��L\�g�,ȨI-�]3�l#.F�:ӏ�Rq]UX�N��X�h�1���'������1-�lD�vn��b�gm#!�b�]
�-��]���q��w\��ܑخ�H��%��^���+�����Z��aY���"sh��7'�x��E�,/����;�#��"?L�I�X�^���᱒8��i��k~�')H.�- �K���(gA��l2�l���o	ݭ��l0�jMa`�-���J^80��ҴQ��'Z���bX�	y���,M���%
����.���W��a�ܲ���(�mjʑ-q�bY��oR�L �Rs8s\lۑ��@B0��S�u�v�da	o����+,8�˾�26B�����6�7�[�6|S�pso���a��b��3�w�O�#�x�77]:���o��دÆ�l��쵋.�Kn@�k	3n(qu�d7#2�p�O��q�����r��'��d�ٝ�[O�M:Jf�FEW���緗gx �2�Ƶ�^8`��s���'���x`Y�z���/ɾ�𱑼���<w�!+j1�J�l����K^��UT�U@�7v|ٰiP|@nB-H�찻��l�bt+a6��W�Z��������V�oh�M��R���A���?1�c�`|��5w�KV��%�נ���
��j�F�W�=Z���K�ڀ�[kY�^"��Ӏ5w�yť����7 y��M�3���N�<�F�~�!�3��S�;-`3ؐ=�yl�s!��~�oB#p� ��:��Oa{ Pv�a�I_�t3"����`9���S_��E�/�fv-m1#�*w�#��|#z��J�]��Q>�"�Q�)�a3�������e$D�m^xm�оO�{�|$_�0n%�p�B�'�������l{�`?��"�^���tO�?������m�U,ˏ�`X�B�1,���e��h%I!g��gr�2�8ӗ�b^��� ��臱��1��\�� �'�q4#������FU
�iY��K��S#͎����$G��2�ʈ�ʇ=�˲�O5<}�q�e��U�.���]V���gY~r��nω��3y������x���\�𻆂^$Q� ��2iO5OUK.��/��m�3��Ea�\�_���q�0g7�U��6�ѕB�,��)�fP��N�����W0Wsל��)yO8�TpB���4�^K,�T���	ԥ��c������`�x���d��3��S��r�9'�,����8ć�R�@��2�NI>ajB��%�qp}���l��-X�R�|\��� ��o��x��+bey����N��M�)�a`��I.���;�XE)�:b�;|��ڐg^���f��lY��s��O��S]��F8	�s�wfG�r�k�&<f����X��
cο �.(z���C㙽��^/ε�a�~g����"�0����c��7�d���*�q�c�@��q/XyYUp�N���g}X�N�`c@�|!t�p�����˲cE!j+/kK#�eY�W) �� �3�m���һ�sq%����d+����;���g�JVꗝ�Y�곒��Լ�ܼEK��M�B����`Ǟ�?���j�.�2����
m|��r}�Sg��ȉ(�]7�n�Ԥr����7xᛓi3(��Y�y1�h]~��!]'s�ϰ�ni��b��eLYA�h {	�-�A��/W�M��e�E�H�6��ߩ��>l�9�����|]x��f��g�-�9�����*�Y�5!RI/73�w�N!=���6�(E�1�i��M�����3�gC�p��z�H��^��i�@��7�'9C���\�\I�3wxd��Ep]	��D�9Ddt$�V�}a
S���AN��(��O�����專��:%F�q���W��)V�!�EQ�.�4R`~Y1�Si<}O�( �LV�;S&{ܿ79���a����M~��LF�?��cmBg� �29%����Gz���_��U���k8g�qw�1�c��2�S��ܳ~��<�}���_�N���"V����߅�B'U�F�_H����_�oP�eW�o
�/{�+�	&� ��{R�q�J���^{/w'����UC���t��%���y���DL��$��}�F�?���d%�"��Q�ė�Z���?�1��s�L���`�_V�/r�����=<b(��q�,?�.)Ė�2[i9�a˲�~��&0�m��K���r�3��Q��{��_��3[	�`}��
P����.�7ʹ�>n8 X��������(�9�0��R²^B�,@��M�;c{�� ���2���gT}bϒ	���ߩ#{��R�(@��2�N�Q���R�/�������Gj�pI�^�y8a�W[Yfʔz�$WW�>�% v͈]�x_���_�݈3$�+����d-BK�{K��� �+�k����7��� _@�+�r�?�,+U��P_Q��H)�mv��J8܁g1U��wV��;S ����0�zX��Q�
�5��\r|���Yr�T�@W�\��v�#�y���<�eoa�aW��I��
ྒ<�/w�U�t�Hk%���C��>���� �d
���>M�
�Ur�N��x��钾ܒ?��<C�p��q|��Jz[�0�:>`|�a|gC꟟n�|���c�C�ut VP��%���4���+xY.�C�gҡ�@�0o��۾�ۅ+���J6@$L�[�ec2�|%g}�УE�D�
}�ʹ|�cq �,�c�<�$1^B�.��l�޻�T�W��f8�`�NVB���6K�֋3��zd��+�A"G�~Oi*|��<�c���iS��C�Wn:���M�mP/��XW�k�� �8g�rq����?�룹�����q#���;.W�n�W�ۂG.f�gҾ�U�k _).Ӌ~ղl�1	�S>��J�q��n;��@������˷�C��Q��ؤ�L��.�e5��@{��~5�*�k��~&�˲>OEZ��R��3�~|�%FT ��(�ｰ?�J���V�$ލ�; ��ľ���	W��6�Xx���f^��
�^q���3�l0���A�+�5u����l�B0b�"�Y�>K�7�� ����6Ɍ=O�GN0��:��vY6�/2+�{EI}o� &nH�	aE�R�='��ce�E�454f���� �Pp/nT]����08Ks��W�x�ޔϲÆ�� :R�P14���ø��Gr���ꭥ#�h�L;$�eu�J�3&sƯx��~~�c7�2�I.�N�����̄���]"
�o���U H`��
�&��>�G�ԥ��t���;���A����}��e$��;��M��W��E����,f	q��ri^���ȶ��M�����7���uV��Y������ﾄ���3d�U�3kW��^����a�ݵY����m`T��ٗo�d��dG(��bXpY~��E8`8����k�.M���t����T���H�w��"r���]��nE��/�?BB� �+����+�' !0��2��>N�IP��Yt��i�A���s°cvv|4��)�&�8p^Q8/j�:�4��@L��N�"�*��S)#և$g�f�"�q���F녈�M��,��k�B��P�P4o��e�y�HJ�>�L��,���Xd'8ev��T��R���x8���I#��*9pF�.������_������F��~9��>!Fv�0�KkY~6�f�4�z��~Eמ!��*�|��y�?UB�v�W�+[���Xe�3�60���-ވ�O?&��
��2�q(D`�e�T僯���7�6�ri�ER�z]��A��    �NWsup^��/�'C#�&��'3����Dئ�y�X@,4����$ e�L�SH/&��w��>�h������b�8�ͫ~f܁�w�3#�	�ɍ[8J���2<`Ɯ���WDq�2���Y e�
_����l��iH��Ы^����$�
�ΚL'�L�F�d0\�>gM�C��nk9�7�(����^��C�``��u"G^xYv·�è�ђ�=�*��T15���yq/�.�m`�V�sVE�W�/p3�<��Ϋ�Y�����BWe���yapw�1��U�y�F�Ar�n�_U���<����e-V�j����ę\�+ ��l0H苗e��mΫ�{�qD��3��~���&�C�HgU�^�e[���'��^ͦBt&����<R�/�6��ʴ,�Vx���W�D΄@�uI�G��Z̖Ϧ��~7IF�ի��a�k��zP�/�Ӫ��j1s���kHع�������P�e=��o�W�Lg���kԅ���{o��	Q@v� �Z�����~]����X�P�^���7��P��5$��-,@hL�*��]�a��������i�`��2��~f�US�{����\�%U����Ko�������,�jr\[$��Z�|KQ�/�wq<�묞����KF�w���S������'�������KO*��g�����C��C�M@�
\�:\/�?_���E�^m������� i9p��L�"5��j�e`��;"���W~ܱ��|�H<��ի͵�GN}/4�`�U�����za�jYv<
ir�@��C�Bo��U�հ2��[�U�/a����������Y�y����F�M�y�F�T {U���,ߗ'�7+��Jo����H�b_���N�@�e���@��^���c���rH��U�zr�#��^}T�*h{U�뽼�?V>	��7�>��7�D���J�����l3/��׫d�oaO���8�j"��J�[�����H��J�R����)i#IK~Ŕ��/$��uD�* ��͖CkY�����W����:	�dr7^HȨ��5.���&�Zg�G��H�<�Lx� �j���L�莼���3��ih�j>�>X{���R$�R�e�0�
���[�cF��^U|�|�Ԥ
���f����\�1_��蘭3�G�����"�tVvX�k6ڕ�󦕬wZ�m�q�ޫ���X�p#mN]
��Bh�&6��˲w9���y_��!�U�>3�R}$a�p��h��U��;���a2��]�dU�<M�4�b�.��C�C@��4#d4 {u;�,/�;Q��Y��U�3��\�Q�k�%�i ��pܐ#!]'-Mx �-��{)ήV��.P��k	�xX�"l.�ˤu�y�W�a΁IaՁz�@���d�J(� �Y�K��M��.����e>9,�,�j�UZm�zM�9OKOmāF�)��q!���zLR�,��<˲��$h�������D���v��rTY��3�����6�{�������|)�Rth`�뗂 Z�{MG�-���a��;�^��4.r�kC}�4p��n}η*U�Q��Onɐ��!eY�$b�Y`�^�3.�Z�Y��QΦ����5d d�&gKN�"&c씠�;lf�a��e��t��v��;f����Ā3��o2l/��e� �'a�^KV{?�e��l@2n��5�����,J����wĲ�l�c8��h�o[Ɯ4@{-�taX�\�5��
��z1@wWsj؄�I�w}&S���B�T�e�)].˲��`M�za�����' �ײ�Ӈ��2��Y��_D�es�g�Mf�d8�Bz�*���h��b�ϻ�^R�������ڔ��B��)�������YH��v<���<jS�gi8��ҋf��`�$�"�0r��%�+�����^+���v�>V�츘��Y[ã�q�� �b-�a��Z���^SP��yģhnn ����<�|<N�V�{�Y���e�)��^�N�>nI��p���7+�w���z@6x�j��}N�.l4p>֚|֩h�U56(r��Jɑ�_�����4��V�~'�)�rqc�����~Co��j�\�s>�
�AS&�[���{°���ٚO_K�J�~l����o]��R(�A��5���W]���.gs���Ϣ�?��4�|���|�pB��y]�x�җ��Ɇ;��c�͟}DB5o��Z�����aIᴁ�ך#��HV�:xf�5�^���?��M�{�(w�qUq����J�k���������j�H��A�A��s�v�셐X�k*��fE�2Yc�fr�u�Ķ�R �1,��_�Նv(B.�Kl�`�L)���/v�8C�s&�Y|�h�4`}M���*�3D@���u�"z/BS0��a8_�V�q�e٤nh_SF_4�ʚn��*8}�;�|4�R�J>�!#���m����"Db �Φ��W���N��@��)�����,kgSG�r��=��ՠ��H���F��1���� ���}�Q�{K�O|!k�Dgc��N�+/xj���u�Ѩ4L��1NVr��Xo�F��F|
��v�����F��&q��E�e&�؆�X�o��8�!mΦx_��*��G:�e�̎�v�/���r��h;Y�v��f�|�X&_S&�o���4xxe��Oz�-�������8��6�n�����ƿ���,	�`��(P�2�WA�$�~m�$�%�f'�"	2�k�)^DƲ�ȲMP�v�~�f$��/�x�|m�;�C�m	\�6�U9,�My��� ?��#m",��V�l'��n��-���0N39��.ǅ��x��V@�i�zwb���xP�� j~�8f�,b��;N����.���2A�3��9�Fj�>9�/L�����P1���#��^7DR.�B'�Bg4O��z�B�2LY'�VE,��`#A������X�����4��a~gM�N��:��5bD�}�Û�t0�h�Zr�>�����g�I7w䴶��c�N+*�c��E�N>xԗ�d����,F���eA⅗��唒��R����pz���5!%'���s�Q�,[d*������h���	\:I:�����*��c�/Y��z��4x	|>���P���v=$��!סZmڎ�EB������)5���D���xUɆ����Z�[Qj������严w��|%��#�~T�=c��-,�J�B',B�e�Zv�߰�����"���|5B�_R�"@T\l�z���������K�l�#"9��m̋��}�|����>*Ƃ
?�eY���"��I�@�w���{�
^�0�c	۱e��!@~T�;>��ջ3'� �:Ֆ�ɳ.��8r��r(��/�1�_��!W!�q��&�CD�Xպ3�M��?�w&\6r4xCMc�	HU+��"���ɩ��:�:f�n��$u��=�N�>�ƻI�!�M �Q���P�@>j����6���/�\��L�����vo��:�H���Q:��$9�9���� '$���5#S���݈J����L�%l��R>�&"�z��ީ��88 zԜ8�"�)�	�0e��w6Z�)�#RØ=r���`���}B��﫼=�[m��g�7���Uێ�4M �%�9�\;�2�E� �Y�� J_���X�	�/K��l�G�d�T�3" �`�0i+ ����~��/X���r>���Ҝ��oX��j�a����~T`=RX�tZ�#�L2�� ��s���O�yA��]O��=�e���Gn�^H�^��j��NpΎ�*.��Wh��G�!�qo_"`�l�v������
rN���z���>�|�-��7j"W������0؇�*�r75�PSna�[�W�� ���,5���L����!.l"Z�����fk"
#�e�0j���=b�Z��"�]ؐ1��G�"��n��`3�9c�79�θj�a9^I��~!�ck��ϖe�TYv�!;\�L�Fsr���֣{�^8U���# 36�Fy=&j�!��i���V�����0f$>&s��M#K����GÐ�    �Ny�!��~!��Q92�\ZT2��x8͖#���9%��%���� =�ʜ4LH+�e��p�uڣ���Қ���Ѱ�9,--�.b�pg&7x��fX3� hh^��۷$�p6;Y��,����~���u��^_唦��牉{]A�æ˲���3�=���Ϻ.l3p:65��Y���Ĉ�/�"�*B�uY~���?�s��8��xjЮ	����:|���3������4��g_'Z#I����ɮ��P�u*��^O�	v>.��a�E�����i����;�^ON% 
'�e_`��B�=��m̄�<���:�w��>Ʀ|I�v�̽�$:�MB�A�� �y]񼨕%�pytF�}��ד�������)����oT/�VD��H��vp���|�k��t��]�U�2��yz�_V>_�.�����>_�q�1�J���䎣�+�G��,;q�C��ޛ�"7�H�����8��&y���
CΎ���� ��w@z]�|Qա��KF��C��g��Κ㟕�;I�׋}Fa{�ҖlC�p���bv|&*�H�22 p��r�z�5�,?�������N�3<�o����f�8�i�BG^�Vg/�zq�d�r	iJ��/=���y��0ہ��b��u�,[�I�Fo2�S	8�}78w_+x�ۚQ!JL��\]���?9�r����6b��x�&���b��R�g$C�Jg�����벧h|�G(u��Դb�����4�H�;t6���]��阾׫�\��U	��|�Z�|6��K��i���5���l�6U��.����wZ<{��u0��+�/�����#����כ�~���n<z�by��;�/��v<�6����\G��Nk�29�ܱ����ua _o�'��V&H�t�uvG��ХI���������y߲�弁ȠÎu_�wY���ep��������} ?>:P�~�~aQ/��9V!�)�:;����"��_�LN3 ���Dg��ɹ�7��i   ���U/^�ɎO�0_'�Z�-U���y�	|�&򮩙P�������b��i5��쎼��i����u2�Sx0˲�7�kv |��'>k7S�AE���y9����{��v����	ʷ�a��)�ͪ�/)�<�'�5�QۖHF@�ލ�Z޲���'�<��쯅9���x�����8�RX��hvmc�w�G:����6�!��yӀ$]��̘��G)c�J�R�����&�~ r�8c��ڇތ?H�o���S���eٵ"#����8Na���0���l�񙜑��.um�P��\�\�e�)�$��!�����_��T)_xX�b{%>��u�5<B
6��е/�&u!o�/���y�X�����"%J��o����)�W����5+֠Nm}��0L$��
�~�J�^w��p��7�.�9�!
[w�e'�"s&��>�!9$-�-6-@�c��NgT����� h'�:���]M��<L�Us�(r�r��>����䐥f@|��ہ)���M�)���H�˂��`�{����j�K��!\�x�/'��e����I�V���|��Ā�XὨ�!j{���R"�������`~���
�q�Ӳl�&�8�ǎ�wF��
A��q�0c%�E�EJ���Z�����n�Y���m\R�gL��d=pa/���p�R?f%�Ed�u~_K,g��Ⱥ-Ψ��ن���"����gT �:�����^J,���NN������;�ΰ[lYv��4�0�=V|�˭˲���"�ߌ=��q�+���2�=Vho�QʢCb�i�
����2����*�ҝ0�sy���1�g�.�Ip���Yk�5�!,p��a��w�+�RA�p�������2�^U����P��y	e_�J'g����u<O��]/,O-��<�)�
\.3��{Z�ի��L2�z\��-��#jA6S	cCE��]��ᑋ�B}����=T�O���T{Aw3���T-�&o+��]��l9�B�8 �bv��|�ʖn��\�)��wL���ep��E�qW�����++q���9Ft1�{\�J��˲ʗ2�\��"�-˾8^�-����բ����� �2�=V�/h��qBp��X��F�2 >V�/�>zY6Hg�������a�֡4͠�q�Z\س����k]�L0�j��a����gl ]�Q|���Nl�	^9����S�=V��� ����$gφg?�0������;ʬ�R��
���;��:5��6���H�J���=��X�� �����XI}�u����g��ą�Q��,���#X�H'7���M'�}6B����S �u|�r�R'�q|o-+�����\_g�a�8�tI��1��������yU`'�e2���x��v8�p��;�n\̌_���A$���?b�N&752�eY���ΰd��r9����O:��c2���&}�	\Z:����Jg9_wmp��,H��$��fFpѭ��U��넡�����������b��Sai��]���0�q��tT����{�ܽ�V��ؕ���+���5m�(�+{�L����@��;���g-��Amd |�̽;�e��I�0��Ǌ�Es*N��f�1;j\��}��{�=���a�q?�3�(�0��Ɋ�*�>�6��/^�k�m�;V��oƭ�>O	t�q�����������`r\��R�����
�7�/��P���G�'P�2'g�1>���'�&����{s�t�I|� ����c�wQ����i@���[�q����K�!#:����^��Y3;��
e��w���{<�!9�&[�g#q� ��N��lث����80���k䌎x��|��;���i��<���]Y5�SUm�
M�q���ĸ�߽�*2 ���	�F%���i����'Yt��~��_�|���<]D�x���v��|Cq��xl��x�_�����*�� �� �o\�\��,���H����M6Q2�ο��`q�nߙz�#\��P�i%����@��~�G���|�kr�s��J��=��P�o���؁#�T�+���F��Wg��Ui�@�F�zr�/'��q��`�HF�~? �?�;P��l�Hx��;�0�j�s2{q��د�����e|�0�e�C7ġ���d�j�N�H"!�9G����V�,k��$U �Fv��G5i��=	�7�2��z�L�m�r����9��䌍��8��"��m� ���
��v�����e^D�h ������{�
�0�lz���ֲ��N����ȎZ��f},ͼ��X�k�<�>�E���W#{d�\|���#�lH��`����MP���8�䋽�.Wc�����j�U��1_��"�r�����`�AB��h	��t9�a���Y�'�.0����b�j��`Ɏ��Q��e���z�|Ca�S���X@��o�D�i���R����B}�ќ�%	�T:���)�~nPa�M�bY�u�	�1^����o��@D���oT��"@b?�0�v5]���6��y�<��0�o��1d� �7��i۔`�Y`@�s43�П-�^{J�0��Fs�Qh�J49i��A���M}~��0�o4'p$�cBj"[6^�Y-#�XXDe<�'��p4ת�jt]g�h }�F�䦊��f1v\�Ƭ@�+i�s�� }��՝}��Ox�0;�0�]���w�o�����s�λt������<C��jo�	F�(_���}�E�(ߠ��*�H�v:��\�9�ԗ9�7Ѣ_8�0Ȅ�BlwY�J����$�����I�]gAZ'<�Օ���eؘK��r@�s���^�J�����h��n�"�_�7�{��*B@}�����5*�kA�s�XgTիa���p1��7T�3�=�U�F�M�2�ot�V��ߓ��;[�V�x��Q-�ot�D�;�$�A�yL'IX����f;3��9p�`˒=ۼn��[3]���o��2��Jh��S�n��v�ʒ�L,�f��i v   ��E"<bvaکX����B�q2sN0��nV�F�R�ǰӥ��"�]��-@�����>�t��#�9M�8_QoM�ŧ�
+��H��o���8@qt�ڎv�>���?�}^��/�a�      �      x���I�帲$8�XE�KB}�;�I���/i�vH�
����oD��� `��Z�~���a�����
���������������8�6Zo��_Y���t�@]������6�����_�*�S=� �������n2�?�W��T�_O`���9����T��B�_&��o?�\��+��
%�ү�i��y��q��K��G����}�+.��-C�}za���ў�V+���~9�����i��Ұ�0>?U�MM<�]��W(�v��n�~��_�ӱ|�P~�V{+����گ��̹��)�`�Pg�G��]�t��܎el#�*ؗx������{/��C�gm��]ru�p�X��J��%%�α�g/�)��ߒ��f�Ev*�?�W��G�j�����y<C�5���o�>K���H��t��;���n���#C��.'�����VG����7���\�b�<ӯ�K)�s�c%�e��\C�e��[�ϟb����|�G[G{�6Cf[R|_�����3�k�i_s��[��'��~�8m�i�-���3�ϟ�߷�s�7ˋ=9s�=i"؎JϞ<��1¾�6��j��N�5I�,T<�f����Ѥ�Yt;B�k��y�mlb��KkO��e|��q.z�ؓi|���嗏ghռV2��|����2�e���q����}/ߢ�h������߯�:��}6�b�l�W[��+�尊�Coa��u�"�O<C~��\�㲟��>ߢ�����n6N�S�me3����㷣���eZ�`G�^%�-��u��7�\�lo��A�/r�<n����a'����1���x�\I�|�?m�1�-fKx���3��˧�I����hfʶu��*�zX�P��Ŝ�C�+�S�!��`?�<َ2sooQ֞��6��M��D{��-��y����=:�~0i�0`��-;YE����;�b�q��;b��N�|FA�m�g>v�>[T�pT1�m�;c���᱓Sĳ�2�Y���:C��<�[هr�1��lf��=B�����[�}S�a��v���ծ��[�4":�E��������������ne��e��(�L۰�V��x������7K�,�0S�--�q�z�;��Z��T�"��`�i��װ�U�=��uٽ�.��lu�%S��/1L�[5ꌸ�X�M٨Ä{D:p6K���Ϟl�o6a�kOӼ�	o�6�r��2V2G;�-��ڳ'�>�GϘ6#�y�w����*V�\��N�ò${�'���-��H��y۷��g(�>}�o�|<����9�w�� �g�ߍV2&�͌�}k�K;y�p��a���'a���n��-�ˌ�2�Ms��<�'��+��'���r0Jm�ɨ"��t���8݅���D⌊����
�q���=�j@~���aF����gOfq�����f��<�\"����R�^>�d5gc�ZD�n����g$��Y�)��[E$ַ:�Ȼq�x���m�1C`g������s4�/PM��= �>�\�Q�l�����0n[���gTܦe�3GX���I��A���/"�늌ul��Q*�j�<'<WF\=�Z������_����MsZ�v�x��*L��3
���,�Ğy����l������k?�*4������-��((#~��.��ᗏ�e�0���Ŷ'��8*Z̒���Y�}%T�>*�-���u�c���ϳ�l��X��|촓^w@�3�P��[�"�>�a��Sdx��
�|�d�'��]�=z��w�ē2kV��KYs����d$�T��L�٦�"�YևWw���0-��7M��̺2w��u���t�B�����+�������do�?r���݇ky.�
g��q�LXɕ�ȷPE�Z���a�����!�B���z��E�'+n�~:ou��Դ_�3x�<<���ށ}���W�w;��YÓz'a"T�Բ���6�"�-��g���P�9x��1����8^!ZLnr�\Χr>t�|Ⱥw�r���8�gkv�������M(��ɧ�ˤ�9/�;�u���S���d@�E1ĎEFa
�Xٔ�b��k��CDd��:�9;k���V�1��P[�Zi+,6��������z�;B��j�%�>{�%�C,��-���:fG��>P�5��"�=����8��Yk���2��h%U$+������E��'�j@����6�k�[I\����R�=�Y�V+�S<��*�d�!g��ڛTd��׷b 鎏�l���Q('5�7I:��_5���L��Sz��y=[L=�Qf��;^���EԢ⊞Pϯ�"b�o�G&�򙐧�l-�����K���{�狴�؃����?'����崄؞y�ǯ_L����X��)p9��\�X�(�x[ %�T٪�i���Z�Q�cF�Y2�G���z
U2C|R`5���W�QՒ�ˌ�.G}"�;�Q��V&��d�g$��S��U��	���K���̢L�O'-����g$ouu�GpYŜ|&�@cnk�U�K5b�
������Σ��\>_K�Ip��V�����a_D�k�R���r!]�8{��U�O%ʡ<?w<�{�l|�b�h����o/�^�"�a9mp�Z������<f��\23����n�E�~Ă�h�3Oj)k�.meQ`H`�H\�'#J:\Sn�[��zh"Z�m���^>�۽��׻?�ʉd2qtm��j@�[�/줖�IY�>.3�A ��|1\�:?2��"�3��d"��b����w�C�����`�%�Hk|���GΠ�
���Ejz�XZ��vg��PnXκU�.kq�4u6�����5��2� ��W���ٕI"	g�]z�l�N
�V]�"	�
�v�����Lu���\.ckY؋�O��b��LΓ	wE��ų;�Ĺ!\;�Զ���m��
�M���v��Ͱضݩ�a�h/&�xs'�MƷ�ʼElZfE˫P��mC^�3҅73[S��
���=�˩?���e �i-���C��(7�=�ԨOھhO�9�G��^���-E"`�Gl�4bg �/�c;�H��,&�G,�u���*|�W�T�1;��_{p���%4sB(\ξ�(�Z�.v9��IE���l�nk�vΜ�[Mlkŧ#��_���}�Ǿ����pF9��D���s�O�~u�g�\K��b����{���������b�e�{������j�m�{�t���Bdx�����^D�����4�;��X����'����_zv����)���r֙C#���H節���=���fB�m�8�zg�uu�ь!���n�!4�E)�k	%�����'ӥ�_dA��a?����?��kc�
��!�n�߲�L'06Ϯ�ձ���Z��H�/�Qۦ�x�\h���sH�;(E_FJ��\88م>.;��o�ܰ/��B́�b�e��H���Oܩ����O��s���W�m��(�`rX㛫w);�@���ac>7Ϯn�
�h�M.'-��)��q�[��v���v�F�QPp�P��Lx>�ݩz~Y8Č�^&7xz��()��O�Ej� P�-VW�4|�#����j��_�߿��G�h���"�<<�� ּ�O'`�U��La�)�ݩ��E�ř	��B�/Q� qTY�E��%7_���*]�:e��5&{)��0���8#��X>V;��x��nq����,C����^�Y�/�i1�j|�aOq�Jj��hm7�� �)�\QEiӖ��΀�p���T�]F|���>QKO����q����IIu�)VE��D���m�D�����pM��f�h�6�EV�HB����6�)���\q���|�H��\�-ȸ��gW X��mw�yF↑���L�P�D�6�1K��U�ž���퉴l���p�k�r�S�i�ť�}&s4������aܿ��,� ��R^��� :�΄�����ȵxl������һ������(^;K���)���T��U���j��"���)�GEC�b�RXiLo�� (<��H���Zy�&5�/l{�UR�-���:�PD��L�������( i8�_`�V������Yęa�{�r捪�Z,U    �-�0��f��t�'�lڏ(\o/pE�dtu��+RT�$�?l+ iv�o���*ʉ�7�S��g's0o�x�ُ˸��@[jظ/_�F�>��0
��ɏ��+��v��n�@嘵�䔅�ȇ#�����\+�E�����̶�����<��+JY��������YV�S���'� �bc����[�go�1���|lg�!ʱ/��;ڪ��OV����Qϖl������E6P��mvi*�Z�5��()�Aј�	�i��镶^�,�ρ��Q�fE����@tV����0���n���Z���A����W$ې]��Z�?i�u�����&n�.{|��L>����T�ϏjqJ�i.�B�I��� r4al��ɧx<��Z�s���Ku�*e��p�.G`_��>B�S���(�(��t۝��_R[/-7�q���0fQ_�S���e�/���@K�U|��ޯ'{A@�-�m�T��yv�b��
�u��N����ĝw��	XX�6d�����a�4�L2<sj`�c97�҅v�� f/��Ȇ��eBQ9H O؇MLu�^��r�){��mɥ�������Y� �<�w��+�U]ϵ����3KJ�S�?�{YTぎj1O��S�rv�V��������,�i��X��"@�"�b�Ӈt�+@�|��@�"��.5�up�G�C��vJ�O�LJZ�Ň�<�49�h }*��v\��E!�@8�~���=�>�)�Q2��.�q=yum�`��_ĂpdE�'�E�^��p��t��*���a�D�����8@�jv��;/L�,{�o���,ԭ�<��	��/���>X9ؙDZ5Bq�;X�{�o����@�J����[Q2`:�/�9�9�X�2�~\�1����}_l*�!�j����c��[��B��K�P��:�:���"0��Pbd&0
D"����p��%=�"�C���fn'���΅��Y�sk�R n�CLsU�o|�ӛ��&y���/�H���e" ����ƫ­_h%X�8yF�F�ԶS�'G6ގ+�9׾P��.����5�Q�)�Ψ.��C��������^(6lM���M2�9,��_P�����@i�ɧ�P ��"�(vP;h��)�j���t�d{@W�6V�7?��?��Χ@G��ȩ�o��R�?�O��[f�.I������H�i~�lھ�&'���oA�|�~-\�\ι��刏Z���O�_9n>G��Ui��4�"����+R4����?�q>�;�VQ�!��y�o�2�}��SaQ.zRw�IM��Ɋ����\�{�I
�q�N��;.�dR
�^���i�g��?K�-6^��C����وaYD�ZlY�.�
�DC��{�"Oή�"	� �j 8���,�]�<��t���\^�ٝM��,�L����ȧX�qY�7�✓�X�
7f��Q|h����Ӗ��}!Zo��rG'3�e;O���ϐ�0�>���O�H6z.�:o�B�@��+j:8P|�-�C�賜OܩdST�=t�Z*��FIa]W�T7�L��"o���$?S�Q���@_�K�U�Y�Ej ��j`��gw*l|��N� ��0_d�;�NfWn�+�	@�S�{Ej����<���e춸�+���	u�\�K��,+�#vg��,��6��z��cuFz$g�tRP�##'1J�2��[���Ԡ�/��(�].�G� 0���^�6�]��FO��GH�ڋl�"閏ˎu���M�\V5�V�:_U�':w��+���Έ�V˖!��kQޝ,a��Be�,_��h.�/s3���%�=�C.�;�I��{��u��X.��C7f�Y��=��U�-۩��E��:�Ͽ��2:Ĳ�R[����n9���ȭ�;V�I��yB���/^�Ք�+%�VkR�@AO�ĝM#���p�k�(b��2ⓕ�X���f��SQR������),�����a��,��ֵ;�G=,8)�M/ ��O�y�rD=��2���)U�ac�W�'��UgS�����9	l?.{�7������N���p?����l�D͡l|��6$��J	�O�q2u�_t�ZC]+��p��^�j��4�/�{h ���d���n)brho��� �]�':Y,�Nj��a/J7B[�"�B�ɵx��+�R�:D��'P��mS>��E'��B[b��q&a�*[��%Kg����E�*�)hHN���������@�g��]�̍�F��9svЛإa-������:� ����B�I����� ���vg_��C<%/b���MΦ6'uQ:����+���Q�]�R��9`�s���u$5l��!�!O�����tE���־`�x�Mq��C<����/�����<�H2�͏�EV�]fE��:��J��<V�~�f��<���c�w���ԋ�23ݫkc�Ny�ȇ�8���a��z
�˱m�be��S�B���<.s_��V��y��+KV��3��}6*��y���1��h��B��Aw#��5��B'�=�%�-�k�<�t�!>�sg�Ւxp�X;��`n�S�UзW@c�"W�ߍW$?��p��*ʰЙk��N]�8��=!�����w^���?����")�vέ��%��S�V��?�#�Z�=�J�@�B�2��ew[:�>+HTGv� T-o���n:1o�����=���pF,�F��MQ�"�e.M�[,���[�W�R]�����T��:
1ܝ��Iީ �h��a�9���S�t\�B��3�&
�+B�� ��ٰ��_��L�E!.�����]k5 K�,�^�^�� ��&4���"n%]�SA#�{�<.�c��sp2���]`���b�i���Ŋ��+�G��B�^>õQ�SK�Ȋ�;[��o���#���_7'=l|��@�3�����9��ʊ�9������4�Y�E��Wz��h�����ē���n ����n�(V��v��C
��L������H��e�_QJ��++�-�CF�U�
�lmd��w�P�}����٘���������a�l�k��(��@	V��%S|�<c�d��/�btE��H�4�n8θ3��B��o��0O��Ue��<QҶ;�x���.���,��r]��� H
�C��^��)8�s��PMTΜ|�M]��~*�MAj��[^��P�^���U0
�7tY<�7#�4aR��<�W(S��!�Jp�����_�:�vb�XQ*yC�i)&E��$�y�Z��ܸ���"�v1\Z��Q�n�l��:Jd����-<Ba�@#������;/���7�4Z,�@����PI4S�@��W�KY���f808@�UL��-6��EQ�x	���9��w^:V�G�7�+
���R6l�%8oQ!����ge�<q\��4���(v>��*_��� �Mf�9�iˊ�Ac����A���$qN)��ɳ>>�Jݘ~��G���,�g �9�,��aB������Y�c�-����8�bŝ7�����mkE����J��֢'�p&�����LI%XhR�7�3RϮZ�E`�U��x3|�q[�����q���r�^�Lu&ۇ��LrF9o��[�N~T�!k̊^^��w�!(��Jyu�i��)ӻT�܌��ư��g����#J�h�0\{���:/`N��v_΍1|.H)x�fY��b� ���A}f�6)t}-,�c;�$d�i�pu!1^c�rn(�q+��XO��q�I�DɴN���g/җy�[KU�z|ftx�5�H���(U�<�N��K_�x5pT"+!?T��!��������\�"�o��l�ŷU��k�N�>弽"��P���4�e�L�"����� ���L�p���E[ �{Ƅ�Bdey{EW���;���	�b�wJ ��;k�˔*=eln�2�L���@�6ӻ�M��Q�h+$k�E���"5�W]���+;l���X(�/�RM��μ�r�-g���8]���m���Խ�s-���Kg,g{�tG/������}}��ә���;�-_d۝m�s9��M)�S:�p'=צ ��bi����vr�Y    QjQ0��A�\YѭL($�8]ǒu���}������&�L��wRѕ���λ��ߧW$�E�(�L"L��˖�W��
����)5���"u̒���-Y�S��S�kR�~�F�\���);(�q'��xR���9�"Y���g�L֕Y���
��C��lgK����.�~C��DԍWt�"lh�`kQ�yE�W� ڎ��#gnԗW���;3�,>L�/��+���`���&�n�8.;5	��4�_æ�Kc��6�����+���PCI
�}VB���+R]�,�Yu�De��k�L��겝vF��o��m��NsB�:X�SJo��r�)M'?��>~yEG�潬@5P��f5���^�#Zt(�%L�x��,��'��@���@�ָ�"�eY�PX��_d�>�v�1Xwh��ش@���1ћ���T�תqc�]��B�a<Ø�_$�u��z5����+��5-��m��Y�O�S�'�M5m�S'�Z�K���dJU@�)�uDE�TQjژ����,ڞ�a�yE��X�^�C _d�}�z3�I��|��ŽEi���]��l��~�Q�x����l�����X�SZ�<��c"+�y-��ZG�]�|Zʍ�����f��̐	�)P���ɊTO@u�/H�ѝ@�<�eZ�Y��E (S�l��e5gB�T�㌡�X�5s]:���=M��F|�-+��{�n��R��/��4:H07z�8��}~�ڝ��#'l�T��_�^�4�E7z��Nk�8�����[g���f�>�ea�.�?���8��1�d�Z�A�d�\�6��|5����N��1l��1��A������6$�k��?o�3sC��saI^�"K!�6[��o�B\Ε��6��L�1��[���QcXT�����R-\��t)Љ�I�rm��>�H]ѡl+�(wg��<=�y5�.���fA��|�n�K�������Wt����E���,�}9��>�"9&�i��Z{|��q2u� ̮5V)�^�w^�O{a���lzպ��7�1��u�����ls2/�ڂۏ1f/z�-�)��p{~T[	>�m�������8v���zE�L(G�v�b����xE�\��*`�6!$��/��Q��ɥ��4;g+ԽW�:VR�=�y�r���dg� 1�gG����ܘZE1�:��P��I��L���&�9ⶶm�W��#Б3����$BV0�����p��l�~GC��_��g�A�~1}ŝ7���Rb����Xo�!
}�����$�C�/ ��Y�4�;�H�kE�-P��*�O�q2/�akeR�9�����r��268�������Ƴk�z%�?*S��*J��;/W!�:�"�"��cIwI�w&�E�u�	<�")�rѬl	��<�s,�~I�E�ǹt
Bձ��[��\�L�Ɇ�k�M5Љ�@�ehb�iy2o�a3�8싱�NI;�Q����^J�\�M7^�X�[�-�������cC+���=
XRa�vl����aC1�'P�^�)h�\�2����3C�xE7��4&�`��o��/��9�8>��ՙo�~�s9��c�^����}0"l�C(���O��������gg���+���=��d1(�`_�~;O�cf�����s�;�&|.�Eh��
�\Z �B�g�[G>��J�e��h�� ��֪(�ࠈ���=J�؝-��R�H����E�xE���>,���w^�� �t>�)�q�jԊ��9� �H���a\�gQ�>fŵ�M�N~T����na�_4bNBeEb�����~���d����w��ש������E0�rp$�6Ϯt㥸w�2Y�i�gư����e�������|�$j��Z�n�Ԝ�"���WD[�Z¾��:�N+��Z���@���I޶yE�1C	��)P�pF��	�
���^�V�������H�gV��Q�2�m��	`f4�C@��m����-�'0�ji��$g�P�b�C���V}K��v+Ĝ�H�PX���6��ː���?��`��Ҋ;o��7Cn:�h��iyvY�:�ю]��AK{yEG+��,D
�gϳ~��v���!�j�C������RS��E"��I�--݅8�d�@l�@n1�%tU�G��m�W$I���3�yD̆�ܻ���6PL���B`��Z^��[& �A��t����^�6|��ը��(o�6�l�[/�nl+B���g�Z&מs2��K[�A'B�>����wM�;�O�d��_1<$�r���Bm��l�Zo�Hy�,܋�1�"$:��Wt� %�g���D]�����]�h�5�+����+�`�z���r�����y��+[ˎ(���Zl�S�őo�jL}��b�?��O�p�o�sn\Υ�-aj��j� ��)6e�ˀ��)栾V�>x+˳�j�*�>���yEz-�!<b=#Om��J�o[��~���Z����j�kn�H���V��j�KMl�DB�����ꆍ����f%x��bW�L[��N��j7�����[,��<�G�C��7���}�K��@pFЙ���t�-(��Ȋy��W���%Q�a�p����6�H�~�C�a�,��hk�tJW�H�jk++�\ݣzHy �jzeQ����/"%�"ǎ���8�-�.��J��:D4� lm�-�Q+1�"PA��>��[WdqЄ/��^A�B���Dt�§r��gO��J I�N+\��+�g��ֈ�¬�wR����T����Z'��H�<�H"4+1��L%���+�Ü�0��J:|�'+:�o�y�3e�@�|�?�]=���ÎAu�l���o��2\�4�:�,����VQR\�cz�G��!FP\1{�gϮ��-�y��9Oj�t_z��CVt`��L�VIߣgk�n�Π�\�Dfc�d�|D��=�� ���K�K���X��֕C"�"��9I�9�pf�.=o�;���v�J�P�R ۝f��umcˊ�8�:/���5|ԽW���@vxΎ�lL�X��+:���'@�r�u���mw^��� ���3�#<�c��붂���89�m����o/�γ|Pi��U�/�H�$/:�?�~ᣰ��*J�1?g��н�$�rm.N�m*����$*�?�},3�cw�@��'y��V��Sք27�'Eh;����/�a�	9�(�O��+R��t#惾�.	l�\:�i<��E���j��/�!�.�hO�R��$*��Z}�|��&�(��H&y�-�g�YQSm����yTYJ5_����_���?�ĝ�1\.�xU=R��HF�I�3{�؍Y��/��N�P�>6v��O�U���h�nJ�a����l��)j�vD1:,�)u��j+�k�M��1��&�#�pC���"m�DK6�@�R�Z���e�� pن��`���m�|�/���Ä+�qŝJ���phOw�K$=n��[v�4-�.\ε;egBA{�]D���xyE�6[AAN�L���ǥ�pQ������	���vˢKcے���h��y�j�õ��.c-�r�&��8F�(ӞV�.o!� �g����VE���>mg�xE�.���yEw?r��&&�5�c��+R�Т��Z ��$NY�/�H	Z+^6õ	�F�laT��`����*.�ӹOήvg�дB��i���s�y���h��G��_MYc�UD{�����d����y�H&z���Z�C��SB;e��z^��4>|vB����Wt��Ba�d۹�o�H��5�!p�gr�����WT2�s�|��ϮJ��A/7�,����Ts�=}bZ���H@bϫ�y��=A5�.��b��ٝ
����>�	�_�v��\���j��+�b�l�]3ɕ�3e�:�k\� �]�U��گŮ��e�d~5�h�C���E�D�۴���$v����+���e_ĝT��/�HU㓖n�;.�?��V����1)�q'�g���=���1?���F'������^#XYJ�����+R����u��    ̬��z���)԰��w<�ȴ���,�'Q�&jl@r����W�N'r�����E%M��}�3�g��l�O�ò�v��M��.w'6��>����q�"�� ��릶pAJ	�`��ZØb���(�9V
:l��DW6�ǧ�&j:��(5L�0g�P�o��^/P�Ը��s9�bn|-�5
��?c-�^��2�/�A#Cג:��w^��d����Q���HyEW�
H*MЖ���zʛIqo�_�Z�<#m��%v��1�UY6�Q�f;u�SD9��C�#/��/��Վс>�}�17��QE�y���j���c'��,:R��7�A';�ҏ������iZ�d���#�O�Z􍹡�+$B�����W�7T�<ɒ��Y��+Rx�+�ӂ�"_��΋|�Y|���h�z_�Z�)o�;���ۏ[���w�5��ة���}��oM/�RnV-���c��N�0������J5�e>�7;����RH�����yJS���X���V`C�I�`C�t�p����[��>ulY��������pE����R�����#n_��_di�R�C׵�\�L���p�P)��5έ� �T ]n37�(y�?��]j���Ӡ�u�yyEJ@]f��]P@X��vކ%�QNȿ[��L`.ư��Tg��Ɣ����+:|�%�+��e�
HA}.�����!��7�b�(iܯ��BL��#sS���5Ѫ�8�㫽'07l�E�[��Q���E���±:�Y���՜Ɩ5H0�ѝt���V1�6^���2	R��y�YMY~�B�:��EY{N�o�HE����[��}<�"	ȗ3Ҡ���?Pu�:��$���$|�5�H�/����xiZ�_dS���"}lH�_d��/��T��)sm����xE�~8|_N��� ����^�2=;U����G\���|�Y�:I�qq2�S��S'�K��/�x�+�@4C� p�k���"9vTjVblJ���byvi�T�s�>H_�Sl�4�4|�Y��RL��-�z�lW�Gz�˹v��T9�Ff8��q��ʏ(8K�ta��GF��V�e�2�	u��FZ9���,9�'�(g �i17��d�����)�:�yE�*�m.��s�FZ��l%&�AZ������Y��\�
բF8�b�1��"�e�3��E�Ը��"$#��nq0���-�9�Y���EsC�TM��-,����yY{	���7�� �!z䅍��ΪD
��\�B���TH��2�� ᘔ�yU�d{���xp�w����sC�@��3}�z9X�5M����dCsp-���!���-3�����
����#�3����+��N���>�tU��F�&D*�!��[���(���4C�vS�]�D��xyEj�H������;J�l�ܪ.�#�ܻ���-F��Y�$[
��F�ꝺŢ��@�4b]��}|�(���n.����+RE)E�%3:� ��Sl�]E9G}Ʊ�P����yE��3���B��3��+�j�+�3Y�	�31��</� ��r�����3���5x��c�	� �����1K���>�Hxbԭ������j�s������y�bri�I�lJ5_M�e��Q�h�d:�q��8�W��4�^�a���B�uQZ�O���y�G�\Y���C�s9W5^���X��ۀR��:h����q��Np�-��5z	��m�(��<����P�P�~������4��m��V5�6�A�d��A�'��?�$T���	�pì7{�W�:mg����G[�_�0��P/�	G[�]J��A*�Z�7�E
D��%0�R�ϙO�l�<#�Ϟ9�s�G_N���E��M!����E�HP��V阑����ξ�{�l��[f�����7���`G���jO�a|_�c�Q��G�yH���xxEӘ/��Ny�<)c7��;op�Xq WΔ}�Ｄ�'�bt��� ���ԝ78��Ѣo ��}����k�f�k�Yocl�8=)H`���"�;�yE�8'j|l��Vѽ��UrG��
1��74C��𝗙^'"�PT[�+cy�KJ�����G��[V�ef83��Z�F��X��&�.t0��a:o��NY�Sd�6�vT�Q���+��$��\Z<�5�؍QRa'���7�����87��cf���:���uD��[���þi�ɸ�nc���<f����"_(���(H�f��17���N]d3� �O�l���1��/���+�Hh��윐�2�^���
�/B�W����g���S�	�����,>@&�nD���U�� $��G�O�aU����?ǂ��0�b���N	�"�Ag(<Ūw�B��!NLǱ3�`�f(��\XЏ%�L�6|��]���Y�a�au2%�H�S+���0��4���7��!&�+"�{�UＱ�D��p��mwνW�c-a~3���ޡ=��C�b�I5Ȁ��M)�"qq2%*�hd9)�*�u�(5_^ѝ(�(V��Y3�%\�w�	hS��S��3�HNOb 2��BQ�ٌ�g����=�{Hܭ9�WVt�D(�(%Rn�.�ks�W��ߌ����p�r��"��UW��G}�N5�/�������=�E:9!]�uG��FEi����L��EF�fe`&0�6['�BN$���n�Sl��*�8�� 4��->�c;դ�"���"ٜ��H���3��(�bD9�!�i��k��PsBB��C��Ų��*��i�5E���Y4�H�	�B�`��I�4�n*�"\�r�������|�<�՛�1L�ų;�(�, ��(Y����̋�&��#�e	d����|4��0H�,b��q-��[�HVmg盁��|��T#'H�)�v�Q����Ι7�~�(���	}��'��W�N�v����7��k^9�)�̍�(��_@��փ�gް�"*fn�4,��1��W$Fy"ڊ����[��9q'�H@�>���K(�j����*
�Vx��z��5:�h^`_�c5˲�2�Uka���Rؙ�e۝���H��DM�Y�]�=�@-�,���Wt��"�o�Y��,�T-j"�Y͓�(h=��߲�I�!d�wg�V���bw�'�P�->9���W��="� ��T��f]��&^q�J	���h κv�M�����P�u�w^��'����J0�|{E�j]x�)�Ou�Y7�Ƌ[��j|�ގ��+R:J�� $���p9WEI�G�D�V �'�n���~�)��2�C����R�*4���	���+n�0J_#�Gx#�����g�vR���A�!�?f�t�tEt&b��P�T3_^�����g�T#
1�L�V�},�I�[��\�hOE�(T���l`�mq��m��3�r,��`����4�$WW"�ϼ�Ҡ�.�e �r� �ضV_�v�\�&�a�xO�s���4"&(t�e� m��@_|�[��@�ќ�����wވsgc��d�c!d�����5,�M�E}��
;�6�GLq�G�-6u�ˀ`�/&���Z}S��U�4$Kl�k��"�!��S�K�Ĺw��M�8�1lGt�'�	�o��"?$'T6*$Z��r��Y��0|#t�s-L&�V���c%��N�Ʊ��p��i�6�cy���u��@�av���wJR��V1SC,�9!�E{o�}�s͡���{sӠ�X��W�����9�X�Ǝ��匐���`�4�m��τ�2;D�f1��"5lHA�>�Jt�kA���v^1��"f�������z�H)%��V=�̖�)򻵤O�%ӀS>�l��g�H5����Ϗ������97��E��$Hqaډ/��$B�S#�� -�j�U�dt�	T��7���u2��Bu�� �Z�Vj�z�|�\dj�]���Ģ��PP�51/�{����KI%�ZY���=��U��BȌ���c��Fd�	���3����tC��:� ;����f�i��v	���gNFP�NxNa�*]��I{`�j~�M�F�4�6�h��85���(��p`����^9:5��DϽQ���;rM߾��lRn��<    )�ߢ?�64S���A���"Iu�{l��t5Cq쁡C��slb�?��d`*A������Я٬H�$զ+Q�=V�tCk
K蘎8�ߣ��r�1u��HFI�o�Ax^�kB�nr�n�t�V���2�fFğ#���n��1��0�9�9�ʕ���a	0�jk䚾�t������όA�����	����]&��i��&ҷө`}�f��6�"�{6�ɯ�y�>MkHᅖ'j4����ڏ����-f�`�A1�29��������s�����-e�.��~��>�P�d����z0.��iR=7&���ۏerL|Ci��۾ͤ;�B@�0&���}��M�SS����MP��s,{� ���a?,�Ͼ��x����$��e��ql�R2�g�RR�ﲦi~�s�2����Hݟ�I�S�\jW}�b��~ޔU$+O���и�e�Է���
�#�1?�RV�����A����X	���J��U��4B��-KL2'U��Mh�b�y�\��T�l
���8u%v��If�p�Us�<0W��§��a^��� L����������<����.\Y��\I�z�I��ǖG]�	��7@)d��KER�C]f;:{Źy�P7Ĳ*p*�%?ɇl��w�ѽx.fvh1%���>=ҽa��F�� 4K���K�=�k��� ��K���5�I�_	~^^Bҷs`�.(�Y*F����ѥ��)	�)!(1��k���u�+�D�u�h+�ϱ�_Tz�ȏ��W�<��CJ:����"o���,5�yi[��b���`gD;t|���S��8/�m|��ڧ���?RA���(�]��e��w!��>�������ִ��s[�'�m�^cQ���C�~^ړG]��"v(�ٖ�Oρ~n8���ڡ����Ǹ�������� ����wy��N��{���u�P��~���)r����h�oH���}#�벾��A8���<N~J�� �/B�=yn��G��#9�&g�T��c�KmQ6���#2}6�㠾��[�BȧV>S�s�75�mW�a�]�J~ەGIH�P1I�u�\�6�>���o�h��-+���`i�����Y����>ݧ{��dȃ	�Y`y�]ƪ�^F�	U��v�=�(<�c���+�GM@(�L=��ԅ㣈[,k��Y�MwQw�ķhb�6�g=�����5�i�����0�<J�c��K�*Q���}��4�\��+j(t��X��������.��x)K
�Y����Ɂ;$��=�|_�%�K�s����k�o#J��z6�A��(sM���%�����U���\�ߥؑ��& �S��+���|��8�������K\�3���q�f`������\�Z2gT�Y��57r��9c�aA63u�\ڽ����WT0��#�b����S�s��������!S�(�r1iѲ��&nc�d�p��||6���D�8ưTdO�̚R	�bp{��S��,8P6(�'9��4�s����I���cXR�r=_�H~[[��'�RLmu�[��siz��V?�ګB���&�L�	�}?|g��=�Fd�^��q��Z���0t�[�?��0��e� ����m�EI捬9�YwȌ�ۏR��"j��� LBr�r�eO%�B)���H?|��eOoj��WP&c��89ƵOo�B������W��	��˟��cFn��D,v�y�^���?>��s�+��D�AI
T.�C�l�{��;1A+R���a�������0͒A�B��n�XSe�S�UWH{��g�J��"z������ۦ��^,��Iyn��~��d�	��su[�����U�]j.��sl��˴f!�2Сӟ����)}��ӿ��8��1L|F&�>r:	�Wh�@Օ�%�<J�zZ�a���9�?t��(%���!���cyӸՓ���؍��1/�F�%-� Z�C��<>�����%if`HB�s��Q��e�]�����{����^;�T�8��5]'�+8����*���c�����������
���Z�������j�	��^��@������|D��:�PJ仔nz�{�I;�	G ��,m�m�Z�w8�:�.�{E��B���q�>(����S�mW���	�m-�Gō�t�F����A�ǒ�M-\��>떘[���Ϸ��UL����ȐNρX�_���k�˟N��d?;�����q�҈��߫�ʇ�$�j+x7�t�YW��X]ҍ�<�b�_È��#�T2����s<�TS[�֟S@���R�D����C�B Gm�O���"�KqQ)'�in�=VW|z��+t�zE<�ܔ��ɣ�<�3v��_D�|M7F�cQ�U@����z��)^�,��4���=��T�n�W�4��j�G���E���7��?��Jr��Q��a������6\�..�5�RN~�6�<YO.�/6Qz�3|x���>�&$���L�5���{/�z1�Pg#!�m��Y�pb��م�"#��~vl[�_��`�{\���K�=����z5i�Q�)a���}���e1�6S�'9>(�%#.�t��dV�1��X�?�u���	��ӗu4�.����dC.���t�2�J)e�6]�?ƾQ�5vC�Jb-#Ù�[u9/g�!��;̢�=�T����#녟=���7�ͳ>6Q�7_7���c{h=;@L,���	�~<�����$z8ܧ����&���HK��h��=V?J֓��[���X��Ǐ�l�=6�k�C��>U�e���HG�3���86�=�O��0���|ϣ�~�|��7���1��vl8iM�V����n|î�w��� �,%��hQ���Ɲ��y<�s��7!���r�n|=檟�0h"',8/����x��c�sY�&�m��vl.�/s������ܕ8W%s�!�3�K��]̟�����
Tj<�{�QR8H]��^rG�џc�}Y3hR<��� ��9~Ɵ
�K����'}e���'r������:��]d譃c���YJ=� vp�3�᤿�i'�����{���>J� �X-�b����KJN�!ؿE�2����﫽��<��4
��),�q�g�n�@[�9^JǕC-s�����?JŖ�e�.8p����Ə�$hY3HG���7{z��
��dmܢؠ7���xk�p�XӸ�.JYg�l"L�J�����O/J�b�a�tS��K�Q���o�A��5r>WL?J�*!Z���c����5�y��)2�L����>�TMMz��=�� ==���QJĽ��APu�?�4��x�*9�ZX�c�%�U���f�?������4m��K.&j9	��56����}�;>9�X��Ô�)���:}%&6��7ߧi���1�Z̲p�l�{<8�����<��,&9��I�L&5��o��V�%�O}M�G��&����Yv�U?���Þ�g�oG��oS�
��3�(�6[ .8���KV�E*5���[]�2�WM=@�C�o�7-H��j{�x\{���ˏR�s��O�݁~^�����gL�ixm��&u�)	~%�s9���+>����
�}[�V�E��}�Q
w�.�GI_p4i׹[|z�/�� g���Ky6�R^Ur;�ѓ/f��۠���*��`�{��X��G�1����ڙ�O��R����?!�Ym	0Hg�=V]JJ�a�'.��Z��g=���P� ���7ռF�ׇ�u΀�X|Si���`�9q9K���T.��=�fc�'���V���u�B��9N�>�ۏ��B����"ڠmV�M�R`�]�w�����ꧪ��\s�\"��{l�pԙ;LyZ=��P����s�h*L/�*rn�{l��_����G�<�?G{7�e:�O���������SUO����>P��=챷u�A��PG�#<.�K�G��e��PV�}Nr5R�����s��1�s��������A��祭��m���)
N	��˫ŧ�	�ץf"��}�&�'���2�QQ���O�ڧ�����<s��>��Q��T�{Tk�����T�rNZ��+�ˬn�~�Ğ_8�����ګ|����K8�X*s��O����    MB__5�F~�m�j���Ry~��x'�'~\v��0�����ҙ��b���:�e�m�����"�+8� E&��6��2�A��3r����O_����O=�w������m���!<�X�}����|ቛ��u,K��8�o{�ߌ�+4�OI���S���tvԵK����җ�6Y�<�_�n	E}>��$��Gk�6�u�Y���ƳO����Gcu�c�SY��OP^qz�۠]��Rw5�1��9�����E�M��
x�H�ٳHcә�q�Y��ag��5�Q_J�9��yL�/c��e:!7���A×k:�s�`����Fß��$}C�`��F���\u~'kY8��;ĺx^�ƋV�0�h��8�W��n��������sl�}�g�����K^����E7V��*j#��ϱ&;�=&�c'���<�p�G���b�*4�-:�^��g;���J㮀��f�%��F�>]h�����o?x�V�/��`=�;�Iq����:�;�������,�s=B`�/9.'oz}����� Y{du͟��?�܄s=��c�dO�s��GI�t�m�v����9�}*�T^� yͼ�{,�-߿�(
}��^R)Ϸ���W<��@�id����U��(����������S�m��m14 ̊�y����D�^!�a	�sy�ˏ��0B��:Fq_��~�I�{/�w��B��}M����U}r#Y_�H5�Aşc����D�n����	�7��&Q��N,�ŏ������``�!���eᥤf�QZa>���E������_j9B�|?6'cM��7U�R���9u~^��E_z�"N�����s,{�������mJ؏�������}`%1�>�s�<G\��������tX�>K�0�O�O?�隴�I�j��>���{�:���%0>����zlS��9�~b˜�F���2c~H�a2N�{����tb�N�Gw#?��?`{&o����n��3qѪg�Ǐ���t{��׉�t���ǲ����b�EC�b4���} ����{?1�0�����S�[+zd���s�9���G�qgm�f�\,���\��QrM��1j�Z8���l�H��-���W���+�}q�I�w�l`�Ot[XV��V3P�D���CP�y%nZk\������{,��7���i������w׹���/[_��doq���הrY:�:��Հ!=#<��6J������YOn��/��-'�Jp���=��j]���=*u&:��y�eOo~�́
r���%״.<���T\�9���ȞV���ӄ<94㬆���ӷu�%)�����K��~��(��̣h�y�ǃ�SSIxY|�܁��� ��?��Y��D=63f���&��i	,>p������t&d.��mG����3�V�6��k��,�}���֏�`�;Fa6�M�����.�V��7�u��緙����ۦ3�΋�}b�`�ӛ�~ԭ�sb�Y2����cá(-��2����80g����u�O�
@C̟��n����W1LG8�V��������J�<e���w�����d���Т����'���Ҹ��2j(�g�/u�>�fԓg��,��¡\j9*'��U���}��ק�+�F�f1�����/]����)�e�,��k����o1����?�G�!>U��I��\��u�<?��c�&�9��ԅ�~�P��̽�=6��ۤj�{m��N�]�U?U<��4�:6�n�����+�Q"�@�߱�y,����J�f��F��Z�Ï��ƌ��B����=V��9
n$>Ϳ�L�������ZC)��c���9�?c˄r=��/���r�B�q�@�����&�z�ޫ%R�l���T�l�*�]�?$ߧs�j.�YC�\��W�M�T�,��Ɍ����}��.3Sd�2`BR�G��?����!���fPW}=��R�:�E�^;�[V3�~�ק��7U`hwd��s��_�b����'���G}�p�m���9{:��?�Y0�Ckp��ܦ�).��V�"��!�;�w~T���cL���)�fhy�QwmJ����g�%y��O/���;K�&� ���nc���GT���s�J�x'$�r�d�}Z�~��Gݰ,� �\g)�K�#F��4ǯ��x'7_y�ڳCש!�[sy����ÌJ�s�E����9֍|;'���;?Ji�^�t;(���5��n�Ϻv��zK
��cŧ7^��-���J�>|����cJ[���c�Ƨoz�څй��u�?�V?�JC�v����I���=�R�_��b^;'�����x'Z�J�-k��J�������W�%�}m��YX�c?껺%�mf��~���w9�i-�Ȭ=6�ǧ.u
Ҽ���a��ݣ"��H+>�q��-�O[��sW�;?J�u�3vH�!���XI[���9�Km�p|���(]_ד��|A�<YO.i�Mos�D��������ۣ�{(;溣�q�%m��z:���-<?R�>r��Q_�-����X�����F��|��g��.U�O��k���d?���cy�G���{�1jR;���.�p}
�����^�>������C��P�~�m^��mÄc>/�������1�u�!��u�K^:h�yIbf��P.���֏�3s�&g.E�G���r1�Qd?�X���]�G�O�K��X@��g���u��}jU4������J�x�Z�F�o F Vi?�ڧr恪)J��ُ�=JY��ƭ8������\�5?�\��:�]�G��W^~���F�^ �>��o��K]f�x���lp�]V%c)�%0;����:������-h���G�5�E��V�5�J�����W�������֏�{�����_0�kZ/��2#���ز�|_�Cj ��F��sӝu�*Mj���6�n~���(ޥCW��Ǹm�粨�'�6�8��.u�͟v=QǨ%��T���ZGQ�
�0-�O������&}��Y8}8�lz}���Ć�\?s�^��j��R�k��㠷u�<��o@�r�K�9�o��Py������ӻ�z��
5�����[�A��c3������h��Y�d������|_�l9������wy�Q'H4=8%�k��o����<J�0������P^���murVK�<���]jJ���3(��T~���.5Q���=��(�������>ϱt{�,=��i�`0cytbjJ�t{.�5�I�62����~z�J�<�5�2�<�/{*g?!'k�Х�$��c+P*��Q�d��#��O�=����c�ܘWV��\u��ߥd�N�'N��ױ����2U_�����i;ໄꜳ�ΏR<`u��:�ڨ�}�ۏ�j��Y�[���W��r ���b�S��Z}j}c��/���t����y+ߗE���%q~�G#��m�T�pP�.�f@\��x�Qr6i�I���:]v�[�?�J�um��&�&�P�¡�x�J�sFFu�Ӳ��)�!1�̣c6:�c�#��gl9�6*r~��.u��'b\�]�����\���\Q��3gŃ��o���N̑��:g?�~�G�g�XJ�Z��څ�ʺ��Nމ��	|a��j��R�:�Y?m��Aɝ�Q�~��?������iհ�Ӌ.�i�K�����ӏ��������[���o*�Ck ���
f@d�c���C��]��M?�5���w+牃�SS,�]�9*�
jNsA��[��U�g��Y��X�w�؏׆��<�� �\���7�ˉ-��$Tٚ۸�R2:ru�ǰ���{ly��өT�a��0�3}=V���xq-I9���������ww��<?ϱ����ʎ5��-#��+�ˏ��aDϳ�l���c�M�\�����@�������)��_V�ԂKH���;?� 3�OW��Q��ͼ��c�j��3�>i�������=Ϝ��&4��մ�/=�3��3� sM_�>�K����:8���s�V]�{,-)�f�S�{�~���%9���c��X�~����*�oи����.�A`�ڜ��_~�]�Y���7    �95oA�קj�X��}�QWN��+-�����W�Tb�SM^ʝ�*���Q;vjd����d���(��F��)��,�s�T���LΙ��F�¢!�Xռ���L.�#��m��Yӥ�/��"�YC	����̏�Cs淣6����I}�QT�,S��+��QЈ�Bc����-�R1��;�,�����^/���V�K��`>��Y���\�#��^���R�g=6�^]CuK,*z����ZV%�tr�G#Q��Xy�R]����^sL�{x}���(��x���������ܪ~������Q������QB���gye�lֺ}��^��D@x$�`��ҕ��S5���x���uß^�*N��	E�`��]��f(��bV"��|b����z�{��e��c��ˏR1̥�̤��Ҫ������{/��������;?�ޯT|d���9x�.<���}ƅ�0�ܮ3Q�\�V�cr�{���2Xs�mˣ4�D�i��:ٝ>�X��یvQ��|���K�{m�P�x��6���i��<Z�񺟹���R���8�9P03����P��<�� �ob�9��G{*|�er�G��#����H����ק�[?J��<�}�J�8�g�Զ�K��R�u4R����
r�q�xn��C���z_y��&�z��A�7XD��X��G�w`���p�7�c1�M;.��Y��{�����.5}���]�������x�ߖ��9�<>�i�s�:��E�{,]�[_쌃� �<6�q��?�>�H7�FlO���m���=N;�yC#v��ֱ����q�uK�*r��s��X�T��Ws2.t���͏��[:�wA;�}�ˏ�k�}ˆ�+�=�w�~*5����s��Ĥv�mn��En:zkh]�=���S:.{<V��W��Rǲ�R�^�ɹǆAk~��Ћn��eiv�=f���'���/$�w#5ץ�s+��N����F`�������1��ECЀ{����M���}��l~ۙz�N�Is2���-�R��[�p�(N�Q_��+�K�<'g�@�ɿ�V���l9���z��Ε��択���VX�ȿ�k.�/���J�x@����P�&��i`�Y��=G�;��ڧ��A]����ҕ�u�C������ȳҎ�������Ў5�dA6�z��Qˢ0h���a��9�9�>U~���"���ưtʟc��J�2D�ӾK�����ly��a����6�Ͼna�ɺԔ�J]��\�V�T�9�+����'����S1��*�oY�h{?J�}���0h���J���M Fq��U����ӏ�Ì�����syc����)��r��5�|�c����R�1����94-�<J�pT?
C9��9�?��J{�;0o�3�21h-n8���<�����o�w��}=cH��$��_��x���,�Đ�/�n�(��8�xX���M�.q{�Q��X���ɳ|��ӏ��Yhw�	ǆH�{}�u����E���W�&���Kɾ�����utq�]��T�D\XF ��̈��cO��[��5���j�g^��Ec<���g>��u���9x����g?-]I��go���j�*�_�W���J��'��8}��͞j=X�,q���w��W��-�r2 ��]B�w��/ϡ��!֞�'��U?�h0���l��^ρ�;?�\gǝ�
y,�D��ڧ�Ox���?B�z21$��G��򢉀Y%�����[�x��ܪ�\Eq�8X�[~�R*+N�<������Rֆ��V��F�ġ��}���6��=��X����G������`|��}��ݶ~�䚫8pp�K�s[6���c�	+���6�/e��+���m�l;Hc�5}����S����$������\�rd��W�中V6ݞ�x�qF�'Ǟ����e&���g��rF��|�X�KԂ��c��u�/�[F�y�И����Q_��D7+1�v_�Ώ:��.�='�L���lo?�P���A���x|7u�<#�`U����2����/LLK�O]�ʭV3R!��Sv[��.%�JC�g̏�=���.\��ͫY���5�q��v0.�w��׫b���ۏ�c7��&x'	3ɱ����W���?��,B��6�-��w�F�}��w���9��A�;yC%G��Cim�ӛ���iE�c3?����U�O5�デ���]��X���s�r�ځ1�����%_��L�I�FL/��\�K�J�g����H��¾9�����o����O����ߗ�A���'��i}�Nd�ym�bM����;?j�8E�?F�i|�K_���ڶ���檯�Ƌ��95_�����Z_:���)��
���3�͏��|s�#��։���%�H���}�1�+��:���}��~j��\�6���}�Z��ZGnZ����Ï��Z�ۄ�o]���MWR�
frl�֒�o?����(�8>���3?�c���r��WZ��tG�.�n���^tC(f�uN��^~T�6H=��к%z^����{쬱q�m�0=���R���d��l��7mo?���Rx\�c�9�=z}#�F�1.��З"�ͭ��1t��xk��g.މ��j���jh̔ҽF����y8�z3�����@?J��MBf�1]ƈy�c���	�,f��6h�u��	�)�j��~�5�L��
�8�Q3��X���p�b����/��x�}��"�Kh?�fl�ï��F�b�4�c���M>!��+�S��g����SY��R�c0�xԟ~��+I ��<0/)[^�ϱ�����+��z��~*cY����ٽ����E�^�Qj����I��K�����^(u�YL�?�e��s��g�}t`k�{l�NԚJ�	�&���{I=n��R/<��X��>�9z\�����Kio����cá\�M{�n���܄����|��tL}B�q9=��7܄+9�>?������[���X��˖�_��
����,>g�ǅC�����lA4��<�S5�-i;֩C2r����R��!yZ�k�=��#-�*���e��io1�`�ӖG�Y����T��,��i�VA��,W.�M|����˜ �;��Z����e�Nd|z��W��)�IKE�Cjur4 ٯ~��qҢW@�〞�c�k~���{�#��p�g`������|����Ѓ�5�Di���ש��缼z}�>�.{�P�����y�Qs��a�|�$ט�y�K]f�����8s�W�y�Q��Ƃc50��q����GI���r�l����{l����E�?�{o!]��kމ���\}��xl����"�9�~rFH�n1|C��$�� qay�����)��2�4bN@���X�Qʎ��s��Y������_�cBK~"i�{��,���D͠�$����,]I��Z��!�;�C�͞^�t���[�y|�e��y9n�:n���o�]V��| T��W~��,=�r�M�u��C����/���c�f`䳦k����e�mP�O�������<O�=��ȸ�u�S����hd���o�u�.3"���̯����.\1w% �0P�淭[|z�N�phQ�1���ҙ�5i���{��w��z]:_ϲ��mph��9���?'�Π����{��fz/���N1��>��"�C���9:�;|�mo�!W��8����m���X����r�߬�Z� �Q"V�o���牃��<1L�ǆ���Y={�P�������o�_���X�ǲ����&O�`�Z�S�sm���pJ�-��<�l��/�ܡ-Ǽ������w~��E����\��m~��cJs����E��%��l�T��X��}�M��8B�O�1QO��]�����+���m���\w�������9k9��jL��(?~[���1�'{�QwL��Dh�\_��z}j�N���^h�*|��.��-%Oye>��-��z[B�bRW2���{<��;_]ħ� =���	�t�~�p�������dMZ�a*�%h �7�M�G� eO��>���-��G]���i��*b>��^fȜ�H�P��u���x|�Y�Q_O�{k}���꼀2�j�_Ʀ�v��~��(�ÜU�� >  6/�2���Hd�6[��}=�>�����Zjs��^�u��҈ �:�O�2���m��Y��m�4s�]�[����v�)P����b�Q�ǧh1���Q�>�,�Ï��r~Y�&b�'q[}n��E���#{���O}��G���_1L'����t�GI�q}�:�3�=�?�N�<O�0���tn�}�+8�}ˎ-��s�wS�g�x,C�'a^c�=�^�.R�yR3�}�#,<�͎�=>����z��xp(��/g^	T��|.�*9V�7_Sd>��'�����/�uܔc�l�#,މ�����L�ɽ�c��5eUop�Rݟc�Q�ߪ9�`�c�Np]�����8.c��00K/���x�Q��6�=��~��>�>9WT�%x��]�OeW�+��y�	4��D6����#*Җ���m4[�)5�q��5���xo��DT�k,��J\��Wp�5��� ��K\��۬�������7�������T����z|��#�o!��ǳ�O{�lf��T��sKy�Q��qw��C��:?r��?��ݪiei����|��|r���uIK���G9�\Է#g�ZL��I�����(��lHo<e��Ľ9j��i���`%m<>γ �LYq�yJz��a���L�#�@w#$ߧ��E���e`j�a�1��GQ�������.>Z��V��z��S����4�V}=�:�2G&�� ,mh>��|}�gR*0h����%��D�1��I�_���My�M����r��X^:����������VG]z'�"�gw�A����عOs��iaU���ܿp�=�a�3�U�ƶO��IL�WW���n�(��!�]Y�Ae=z|/����y���t����KY(��?B��N�GN)[�/S��������jw�)knJu��m)b���ʯ��I_�-Okp��ZLK^�:�i.�y�+	����6���g`k��!A�(J���{���0a�o��}�5��u�QLO�y�WzҶ�� �<��ͮA}�0����9VRWÖ�uO!��1���������(tHbvΈԷ�g<���q*Dh�@;ݮ����z��>��R�O���(�|��Zo��ŀ!�����'=��b��k��O�YyP�m.��
йB�P7�׷$�YA�:�}����eX���*�|MN��]K8���"��)s��3���5�y�>�[i��GuИ�*��n��O'?��w�3R0	�5f���>�{0��0���h�����]<B���vd�?�^�$>��W��1�m�vF|d;�1������>��\s�}3��A6�c?�i������?��0���G^4�=F$5��nK&?�iee"#�$h�hp܅L�(��g0n��z�G�mI_�>�?��_#�3�.��}�s��>�,:C�x�ڮ�&s���=~��5����c�u=+	v�9#Y%�z,��������U�>����k�|�9�qR=���G�o�f>x�7�� 2�QL�Iଌ�������Gݽ��'�b&^Ĺ"J1�G
�=6�+Ã��9��V���ӓn�{��?�����R��9]7N�Ȋ�� V#W�Hm��ɓu��g�O�N��+���9���&�<0����d���|�L�������[G�{�g�Q@�E��e���8�3�xڀ�]C�f�1���Aɦ)[�O(�?�x�g������r�z�������������b�[��o��gԵ�� ���3Ap9	�����y��x����@���=��K9�u=�h3����(�n�fƨձ��B~knJy8�ϖØ�Bw����y]�|���ۧ���8畽 v&��a=4��G>>����,pD &k�p�L��j�b~��y�6\�뇤���<�4Y��a�I�6��j�S�,�Y����
�cM�?����9��kڟ�C!���"�k,�)���#ۧ�𧚛_c�G]z�7��A=?���O�+<O�t&d�6�׸^"�oj���
pl�p��p�?q�C�s�� կ�ͣ.�gEt6G��Y>�Pν���Qr8~]�y��>H����|!�K\��[�Ox�>��l��G��)�+�'�c�F���J���K*��s׹Oc2��H
�Ԙ]OZ㊧t�1^A
M{�lM�`����l����}u�k��E�e�M�8�V~J��t�4ܱ��ݦ�C�`%I���_8JR��kZ�����Lcw���/i�o��s.6J�bJ3џe�SZ7�4���`��;\8���+�έִ𧴿~��O��U2���s/?�,�.?#���}k=�S����yK1yŸ<m$1vyӕd�q�潿�	I�?�7#�!S�?^oͫ��ai�:��L�S��G^�=_{Ǎ�uC�<
�m~��1�����c��I��=�y��/8��9.�Ji��y������iQH�ֱI<���ǵ�����Si��c��s�&���0��K�Ǳ1|r~�6�FjYuԍ�If8��t1�{���.���
��9.G'?�[=��� �Y��zl����r�r,��V5����b��rф4*#�����y��?��9"}j�U���ۗ:���'&�*|4G���?����^L70�\�����G�M�g�GP��A���Z��n6o9��8���0S��>�8���3{��͠u�K]�,���<˛�^���SA߁��s�M��s	0�d����:���Š5<���?k��N�3պq�w|�~�N/[���c#��|�S[��ߧ���Ү�_��?��P.gԫ�]R��a��4�ጜ��Y\wT�v�s�j^�����w�:�B�\[Jm�Զ�2��o�&j
ܧ]��G1�ѭ� HjFΝնp�7���>2��@+�_c�M�=��*!���G�x'�g^X#y�߶z�ke1�9`��Y���[_������O��螏:�Q���Y�X�]���}�Pn~Z$���75w���֦fu�m�q��h_��u:s���&o��N����K�J��i�X:��t�Ӭyv��_ש��05l��=쏖]gB�g
�&�֗
~����O38x}^���7��F��>͡G�c�6�^س@�?�W��Pd�Oy��y?uӗ*��PY�h�3��)~8���L\w�(�kT�����t�G�9�y���[Prt=i��(�!)I�ƭ���}���{a��
���3֮��E���3��Vӄlϻ�O�w���Ö�����O/z�Lc��P�޸�����9k�:�8�=�{��~�Q�!%���z�+�~�;�	z�=�dsSե'}ӧ#x툙�#�c�M�����9V�l"�o_���w �u�$KHb�$���.�0gL�'�$~��3q�+I]`��<ul=>���yC��u������9�γ�&x�e��{b�}yH���#d?������jF]      �   d   x��;�@���{�'�#(h�Mcv�����?�������Eˢ��6�Aެ�k��(��8��*�u�$��H�,���q�k��ђ��d��}K��|�      �     x�}�=j�0F�S�����ۤYR�����╂,C�#�bQ��kӉ�%�2Ƞ߆ͮ��[xE��w^�c����dcE��?���r�z�N�d�(�eV��
��mR;)N�3XC��+�V��@��v��ь-�Q��0�8)+W젋~��ǎ擑2���k�����c�EE_Ͷ:��
���U�]!�@QٳT7�'�
(*�Ϭ���x�ض����g���l���;*x�<��D��'BϏ^*�z-�Y
UJV�uBY`MB\`mJ_��Q�}� �ь�0      �   K   x�3�(J-.IL�<�9O!%U!8��,393��ː3 ��8?/1'��ˈ�%����b�|��Ē�����L�D� ��r     