SELECT contrato.sk_dim_contrato,
	pro.sk_dim_producto,
	clien.sk_dim_cliente,
	tiempo.sk_dim_tiempo,
	tiempo2.sk_dim_tiempo,
	estado.sk_dim_estado_contrato,
	regis.monto,
	CASE
        WHEN ROW_NUMBER() OVER (PARTITION BY regis.cod_cliente ORDER BY regis.nro_contrato) = 1 THEN 1
        ELSE 0
    END AS cantidad_cliente,
    CASE
        WHEN ROW_NUMBER() OVER (PARTITION BY regis.cod_producto ORDER BY regis.nro_contrato) = 1 THEN 1
        ELSE 0
    END AS cantidad_producto,
    CASE
        WHEN ROW_NUMBER() OVER (PARTITION BY regis.nro_contrato ORDER BY regis.nro_contrato) = 1 THEN 1
        ELSE 0
    END AS cantidad_contrato
FROM "SEGURO_G29987471".registro_contrato as regis,
"SEGURO_DW_G29987471".dim_contrato as contrato,
"SEGURO_DW_G29987471".dim_producto as pro,
"SEGURO_DW_G29987471".dim_cliente as clien,
"SEGURO_DW_G29987471".dim_estado_contrato as estado,
"SEGURO_DW_G29987471".dim_tiempo as tiempo,
"SEGURO_DW_G29987471".dim_tiempo as tiempo2
where regis.nro_contrato=contrato.nro_contrato and
regis.cod_producto=pro.cod_producto and
regis.cod_cliente=clien.cod_cliente and
regis.estado_contrato=estado.descrip_estado and
CAST(regis.fecha_inicio AS DATE) = CAST(tiempo.fecha_completa AS DATE) and
CAST(regis.fecha_fin AS DATE) = CAST(tiempo2.fecha_completa AS DATE)
order by regis.nro_contrato asc