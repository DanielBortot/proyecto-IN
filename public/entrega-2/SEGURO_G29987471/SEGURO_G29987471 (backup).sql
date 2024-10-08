PGDMP      $                |            Bi-local    16.2 (Debian 16.2-1.pgdg120+2)    16.3 Z    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25696    Bi-local    DATABASE     u   CREATE DATABASE "Bi-local" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE "Bi-local";
                root    false                        2615    28977    SEGURO_G29987471    SCHEMA     "   CREATE SCHEMA "SEGURO_G29987471";
     DROP SCHEMA "SEGURO_G29987471";
                pg_database_owner    false            �           0    0    SCHEMA "SEGURO_G29987471"    COMMENT     B   COMMENT ON SCHEMA "SEGURO_G29987471" IS 'standard public schema';
                   pg_database_owner    false    6            �            1259    29014    ciudad    TABLE     �   CREATE TABLE "SEGURO_G29987471".ciudad (
    cod_ciudad integer NOT NULL,
    cod_pais integer,
    nb_ciudad character varying NOT NULL
);
 &   DROP TABLE "SEGURO_G29987471".ciudad;
       SEGURO_G29987471         heap    root    false    6            �            1259    29019    ciudad_cod_ciudad_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".ciudad_cod_ciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE "SEGURO_G29987471".ciudad_cod_ciudad_seq;
       SEGURO_G29987471          root    false    216    6            �           0    0    ciudad_cod_ciudad_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "SEGURO_G29987471".ciudad_cod_ciudad_seq OWNED BY "SEGURO_G29987471".ciudad.cod_ciudad;
          SEGURO_G29987471          root    false    217            �            1259    29020    cliente    TABLE     ]  CREATE TABLE "SEGURO_G29987471".cliente (
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
       SEGURO_G29987471         heap    root    false    6            �            1259    29025    cliente_cod_cliente_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".cliente_cod_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE "SEGURO_G29987471".cliente_cod_cliente_seq;
       SEGURO_G29987471          root    false    6    218            �           0    0    cliente_cod_cliente_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "SEGURO_G29987471".cliente_cod_cliente_seq OWNED BY "SEGURO_G29987471".cliente.cod_cliente;
          SEGURO_G29987471          root    false    219            �            1259    29026    contrato    TABLE     �   CREATE TABLE "SEGURO_G29987471".contrato (
    nro_contrato integer NOT NULL,
    descrip_contrato character varying NOT NULL
);
 (   DROP TABLE "SEGURO_G29987471".contrato;
       SEGURO_G29987471         heap    root    false    6            �            1259    29031    contrato_nro_contrato_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".contrato_nro_contrato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "SEGURO_G29987471".contrato_nro_contrato_seq;
       SEGURO_G29987471          root    false    6    220            �           0    0    contrato_nro_contrato_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "SEGURO_G29987471".contrato_nro_contrato_seq OWNED BY "SEGURO_G29987471".contrato.nro_contrato;
          SEGURO_G29987471          root    false    221            �            1259    29032    evaluacion_servicio    TABLE     �   CREATE TABLE "SEGURO_G29987471".evaluacion_servicio (
    cod_evaluacion_servicio integer NOT NULL,
    descripcion character varying NOT NULL
);
 3   DROP TABLE "SEGURO_G29987471".evaluacion_servicio;
       SEGURO_G29987471         heap    root    false    6            �            1259    29037 /   evaluacion_servicio_cod_evaluacion_servicio_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 R   DROP SEQUENCE "SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq;
       SEGURO_G29987471          root    false    6    222            �           0    0 /   evaluacion_servicio_cod_evaluacion_servicio_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq OWNED BY "SEGURO_G29987471".evaluacion_servicio.cod_evaluacion_servicio;
          SEGURO_G29987471          root    false    223            �            1259    29038    pais    TABLE     p   CREATE TABLE "SEGURO_G29987471".pais (
    cod_pais integer NOT NULL,
    nb_pais character varying NOT NULL
);
 $   DROP TABLE "SEGURO_G29987471".pais;
       SEGURO_G29987471         heap    root    false    6            �            1259    29043    pais_cod_pais_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".pais_cod_pais_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "SEGURO_G29987471".pais_cod_pais_seq;
       SEGURO_G29987471          root    false    224    6            �           0    0    pais_cod_pais_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "SEGURO_G29987471".pais_cod_pais_seq OWNED BY "SEGURO_G29987471".pais.cod_pais;
          SEGURO_G29987471          root    false    225            �            1259    29044    producto    TABLE     �   CREATE TABLE "SEGURO_G29987471".producto (
    cod_producto integer NOT NULL,
    cod_tipo_producto integer,
    nb_producto character varying NOT NULL,
    descripcion character varying NOT NULL,
    calificacion integer NOT NULL
);
 (   DROP TABLE "SEGURO_G29987471".producto;
       SEGURO_G29987471         heap    root    false    6            �            1259    29049    producto_cod_producto_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".producto_cod_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "SEGURO_G29987471".producto_cod_producto_seq;
       SEGURO_G29987471          root    false    226    6            �           0    0    producto_cod_producto_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "SEGURO_G29987471".producto_cod_producto_seq OWNED BY "SEGURO_G29987471".producto.cod_producto;
          SEGURO_G29987471          root    false    227            �            1259    29050 
   recomienda    TABLE     �   CREATE TABLE "SEGURO_G29987471".recomienda (
    cod_cliente integer NOT NULL,
    cod_evaluacion_servicio integer NOT NULL,
    cod_producto integer NOT NULL,
    recomienda_amigo character varying NOT NULL
);
 *   DROP TABLE "SEGURO_G29987471".recomienda;
       SEGURO_G29987471         heap    root    false    6            �            1259    29055    registro_contrato    TABLE     O  CREATE TABLE "SEGURO_G29987471".registro_contrato (
    nro_contrato integer NOT NULL,
    cod_producto integer NOT NULL,
    cod_cliente integer NOT NULL,
    fecha_inicio timestamp with time zone NOT NULL,
    fecha_fin timestamp with time zone NOT NULL,
    estado_contrato character varying NOT NULL,
    monto integer NOT NULL
);
 1   DROP TABLE "SEGURO_G29987471".registro_contrato;
       SEGURO_G29987471         heap    root    false    6            �            1259    29060    registro_siniestro    TABLE     e  CREATE TABLE "SEGURO_G29987471".registro_siniestro (
    nro_siniestro integer NOT NULL,
    nro_contrato integer NOT NULL,
    fecha_siniestro timestamp with time zone NOT NULL,
    fecha_respuesta timestamp with time zone NOT NULL,
    id_rechazo character varying NOT NULL,
    monto_reconocido integer NOT NULL,
    monto_solicitado integer NOT NULL
);
 2   DROP TABLE "SEGURO_G29987471".registro_siniestro;
       SEGURO_G29987471         heap    root    false    6            �            1259    29065 	   siniestro    TABLE     �   CREATE TABLE "SEGURO_G29987471".siniestro (
    nro_siniestro integer NOT NULL,
    descripcion_siniestro character varying NOT NULL
);
 )   DROP TABLE "SEGURO_G29987471".siniestro;
       SEGURO_G29987471         heap    root    false    6            �            1259    29070    siniestro_nro_siniestro_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".siniestro_nro_siniestro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "SEGURO_G29987471".siniestro_nro_siniestro_seq;
       SEGURO_G29987471          root    false    231    6            �           0    0    siniestro_nro_siniestro_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "SEGURO_G29987471".siniestro_nro_siniestro_seq OWNED BY "SEGURO_G29987471".siniestro.nro_siniestro;
          SEGURO_G29987471          root    false    232            �            1259    29071    sucursal    TABLE     �   CREATE TABLE "SEGURO_G29987471".sucursal (
    cod_sucursal integer NOT NULL,
    cod_ciudad integer,
    nb_sucursal character varying NOT NULL
);
 (   DROP TABLE "SEGURO_G29987471".sucursal;
       SEGURO_G29987471         heap    root    false    6            �            1259    29076    sucursal_cod_sucursal_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".sucursal_cod_sucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "SEGURO_G29987471".sucursal_cod_sucursal_seq;
       SEGURO_G29987471          root    false    233    6            �           0    0    sucursal_cod_sucursal_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "SEGURO_G29987471".sucursal_cod_sucursal_seq OWNED BY "SEGURO_G29987471".sucursal.cod_sucursal;
          SEGURO_G29987471          root    false    234            �            1259    29077    tipo_producto    TABLE     �   CREATE TABLE "SEGURO_G29987471".tipo_producto (
    cod_tipo_producto integer NOT NULL,
    nb_tipo_producto character varying NOT NULL
);
 -   DROP TABLE "SEGURO_G29987471".tipo_producto;
       SEGURO_G29987471         heap    root    false    6            �            1259    29082 #   tipo_producto_cod_tipo_producto_seq    SEQUENCE     �   CREATE SEQUENCE "SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE "SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq;
       SEGURO_G29987471          root    false    6    235            �           0    0 #   tipo_producto_cod_tipo_producto_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq OWNED BY "SEGURO_G29987471".tipo_producto.cod_tipo_producto;
          SEGURO_G29987471          root    false    236            �           2604    29315    ciudad cod_ciudad    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".ciudad ALTER COLUMN cod_ciudad SET DEFAULT nextval('"SEGURO_G29987471".ciudad_cod_ciudad_seq'::regclass);
 L   ALTER TABLE "SEGURO_G29987471".ciudad ALTER COLUMN cod_ciudad DROP DEFAULT;
       SEGURO_G29987471          root    false    217    216            �           2604    29316    cliente cod_cliente    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".cliente ALTER COLUMN cod_cliente SET DEFAULT nextval('"SEGURO_G29987471".cliente_cod_cliente_seq'::regclass);
 N   ALTER TABLE "SEGURO_G29987471".cliente ALTER COLUMN cod_cliente DROP DEFAULT;
       SEGURO_G29987471          root    false    219    218            �           2604    29317    contrato nro_contrato    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".contrato ALTER COLUMN nro_contrato SET DEFAULT nextval('"SEGURO_G29987471".contrato_nro_contrato_seq'::regclass);
 P   ALTER TABLE "SEGURO_G29987471".contrato ALTER COLUMN nro_contrato DROP DEFAULT;
       SEGURO_G29987471          root    false    221    220            �           2604    29318 +   evaluacion_servicio cod_evaluacion_servicio    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".evaluacion_servicio ALTER COLUMN cod_evaluacion_servicio SET DEFAULT nextval('"SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq'::regclass);
 f   ALTER TABLE "SEGURO_G29987471".evaluacion_servicio ALTER COLUMN cod_evaluacion_servicio DROP DEFAULT;
       SEGURO_G29987471          root    false    223    222            �           2604    29319    pais cod_pais    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".pais ALTER COLUMN cod_pais SET DEFAULT nextval('"SEGURO_G29987471".pais_cod_pais_seq'::regclass);
 H   ALTER TABLE "SEGURO_G29987471".pais ALTER COLUMN cod_pais DROP DEFAULT;
       SEGURO_G29987471          root    false    225    224            �           2604    29320    producto cod_producto    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".producto ALTER COLUMN cod_producto SET DEFAULT nextval('"SEGURO_G29987471".producto_cod_producto_seq'::regclass);
 P   ALTER TABLE "SEGURO_G29987471".producto ALTER COLUMN cod_producto DROP DEFAULT;
       SEGURO_G29987471          root    false    227    226            �           2604    29321    siniestro nro_siniestro    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".siniestro ALTER COLUMN nro_siniestro SET DEFAULT nextval('"SEGURO_G29987471".siniestro_nro_siniestro_seq'::regclass);
 R   ALTER TABLE "SEGURO_G29987471".siniestro ALTER COLUMN nro_siniestro DROP DEFAULT;
       SEGURO_G29987471          root    false    232    231            �           2604    29322    sucursal cod_sucursal    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".sucursal ALTER COLUMN cod_sucursal SET DEFAULT nextval('"SEGURO_G29987471".sucursal_cod_sucursal_seq'::regclass);
 P   ALTER TABLE "SEGURO_G29987471".sucursal ALTER COLUMN cod_sucursal DROP DEFAULT;
       SEGURO_G29987471          root    false    234    233            �           2604    29323    tipo_producto cod_tipo_producto    DEFAULT     �   ALTER TABLE ONLY "SEGURO_G29987471".tipo_producto ALTER COLUMN cod_tipo_producto SET DEFAULT nextval('"SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq'::regclass);
 Z   ALTER TABLE "SEGURO_G29987471".tipo_producto ALTER COLUMN cod_tipo_producto DROP DEFAULT;
       SEGURO_G29987471          root    false    236    235            t          0    29014    ciudad 
   TABLE DATA           M   COPY "SEGURO_G29987471".ciudad (cod_ciudad, cod_pais, nb_ciudad) FROM stdin;
    SEGURO_G29987471          root    false    216   �|       v          0    29020    cliente 
   TABLE DATA           ~   COPY "SEGURO_G29987471".cliente (cod_cliente, cedula, telefono, cod_sucursal, nb_cliente, sexo, email, direccion) FROM stdin;
    SEGURO_G29987471          root    false    218   �|       x          0    29026    contrato 
   TABLE DATA           N   COPY "SEGURO_G29987471".contrato (nro_contrato, descrip_contrato) FROM stdin;
    SEGURO_G29987471          root    false    220   �|       z          0    29032    evaluacion_servicio 
   TABLE DATA           _   COPY "SEGURO_G29987471".evaluacion_servicio (cod_evaluacion_servicio, descripcion) FROM stdin;
    SEGURO_G29987471          root    false    222   	}       |          0    29038    pais 
   TABLE DATA           =   COPY "SEGURO_G29987471".pais (cod_pais, nb_pais) FROM stdin;
    SEGURO_G29987471          root    false    224   &}       ~          0    29044    producto 
   TABLE DATA           w   COPY "SEGURO_G29987471".producto (cod_producto, cod_tipo_producto, nb_producto, descripcion, calificacion) FROM stdin;
    SEGURO_G29987471          root    false    226   C}       �          0    29050 
   recomienda 
   TABLE DATA           v   COPY "SEGURO_G29987471".recomienda (cod_cliente, cod_evaluacion_servicio, cod_producto, recomienda_amigo) FROM stdin;
    SEGURO_G29987471          root    false    228   `}       �          0    29055    registro_contrato 
   TABLE DATA           �   COPY "SEGURO_G29987471".registro_contrato (nro_contrato, cod_producto, cod_cliente, fecha_inicio, fecha_fin, estado_contrato, monto) FROM stdin;
    SEGURO_G29987471          root    false    229   }}       �          0    29060    registro_siniestro 
   TABLE DATA           �   COPY "SEGURO_G29987471".registro_siniestro (nro_siniestro, nro_contrato, fecha_siniestro, fecha_respuesta, id_rechazo, monto_reconocido, monto_solicitado) FROM stdin;
    SEGURO_G29987471          root    false    230   �}       �          0    29065 	   siniestro 
   TABLE DATA           U   COPY "SEGURO_G29987471".siniestro (nro_siniestro, descripcion_siniestro) FROM stdin;
    SEGURO_G29987471          root    false    231   �}       �          0    29071    sucursal 
   TABLE DATA           U   COPY "SEGURO_G29987471".sucursal (cod_sucursal, cod_ciudad, nb_sucursal) FROM stdin;
    SEGURO_G29987471          root    false    233   �}       �          0    29077    tipo_producto 
   TABLE DATA           X   COPY "SEGURO_G29987471".tipo_producto (cod_tipo_producto, nb_tipo_producto) FROM stdin;
    SEGURO_G29987471          root    false    235   �}       �           0    0    ciudad_cod_ciudad_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"SEGURO_G29987471".ciudad_cod_ciudad_seq', 1, false);
          SEGURO_G29987471          root    false    217            �           0    0    cliente_cod_cliente_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"SEGURO_G29987471".cliente_cod_cliente_seq', 1, false);
          SEGURO_G29987471          root    false    219            �           0    0    contrato_nro_contrato_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"SEGURO_G29987471".contrato_nro_contrato_seq', 1, false);
          SEGURO_G29987471          root    false    221            �           0    0 /   evaluacion_servicio_cod_evaluacion_servicio_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('"SEGURO_G29987471".evaluacion_servicio_cod_evaluacion_servicio_seq', 1, false);
          SEGURO_G29987471          root    false    223            �           0    0    pais_cod_pais_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"SEGURO_G29987471".pais_cod_pais_seq', 1, false);
          SEGURO_G29987471          root    false    225            �           0    0    producto_cod_producto_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"SEGURO_G29987471".producto_cod_producto_seq', 1, false);
          SEGURO_G29987471          root    false    227            �           0    0    siniestro_nro_siniestro_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"SEGURO_G29987471".siniestro_nro_siniestro_seq', 1, false);
          SEGURO_G29987471          root    false    232            �           0    0    sucursal_cod_sucursal_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"SEGURO_G29987471".sucursal_cod_sucursal_seq', 1, false);
          SEGURO_G29987471          root    false    234            �           0    0 #   tipo_producto_cod_tipo_producto_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('"SEGURO_G29987471".tipo_producto_cod_tipo_producto_seq', 1, false);
          SEGURO_G29987471          root    false    236            �           2606    29117 2   evaluacion_servicio PK_1983dd201c57098d7e9f73ad2cf 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".evaluacion_servicio
    ADD CONSTRAINT "PK_1983dd201c57098d7e9f73ad2cf" PRIMARY KEY (cod_evaluacion_servicio);
 j   ALTER TABLE ONLY "SEGURO_G29987471".evaluacion_servicio DROP CONSTRAINT "PK_1983dd201c57098d7e9f73ad2cf";
       SEGURO_G29987471            root    false    222            �           2606    29119 &   cliente PK_30e34515d653a77773ce9acad72 
   CONSTRAINT     {   ALTER TABLE ONLY "SEGURO_G29987471".cliente
    ADD CONSTRAINT "PK_30e34515d653a77773ce9acad72" PRIMARY KEY (cod_cliente);
 ^   ALTER TABLE ONLY "SEGURO_G29987471".cliente DROP CONSTRAINT "PK_30e34515d653a77773ce9acad72";
       SEGURO_G29987471            root    false    218            �           2606    29121 #   pais PK_38afe25b3fbd774c49f9345be8c 
   CONSTRAINT     u   ALTER TABLE ONLY "SEGURO_G29987471".pais
    ADD CONSTRAINT "PK_38afe25b3fbd774c49f9345be8c" PRIMARY KEY (cod_pais);
 [   ALTER TABLE ONLY "SEGURO_G29987471".pais DROP CONSTRAINT "PK_38afe25b3fbd774c49f9345be8c";
       SEGURO_G29987471            root    false    224            �           2606    29123 )   recomienda PK_62d6a750d165b4b5d00c35a7c60 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".recomienda
    ADD CONSTRAINT "PK_62d6a750d165b4b5d00c35a7c60" PRIMARY KEY (cod_cliente, cod_evaluacion_servicio, cod_producto);
 a   ALTER TABLE ONLY "SEGURO_G29987471".recomienda DROP CONSTRAINT "PK_62d6a750d165b4b5d00c35a7c60";
       SEGURO_G29987471            root    false    228    228    228            �           2606    29125 '   sucursal PK_72da96b56c6e7d2e50ee02e5981 
   CONSTRAINT     }   ALTER TABLE ONLY "SEGURO_G29987471".sucursal
    ADD CONSTRAINT "PK_72da96b56c6e7d2e50ee02e5981" PRIMARY KEY (cod_sucursal);
 _   ALTER TABLE ONLY "SEGURO_G29987471".sucursal DROP CONSTRAINT "PK_72da96b56c6e7d2e50ee02e5981";
       SEGURO_G29987471            root    false    233            �           2606    29127 (   siniestro PK_795558fe3169fa8c19102418043 
   CONSTRAINT        ALTER TABLE ONLY "SEGURO_G29987471".siniestro
    ADD CONSTRAINT "PK_795558fe3169fa8c19102418043" PRIMARY KEY (nro_siniestro);
 `   ALTER TABLE ONLY "SEGURO_G29987471".siniestro DROP CONSTRAINT "PK_795558fe3169fa8c19102418043";
       SEGURO_G29987471            root    false    231            �           2606    29129 ,   tipo_producto PK_81ef1a237a02f68c92750cdbaf2 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".tipo_producto
    ADD CONSTRAINT "PK_81ef1a237a02f68c92750cdbaf2" PRIMARY KEY (cod_tipo_producto);
 d   ALTER TABLE ONLY "SEGURO_G29987471".tipo_producto DROP CONSTRAINT "PK_81ef1a237a02f68c92750cdbaf2";
       SEGURO_G29987471            root    false    235            �           2606    29131 %   ciudad PK_8596bb6c514c7838b26c7b148ef 
   CONSTRAINT     y   ALTER TABLE ONLY "SEGURO_G29987471".ciudad
    ADD CONSTRAINT "PK_8596bb6c514c7838b26c7b148ef" PRIMARY KEY (cod_ciudad);
 ]   ALTER TABLE ONLY "SEGURO_G29987471".ciudad DROP CONSTRAINT "PK_8596bb6c514c7838b26c7b148ef";
       SEGURO_G29987471            root    false    216            �           2606    29133 '   producto PK_b93ddc4e823830d01ece33a7f64 
   CONSTRAINT     }   ALTER TABLE ONLY "SEGURO_G29987471".producto
    ADD CONSTRAINT "PK_b93ddc4e823830d01ece33a7f64" PRIMARY KEY (cod_producto);
 _   ALTER TABLE ONLY "SEGURO_G29987471".producto DROP CONSTRAINT "PK_b93ddc4e823830d01ece33a7f64";
       SEGURO_G29987471            root    false    226            �           2606    29135 1   registro_siniestro PK_d274566e39a2b126dc54b734e96 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro
    ADD CONSTRAINT "PK_d274566e39a2b126dc54b734e96" PRIMARY KEY (nro_siniestro, nro_contrato, fecha_siniestro);
 i   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro DROP CONSTRAINT "PK_d274566e39a2b126dc54b734e96";
       SEGURO_G29987471            root    false    230    230    230            �           2606    29137 '   contrato PK_d854784824a3f84781cfa961d72 
   CONSTRAINT     }   ALTER TABLE ONLY "SEGURO_G29987471".contrato
    ADD CONSTRAINT "PK_d854784824a3f84781cfa961d72" PRIMARY KEY (nro_contrato);
 _   ALTER TABLE ONLY "SEGURO_G29987471".contrato DROP CONSTRAINT "PK_d854784824a3f84781cfa961d72";
       SEGURO_G29987471            root    false    220            �           2606    29139 0   registro_contrato PK_e6962570b6f34851c25d1d55f3c 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato
    ADD CONSTRAINT "PK_e6962570b6f34851c25d1d55f3c" PRIMARY KEY (nro_contrato, cod_producto, cod_cliente);
 h   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato DROP CONSTRAINT "PK_e6962570b6f34851c25d1d55f3c";
       SEGURO_G29987471            root    false    229    229    229            �           2606    29245 1   registro_siniestro FK_077b08f646d39452c6792fa89d1    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro
    ADD CONSTRAINT "FK_077b08f646d39452c6792fa89d1" FOREIGN KEY (nro_siniestro) REFERENCES "SEGURO_G29987471".siniestro(nro_siniestro);
 i   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro DROP CONSTRAINT "FK_077b08f646d39452c6792fa89d1";
       SEGURO_G29987471          root    false    3284    231    230            �           2606    29250 &   cliente FK_57784698f4e7f7d5c9d55132b23    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".cliente
    ADD CONSTRAINT "FK_57784698f4e7f7d5c9d55132b23" FOREIGN KEY (cod_sucursal) REFERENCES "SEGURO_G29987471".sucursal(cod_sucursal);
 ^   ALTER TABLE ONLY "SEGURO_G29987471".cliente DROP CONSTRAINT "FK_57784698f4e7f7d5c9d55132b23";
       SEGURO_G29987471          root    false    3286    218    233            �           2606    29255 '   producto FK_5dca93947111ad9b576d903cf2a    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".producto
    ADD CONSTRAINT "FK_5dca93947111ad9b576d903cf2a" FOREIGN KEY (cod_tipo_producto) REFERENCES "SEGURO_G29987471".tipo_producto(cod_tipo_producto);
 _   ALTER TABLE ONLY "SEGURO_G29987471".producto DROP CONSTRAINT "FK_5dca93947111ad9b576d903cf2a";
       SEGURO_G29987471          root    false    226    3288    235            �           2606    29260 )   recomienda FK_778a85c79a63e0b71b58078b891    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".recomienda
    ADD CONSTRAINT "FK_778a85c79a63e0b71b58078b891" FOREIGN KEY (cod_producto) REFERENCES "SEGURO_G29987471".producto(cod_producto);
 a   ALTER TABLE ONLY "SEGURO_G29987471".recomienda DROP CONSTRAINT "FK_778a85c79a63e0b71b58078b891";
       SEGURO_G29987471          root    false    3276    226    228            �           2606    29265 0   registro_contrato FK_8a8b9c6216ddd54b902795b8560    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato
    ADD CONSTRAINT "FK_8a8b9c6216ddd54b902795b8560" FOREIGN KEY (cod_cliente) REFERENCES "SEGURO_G29987471".cliente(cod_cliente);
 h   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato DROP CONSTRAINT "FK_8a8b9c6216ddd54b902795b8560";
       SEGURO_G29987471          root    false    3268    218    229            �           2606    29270 '   sucursal FK_9fba729e0a51c28d8d09aac040e    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".sucursal
    ADD CONSTRAINT "FK_9fba729e0a51c28d8d09aac040e" FOREIGN KEY (cod_ciudad) REFERENCES "SEGURO_G29987471".ciudad(cod_ciudad);
 _   ALTER TABLE ONLY "SEGURO_G29987471".sucursal DROP CONSTRAINT "FK_9fba729e0a51c28d8d09aac040e";
       SEGURO_G29987471          root    false    216    3266    233            �           2606    29275 1   registro_siniestro FK_c7c9ea3b81491c83d9d6b534bea    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro
    ADD CONSTRAINT "FK_c7c9ea3b81491c83d9d6b534bea" FOREIGN KEY (nro_contrato) REFERENCES "SEGURO_G29987471".contrato(nro_contrato);
 i   ALTER TABLE ONLY "SEGURO_G29987471".registro_siniestro DROP CONSTRAINT "FK_c7c9ea3b81491c83d9d6b534bea";
       SEGURO_G29987471          root    false    3270    230    220            �           2606    29280 0   registro_contrato FK_cea2c686c92d4d1fa8c1bbfbb36    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato
    ADD CONSTRAINT "FK_cea2c686c92d4d1fa8c1bbfbb36" FOREIGN KEY (nro_contrato) REFERENCES "SEGURO_G29987471".contrato(nro_contrato);
 h   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato DROP CONSTRAINT "FK_cea2c686c92d4d1fa8c1bbfbb36";
       SEGURO_G29987471          root    false    229    220    3270            �           2606    29285 0   registro_contrato FK_d5db285938e57149f41ae7fe481    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato
    ADD CONSTRAINT "FK_d5db285938e57149f41ae7fe481" FOREIGN KEY (cod_producto) REFERENCES "SEGURO_G29987471".producto(cod_producto);
 h   ALTER TABLE ONLY "SEGURO_G29987471".registro_contrato DROP CONSTRAINT "FK_d5db285938e57149f41ae7fe481";
       SEGURO_G29987471          root    false    229    3276    226            �           2606    29290 )   recomienda FK_d697808af3b479e57c725f7cc3c    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".recomienda
    ADD CONSTRAINT "FK_d697808af3b479e57c725f7cc3c" FOREIGN KEY (cod_evaluacion_servicio) REFERENCES "SEGURO_G29987471".evaluacion_servicio(cod_evaluacion_servicio);
 a   ALTER TABLE ONLY "SEGURO_G29987471".recomienda DROP CONSTRAINT "FK_d697808af3b479e57c725f7cc3c";
       SEGURO_G29987471          root    false    228    222    3272            �           2606    29295 %   ciudad FK_e22978e6591e35a396bd90a9aab    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".ciudad
    ADD CONSTRAINT "FK_e22978e6591e35a396bd90a9aab" FOREIGN KEY (cod_pais) REFERENCES "SEGURO_G29987471".pais(cod_pais);
 ]   ALTER TABLE ONLY "SEGURO_G29987471".ciudad DROP CONSTRAINT "FK_e22978e6591e35a396bd90a9aab";
       SEGURO_G29987471          root    false    216    3274    224            �           2606    29300 )   recomienda FK_fc6baefda4d2a86427c47a2508c    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_G29987471".recomienda
    ADD CONSTRAINT "FK_fc6baefda4d2a86427c47a2508c" FOREIGN KEY (cod_cliente) REFERENCES "SEGURO_G29987471".cliente(cod_cliente);
 a   ALTER TABLE ONLY "SEGURO_G29987471".recomienda DROP CONSTRAINT "FK_fc6baefda4d2a86427c47a2508c";
       SEGURO_G29987471          root    false    228    3268    218            t      x������ � �      v      x������ � �      x      x������ � �      z      x������ � �      |      x������ � �      ~      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     