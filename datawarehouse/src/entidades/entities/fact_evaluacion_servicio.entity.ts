import { Column, Entity, JoinColumn, ManyToOne, PrimaryColumn } from "typeorm";
import { DimCliente } from "./dim_cliente.entity";
import { DimProducto } from "./dim_producto.entity";
import { DimEvaluacionServicio } from "./dim_evaluacion_servicio.entity";

@Entity('fact_evaluacion_servicio')
export class FactEvaluacionServicio {
    @PrimaryColumn('integer')
    sk_dim_cliente: number;

    @PrimaryColumn('integer')
    sk_dim_producto: number;

    @PrimaryColumn('integer')
    sk_dim_evaluacion_servicio: number;

    @ManyToOne(() => DimCliente, dimCliente => dimCliente.sk_dim_cliente)
    @JoinColumn({name: 'sk_dim_cliente'})
    cliente: DimCliente;

    @ManyToOne(() => DimProducto, dimProducto => dimProducto.sk_dim_producto)
    @JoinColumn({name: 'sk_dim_producto'})
    producto: DimProducto;

    @ManyToOne(() => DimEvaluacionServicio, dimEvaluacionServicio => dimEvaluacionServicio.sk_dim_evaluacion_servicio)
    @JoinColumn({name: 'sk_dim_evaluacion_servicio'})
    evaluacion_servicio: DimEvaluacionServicio;

    @Column('integer')
    cantidad: number;

    @Column('real')
    recomienda_amigo: number;
}