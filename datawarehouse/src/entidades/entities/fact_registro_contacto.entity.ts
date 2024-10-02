import { Column, Entity, JoinColumn, ManyToOne, PrimaryColumn } from "typeorm";
import { DimTiempo } from "./dim_tiempo.entity";
import { DimCliente } from "./dim_cliente.entity";
import { DimContrato } from "./dim_contrato.entity";
import { DimProducto } from "./dim_producto.entity";
import { DimEstadoContrato } from "./dim_estado_contrato.entity";

@Entity('fact_registro_contrato')
export class FactRegistroContrato {

    @PrimaryColumn('integer')
    sk_dim_tiempo_fecha_inicio: number;

    @PrimaryColumn('integer')
    sk_dim_tiempo_fecha_fin: number;

    @PrimaryColumn('integer')
    sk_dim_cliente: number;

    @PrimaryColumn('integer')
    sk_dim_contrato: number;

    @PrimaryColumn('integer')
    sk_dim_producto: number;

    @PrimaryColumn('integer')
    sk_dim_estado_contrato: number;

    @ManyToOne(() => DimTiempo, dimTiempo => dimTiempo.sk_dim_tiempo)
    @JoinColumn({name: 'sk_dim_tiempo_fecha_inicio'})
    fecha_inicio: DimTiempo;

    @ManyToOne(() => DimTiempo, dimTiempo => dimTiempo.sk_dim_tiempo)
    @JoinColumn({name: 'sk_dim_tiempo_fecha_fin'})
    fecha_fin: DimTiempo;

    @ManyToOne(() => DimCliente, dimCliente => dimCliente.sk_dim_cliente)
    @JoinColumn({name: 'sk_dim_cliente'})
    cliente: DimCliente;

    @ManyToOne(() => DimContrato, dimContrato => dimContrato.sk_dim_contrato)
    @JoinColumn({name: 'sk_dim_contrato'})
    contrato: DimContrato;

    @ManyToOne(() => DimProducto, dimProducto => dimProducto.sk_dim_producto)
    @JoinColumn({name: 'sk_dim_producto'})
    producto: DimProducto;

    @ManyToOne(() => DimEstadoContrato, dimEstadoContrato => dimEstadoContrato.sk_dim_estado_contrato)
    @JoinColumn({name: 'sk_dim_estado_contrato'})
    estado_contrato: DimEstadoContrato;

    @Column('real')
    monto: number;

    @Column('integer')
    cantidad: number;

    @Column('integer')
    cantidad_cliente: number;

    @Column('integer')
    cantidad_producto: number;

    @Column('integer')
    cantidad_contrato: number;
}