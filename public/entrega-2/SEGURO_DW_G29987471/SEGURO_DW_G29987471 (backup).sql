PGDMP  4    &                |            Bi-local    16.2 (Debian 16.2-1.pgdg120+2)    16.3 >    y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            {           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            |           1262    25696    Bi-local    DATABASE     u   CREATE DATABASE "Bi-local" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE "Bi-local";
                root    false                        2615    29324    SEGURO_DW_G29987471    SCHEMA     %   CREATE SCHEMA "SEGURO_DW_G29987471";
 #   DROP SCHEMA "SEGURO_DW_G29987471";
                root    false            �            1259    29325    dim_cliente    TABLE     �  CREATE TABLE "SEGURO_DW_G29987471".dim_cliente (
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
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    29328    dim_contrato    TABLE     �   CREATE TABLE "SEGURO_DW_G29987471".dim_contrato (
    sk_dim_contrato integer NOT NULL,
    nro_contrato integer NOT NULL,
    descrip_contrato character varying(25) NOT NULL
);
 /   DROP TABLE "SEGURO_DW_G29987471".dim_contrato;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    29331    dim_estado_contrato    TABLE     �   CREATE TABLE "SEGURO_DW_G29987471".dim_estado_contrato (
    sk_dim_estado_contrato integer NOT NULL,
    cod_estado integer NOT NULL,
    descrip_estado character varying(25) NOT NULL
);
 6   DROP TABLE "SEGURO_DW_G29987471".dim_estado_contrato;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    29334    dim_evaluacion_servicio    TABLE     �   CREATE TABLE "SEGURO_DW_G29987471".dim_evaluacion_servicio (
    sk_dim_evaluacion_servicio integer NOT NULL,
    cod_evaluacion_servicio integer NOT NULL,
    nb_descrip character varying(25) NOT NULL
);
 :   DROP TABLE "SEGURO_DW_G29987471".dim_evaluacion_servicio;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    29337    dim_producto    TABLE     b  CREATE TABLE "SEGURO_DW_G29987471".dim_producto (
    sk_dim_producto integer NOT NULL,
    cod_producto integer NOT NULL,
    nb_producto character varying(25) NOT NULL,
    descrip_producto character varying(25) NOT NULL,
    nb_tipo_producto character varying(25) NOT NULL,
    calificacion integer NOT NULL,
    cod_tipo_producto integer NOT NULL
);
 /   DROP TABLE "SEGURO_DW_G29987471".dim_producto;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    29340    dim_siniestro    TABLE     �   CREATE TABLE "SEGURO_DW_G29987471".dim_siniestro (
    sk_dim_siniestro integer NOT NULL,
    nro_siniestro integer NOT NULL,
    descrip_siniestro character varying(25) NOT NULL
);
 0   DROP TABLE "SEGURO_DW_G29987471".dim_siniestro;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    29343    dim_sucursal    TABLE     G  CREATE TABLE "SEGURO_DW_G29987471".dim_sucursal (
    sk_dim_sucursal integer NOT NULL,
    cod_sucursal integer NOT NULL,
    nb_sucursal character varying(45) NOT NULL,
    cod_ciudad integer NOT NULL,
    nb_ciudad character varying(45) NOT NULL,
    cod_pais integer NOT NULL,
    nb_pais character varying(45) NOT NULL
);
 /   DROP TABLE "SEGURO_DW_G29987471".dim_sucursal;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    29346 
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
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    29349    fact_evaluacion_servicio    TABLE     �   CREATE TABLE "SEGURO_DW_G29987471".fact_evaluacion_servicio (
    sk_dim_cliente integer NOT NULL,
    sk_dim_producto integer NOT NULL,
    sk_dim_evaluacion_servicio integer NOT NULL,
    cantidad integer NOT NULL,
    recomienda_amigo real NOT NULL
);
 ;   DROP TABLE "SEGURO_DW_G29987471".fact_evaluacion_servicio;
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    29352 
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
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    29355    fact_registro_contrato    TABLE     �  CREATE TABLE "SEGURO_DW_G29987471".fact_registro_contrato (
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
       SEGURO_DW_G29987471         heap    root    false    6            �            1259    29358    fact_registro_siniestro    TABLE     �  CREATE TABLE "SEGURO_DW_G29987471".fact_registro_siniestro (
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
       SEGURO_DW_G29987471         heap    root    false    6            k          0    29325    dim_cliente 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".dim_cliente (sk_dim_cliente, cod_cliente, nb_cliente, ci_rif, telefono, direccion, sexo, email) FROM stdin;
    SEGURO_DW_G29987471          root    false    216   �p       l          0    29328    dim_contrato 
   TABLE DATA           f   COPY "SEGURO_DW_G29987471".dim_contrato (sk_dim_contrato, nro_contrato, descrip_contrato) FROM stdin;
    SEGURO_DW_G29987471          root    false    217   �p       m          0    29331    dim_estado_contrato 
   TABLE DATA           p   COPY "SEGURO_DW_G29987471".dim_estado_contrato (sk_dim_estado_contrato, cod_estado, descrip_estado) FROM stdin;
    SEGURO_DW_G29987471          root    false    218   q       n          0    29334    dim_evaluacion_servicio 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".dim_evaluacion_servicio (sk_dim_evaluacion_servicio, cod_evaluacion_servicio, nb_descrip) FROM stdin;
    SEGURO_DW_G29987471          root    false    219   1q       o          0    29337    dim_producto 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".dim_producto (sk_dim_producto, cod_producto, nb_producto, descrip_producto, nb_tipo_producto, calificacion, cod_tipo_producto) FROM stdin;
    SEGURO_DW_G29987471          root    false    220   Nq       p          0    29340    dim_siniestro 
   TABLE DATA           j   COPY "SEGURO_DW_G29987471".dim_siniestro (sk_dim_siniestro, nro_siniestro, descrip_siniestro) FROM stdin;
    SEGURO_DW_G29987471          root    false    221   kq       q          0    29343    dim_sucursal 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".dim_sucursal (sk_dim_sucursal, cod_sucursal, nb_sucursal, cod_ciudad, nb_ciudad, cod_pais, nb_pais) FROM stdin;
    SEGURO_DW_G29987471          root    false    222   �q       r          0    29346 
   dim_tiempo 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".dim_tiempo (sk_dim_tiempo, cod_annio, cod_mes, cod_dia_annio, cod_dia_mes, cod_dia_semana, cod_semana, desc_dia_semana, desc_dia_semana_corta, desc_mes, desc_mes_corta, desc_trimestre, desc_semestre, fecha_completa) FROM stdin;
    SEGURO_DW_G29987471          root    false    223   �q       s          0    29349    fact_evaluacion_servicio 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".fact_evaluacion_servicio (sk_dim_cliente, sk_dim_producto, sk_dim_evaluacion_servicio, cantidad, recomienda_amigo) FROM stdin;
    SEGURO_DW_G29987471          root    false    224   �q       t          0    29352 
   fact_metas 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".fact_metas (sk_dim_fecha_inicio_meta, sk_dim_fecha_fin_meta, sk_dim_cliente, sk_dim_producto, sk_dim_contrato, monto_meta_ingreso, meta_renovacion, meta_asegurados) FROM stdin;
    SEGURO_DW_G29987471          root    false    225   �q       u          0    29355    fact_registro_contrato 
   TABLE DATA             COPY "SEGURO_DW_G29987471".fact_registro_contrato (sk_dim_tiempo_fecha_inicio, sk_dim_tiempo_fecha_fin, sk_dim_cliente, sk_dim_contrato, sk_dim_producto, sk_dim_estado_contrato, monto, cantidad, cantidad_cliente, cantidad_producto, cantidad_contrato) FROM stdin;
    SEGURO_DW_G29987471          root    false    226   �q       v          0    29358    fact_registro_siniestro 
   TABLE DATA           �   COPY "SEGURO_DW_G29987471".fact_registro_siniestro (sk_fecha_siniestro, sk_fecha_respuesta, sk_dim_cliente, sk_dim_contrato, sk_dim_sucursal, sk_dim_producto, sk_dim_siniestro, cantidad, monto_reconocido, monto_solicitado, id_rechazo) FROM stdin;
    SEGURO_DW_G29987471          root    false    227   r       �           2606    29371    dim_cliente dim_cliente_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_cliente
    ADD CONSTRAINT dim_cliente_pkey PRIMARY KEY (sk_dim_cliente);
 U   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_cliente DROP CONSTRAINT dim_cliente_pkey;
       SEGURO_DW_G29987471            root    false    216            �           2606    29373    dim_contrato dim_contrato_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_contrato
    ADD CONSTRAINT dim_contrato_pkey PRIMARY KEY (sk_dim_contrato);
 W   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_contrato DROP CONSTRAINT dim_contrato_pkey;
       SEGURO_DW_G29987471            root    false    217            �           2606    29375 ,   dim_estado_contrato dim_estado_contrato_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_estado_contrato
    ADD CONSTRAINT dim_estado_contrato_pkey PRIMARY KEY (sk_dim_estado_contrato);
 e   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_estado_contrato DROP CONSTRAINT dim_estado_contrato_pkey;
       SEGURO_DW_G29987471            root    false    218            �           2606    29377 4   dim_evaluacion_servicio dim_evaluacion_servicio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_evaluacion_servicio
    ADD CONSTRAINT dim_evaluacion_servicio_pkey PRIMARY KEY (sk_dim_evaluacion_servicio);
 m   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_evaluacion_servicio DROP CONSTRAINT dim_evaluacion_servicio_pkey;
       SEGURO_DW_G29987471            root    false    219            �           2606    29379    dim_producto dim_producto_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_producto
    ADD CONSTRAINT dim_producto_pkey PRIMARY KEY (sk_dim_producto);
 W   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_producto DROP CONSTRAINT dim_producto_pkey;
       SEGURO_DW_G29987471            root    false    220            �           2606    29381     dim_siniestro dim_siniestro_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_siniestro
    ADD CONSTRAINT dim_siniestro_pkey PRIMARY KEY (sk_dim_siniestro);
 Y   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_siniestro DROP CONSTRAINT dim_siniestro_pkey;
       SEGURO_DW_G29987471            root    false    221            �           2606    29383    dim_sucursal dim_sucursal_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_sucursal
    ADD CONSTRAINT dim_sucursal_pkey PRIMARY KEY (sk_dim_sucursal);
 W   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_sucursal DROP CONSTRAINT dim_sucursal_pkey;
       SEGURO_DW_G29987471            root    false    222            �           2606    29385    dim_tiempo dim_tiempo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_tiempo
    ADD CONSTRAINT dim_tiempo_pkey PRIMARY KEY (sk_dim_tiempo);
 S   ALTER TABLE ONLY "SEGURO_DW_G29987471".dim_tiempo DROP CONSTRAINT dim_tiempo_pkey;
       SEGURO_DW_G29987471            root    false    223            �           2606    29387 6   fact_evaluacion_servicio fact_evaluacion_servicio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio
    ADD CONSTRAINT fact_evaluacion_servicio_pkey PRIMARY KEY (sk_dim_cliente, sk_dim_producto, sk_dim_evaluacion_servicio);
 o   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio DROP CONSTRAINT fact_evaluacion_servicio_pkey;
       SEGURO_DW_G29987471            root    false    224    224    224            �           2606    29389    fact_metas fact_metas_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_pkey PRIMARY KEY (sk_dim_fecha_inicio_meta, sk_dim_fecha_fin_meta, sk_dim_cliente, sk_dim_producto, sk_dim_contrato);
 S   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_pkey;
       SEGURO_DW_G29987471            root    false    225    225    225    225    225            �           2606    29391 2   fact_registro_contrato fact_registro_contrato_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_pkey PRIMARY KEY (sk_dim_tiempo_fecha_inicio, sk_dim_tiempo_fecha_fin, sk_dim_cliente, sk_dim_contrato, sk_dim_producto, sk_dim_estado_contrato);
 k   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_pkey;
       SEGURO_DW_G29987471            root    false    226    226    226    226    226    226            �           2606    29393 4   fact_registro_siniestro fact_registro_siniestro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_pkey PRIMARY KEY (sk_fecha_siniestro, sk_fecha_respuesta, sk_dim_cliente, sk_dim_contrato, sk_dim_sucursal, sk_dim_producto, sk_dim_siniestro);
 m   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_pkey;
       SEGURO_DW_G29987471            root    false    227    227    227    227    227    227    227            �           2606    29394 E   fact_evaluacion_servicio fact_evaluacion_servicio_sk_dim_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio
    ADD CONSTRAINT fact_evaluacion_servicio_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente) REFERENCES "SEGURO_DW_G29987471".dim_cliente(sk_dim_cliente);
 ~   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio DROP CONSTRAINT fact_evaluacion_servicio_sk_dim_cliente_fkey;
       SEGURO_DW_G29987471          root    false    3248    224    216            �           2606    29399 Q   fact_evaluacion_servicio fact_evaluacion_servicio_sk_dim_evaluacion_servicio_fkey    FK CONSTRAINT       ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio
    ADD CONSTRAINT fact_evaluacion_servicio_sk_dim_evaluacion_servicio_fkey FOREIGN KEY (sk_dim_evaluacion_servicio) REFERENCES "SEGURO_DW_G29987471".dim_evaluacion_servicio(sk_dim_evaluacion_servicio);
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio DROP CONSTRAINT fact_evaluacion_servicio_sk_dim_evaluacion_servicio_fkey;
       SEGURO_DW_G29987471          root    false    3254    219    224            �           2606    29404 F   fact_evaluacion_servicio fact_evaluacion_servicio_sk_dim_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio
    ADD CONSTRAINT fact_evaluacion_servicio_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29987471".dim_producto(sk_dim_producto);
    ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_evaluacion_servicio DROP CONSTRAINT fact_evaluacion_servicio_sk_dim_producto_fkey;
       SEGURO_DW_G29987471          root    false    3256    224    220            �           2606    29409 )   fact_metas fact_metas_sk_dim_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente) REFERENCES "SEGURO_DW_G29987471".dim_cliente(sk_dim_cliente);
 b   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_sk_dim_cliente_fkey;
       SEGURO_DW_G29987471          root    false    216    3248    225            �           2606    29414 *   fact_metas fact_metas_sk_dim_contrato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_sk_dim_contrato_fkey FOREIGN KEY (sk_dim_contrato) REFERENCES "SEGURO_DW_G29987471".dim_contrato(sk_dim_contrato);
 c   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_sk_dim_contrato_fkey;
       SEGURO_DW_G29987471          root    false    3250    225    217            �           2606    29419 0   fact_metas fact_metas_sk_dim_fecha_fin_meta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_sk_dim_fecha_fin_meta_fkey FOREIGN KEY (sk_dim_fecha_fin_meta) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo);
 i   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_sk_dim_fecha_fin_meta_fkey;
       SEGURO_DW_G29987471          root    false    223    225    3262            �           2606    29424 3   fact_metas fact_metas_sk_dim_fecha_inicio_meta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_sk_dim_fecha_inicio_meta_fkey FOREIGN KEY (sk_dim_fecha_inicio_meta) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo);
 l   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_sk_dim_fecha_inicio_meta_fkey;
       SEGURO_DW_G29987471          root    false    223    225    3262            �           2606    29429 *   fact_metas fact_metas_sk_dim_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas
    ADD CONSTRAINT fact_metas_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29987471".dim_producto(sk_dim_producto);
 c   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_metas DROP CONSTRAINT fact_metas_sk_dim_producto_fkey;
       SEGURO_DW_G29987471          root    false    225    3256    220            �           2606    29434 A   fact_registro_contrato fact_registro_contrato_sk_dim_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente) REFERENCES "SEGURO_DW_G29987471".dim_cliente(sk_dim_cliente) NOT VALID;
 z   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_cliente_fkey;
       SEGURO_DW_G29987471          root    false    3248    226    216            �           2606    29439 B   fact_registro_contrato fact_registro_contrato_sk_dim_contrato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_contrato_fkey FOREIGN KEY (sk_dim_contrato) REFERENCES "SEGURO_DW_G29987471".dim_contrato(sk_dim_contrato) NOT VALID;
 {   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_contrato_fkey;
       SEGURO_DW_G29987471          root    false    217    3250    226            �           2606    29444 I   fact_registro_contrato fact_registro_contrato_sk_dim_estado_contrato_fkey    FK CONSTRAINT       ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_estado_contrato_fkey FOREIGN KEY (sk_dim_estado_contrato) REFERENCES "SEGURO_DW_G29987471".dim_estado_contrato(sk_dim_estado_contrato) NOT VALID;
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_estado_contrato_fkey;
       SEGURO_DW_G29987471          root    false    226    218    3252            �           2606    29449 B   fact_registro_contrato fact_registro_contrato_sk_dim_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29987471".dim_producto(sk_dim_producto) NOT VALID;
 {   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_producto_fkey;
       SEGURO_DW_G29987471          root    false    220    3256    226            �           2606    29454 J   fact_registro_contrato fact_registro_contrato_sk_dim_tiempo_fecha_fin_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_tiempo_fecha_fin_fkey FOREIGN KEY (sk_dim_tiempo_fecha_fin) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo) NOT VALID;
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_tiempo_fecha_fin_fkey;
       SEGURO_DW_G29987471          root    false    226    223    3262            �           2606    29459 M   fact_registro_contrato fact_registro_contrato_sk_dim_tiempo_fecha_inicio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato
    ADD CONSTRAINT fact_registro_contrato_sk_dim_tiempo_fecha_inicio_fkey FOREIGN KEY (sk_dim_tiempo_fecha_inicio) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo) NOT VALID;
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_contrato DROP CONSTRAINT fact_registro_contrato_sk_dim_tiempo_fecha_inicio_fkey;
       SEGURO_DW_G29987471          root    false    223    3262    226            �           2606    29464 C   fact_registro_siniestro fact_registro_siniestro_sk_dim_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_dim_cliente_fkey FOREIGN KEY (sk_dim_cliente) REFERENCES "SEGURO_DW_G29987471".dim_cliente(sk_dim_cliente) NOT VALID;
 |   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_dim_cliente_fkey;
       SEGURO_DW_G29987471          root    false    227    3248    216            �           2606    29469 D   fact_registro_siniestro fact_registro_siniestro_sk_dim_contrato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_dim_contrato_fkey FOREIGN KEY (sk_dim_contrato) REFERENCES "SEGURO_DW_G29987471".dim_contrato(sk_dim_contrato) NOT VALID;
 }   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_dim_contrato_fkey;
       SEGURO_DW_G29987471          root    false    217    227    3250            �           2606    29474 D   fact_registro_siniestro fact_registro_siniestro_sk_dim_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_dim_producto_fkey FOREIGN KEY (sk_dim_producto) REFERENCES "SEGURO_DW_G29987471".dim_producto(sk_dim_producto) NOT VALID;
 }   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_dim_producto_fkey;
       SEGURO_DW_G29987471          root    false    3256    220    227            �           2606    29479 E   fact_registro_siniestro fact_registro_siniestro_sk_dim_siniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_dim_siniestro_fkey FOREIGN KEY (sk_dim_siniestro) REFERENCES "SEGURO_DW_G29987471".dim_siniestro(sk_dim_siniestro) NOT VALID;
 ~   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_dim_siniestro_fkey;
       SEGURO_DW_G29987471          root    false    227    3258    221            �           2606    29484 D   fact_registro_siniestro fact_registro_siniestro_sk_dim_sucursal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_dim_sucursal_fkey FOREIGN KEY (sk_dim_sucursal) REFERENCES "SEGURO_DW_G29987471".dim_sucursal(sk_dim_sucursal) NOT VALID;
 }   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_dim_sucursal_fkey;
       SEGURO_DW_G29987471          root    false    222    227    3260            �           2606    29489 G   fact_registro_siniestro fact_registro_siniestro_sk_fecha_respuesta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_fecha_respuesta_fkey FOREIGN KEY (sk_fecha_respuesta) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo) NOT VALID;
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_fecha_respuesta_fkey;
       SEGURO_DW_G29987471          root    false    223    3262    227            �           2606    29494 G   fact_registro_siniestro fact_registro_siniestro_sk_fecha_siniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro
    ADD CONSTRAINT fact_registro_siniestro_sk_fecha_siniestro_fkey FOREIGN KEY (sk_fecha_siniestro) REFERENCES "SEGURO_DW_G29987471".dim_tiempo(sk_dim_tiempo) NOT VALID;
 �   ALTER TABLE ONLY "SEGURO_DW_G29987471".fact_registro_siniestro DROP CONSTRAINT fact_registro_siniestro_sk_fecha_siniestro_fkey;
       SEGURO_DW_G29987471          root    false    227    3262    223            k      x������ � �      l      x������ � �      m      x������ � �      n      x������ � �      o      x������ � �      p      x������ � �      q      x������ � �      r      x������ � �      s      x������ � �      t      x������ � �      u      x������ � �      v      x������ � �     