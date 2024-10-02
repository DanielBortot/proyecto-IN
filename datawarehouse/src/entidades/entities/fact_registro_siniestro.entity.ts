import { Column, Entity, JoinColumn, ManyToOne, PrimaryColumn } from "typeorm";
import { DimTiempo } from "./dim_tiempo.entity";
import { DimCliente } from "./dim_cliente.entity";
import { DimContrato } from "./dim_contrato.entity";
import { DimSucursal } from "./dim_sucursal.entity";
import { DimProducto } from "./dim_producto.entity";
import { DimSiniestro } from "./dim_siniestro.entity";

@Entity('fact_registro_siniestro')
export class FactRegistroSiniestro {
    @PrimaryColumn('integer')
    sk_fecha_siniestro: number;

    @PrimaryColumn('integer')
    sk_fecha_respuesta: number;

    @PrimaryColumn('integer')
    sk_dim_cliente: number;

    @PrimaryColumn('integer')
    sk_dim_contrato: number;

    @PrimaryColumn('integer')
    sk_dim_sucursal: number;

    @PrimaryColumn('integer')
    sk_dim_producto: number;

    @PrimaryColumn('integer')
    sk_dim_siniestro: number;

    @ManyToOne(() => DimTiempo, dimTiempo => dimTiempo.sk_dim_tiempo)
    @JoinColumn({name: 'sk_fecha_siniestro'})
    fecha_siniestro: DimTiempo;

    @ManyToOne(() => DimTiempo, dimTiempo => dimTiempo.sk_dim_tiempo)
    @JoinColumn({name: 'sk_fecha_respuesta'})
    fecha_respuesta: DimTiempo;

    @ManyToOne(() => DimCliente, dimCliente => dimCliente.sk_dim_cliente)
    @JoinColumn({name: 'sk_dim_cliente'})
    cliente: DimCliente;
    
    @ManyToOne(() => DimContrato, dimContrato => dimContrato.sk_dim_contrato)
    @JoinColumn({name: 'sk_dim_contrato'})
    contrato: DimContrato;

    @ManyToOne(() => DimSucursal, dimSucursal => dimSucursal.sk_dim_sucursal)
    @JoinColumn({name: 'sk_dim_sucursal'})
    sucursal: DimSucursal;

    @ManyToOne(() => DimProducto, dimProducto => dimProducto.sk_dim_producto)
    @JoinColumn({name: 'sk_dim_producto'})
    producto: DimProducto;

    @ManyToOne(() => DimSiniestro, dimSiniestro => dimSiniestro.sk_dim_siniestro)
    @JoinColumn({name: 'sk_dim_siniestro'})
    siniestro: DimSiniestro;

    @Column('integer')
    cantidad: number;

    @Column('real')
    monto_reconocido: number;

    @Column('real')
    monto_solicitado: number;

    @Column('character varying', {length: 2})
    id_rechazo: string;
}