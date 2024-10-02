import { Column, Entity, JoinColumn, ManyToOne, PrimaryColumn } from "typeorm";
import { DimTiempo } from "./dim_tiempo.entity";
import { DimCliente } from "./dim_cliente.entity";
import { DimProducto } from "./dim_producto.entity";
import { DimContrato } from "./dim_contrato.entity";

@Entity('fact_metas')
export class FactMetas {
    @PrimaryColumn('integer')
    sk_dim_fecha_inicio_meta: number;

    @PrimaryColumn('integer')
    sk_dim_fecha_fin_meta: number;

    @PrimaryColumn('integer')
    sk_dim_cliente: number;

    @PrimaryColumn('integer')
    sk_dim_producto: number;

    @PrimaryColumn('integer')
    sk_dim_contrato: number;

    @ManyToOne(() => DimTiempo, dimTiempo => dimTiempo.sk_dim_tiempo)
    @JoinColumn({name: 'sk_dim_fecha_inicio_meta'})
    fecha_inicio: DimTiempo;

    @ManyToOne(() => DimTiempo, dimTiempo => dimTiempo.sk_dim_tiempo)
    @JoinColumn({name: 'sk_dim_fecha_fin_meta'})
    fecha_fin: DimTiempo;

    @ManyToOne(() => DimCliente, dimCliente => dimCliente.sk_dim_cliente)
    @JoinColumn({name: 'sk_dim_cliente'})
    cliente: DimCliente;

    @ManyToOne(() => DimProducto, dimProducto => dimProducto.sk_dim_producto)
    @JoinColumn({name: 'sk_dim_producto'})
    producto: DimProducto;

    @ManyToOne(() => DimContrato, dimContrato => dimContrato.sk_dim_contrato)
    @JoinColumn({name: 'sk_dim_contrato'})
    contrato: DimContrato;

    @Column('real')
    monto_meta_ingreso: number;

    @Column('integer')
    meta_renovacion: number;

    @Column('integer')
    meta_asegurados: number;
}