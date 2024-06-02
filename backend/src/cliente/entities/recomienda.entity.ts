import { Column, Entity, JoinColumn, ManyToOne, PrimaryColumn } from "typeorm";
import { Cliente } from "./cliente.entity";
import { EvaluacionServicio } from "./evaluacion-servicio.entity";
import { Producto } from "src/producto/entities/producto.entity";

export enum EnumRecomienda {
    NO = "NO",
    SI = "SI",
}

@Entity('recomienda')
export class Recomienda {
    @PrimaryColumn()
    @ManyToOne(() => Cliente)
    @JoinColumn({name: 'cod_cliente'})
    cod_cliente: number;
    
    @PrimaryColumn()
    @ManyToOne(() => EvaluacionServicio)
    @JoinColumn({name: 'cod_evaluacion_servicio'})
    cod_evaluacion_servicio: number;

    @PrimaryColumn()
    @ManyToOne(() => Producto)
    @JoinColumn({name: 'cod_producto'})
    cod_producto: number;

    @Column({
        type: "enum",
        enum: EnumRecomienda,
    })
    recomienda_amigo: EnumRecomienda;
}