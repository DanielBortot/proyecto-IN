import { Column, Entity, JoinColumn, ManyToOne, PrimaryColumn } from "typeorm";
import { Contrato } from "./contrato.entity";
import { Producto } from "src/producto/entities/producto.entity";
import { Cliente } from "src/cliente/entities/cliente.entity";

export enum EnumEstadoContrato {
    ACTIVO = "ACTIVO",
    VENCIDO = "VENCIDO",
    SUSPENDIDO = "SUSPENDIDO",
}

@Entity('registro_contrato')
export class RegistroContrato {
    @PrimaryColumn()
    @ManyToOne(() => Contrato)
    @JoinColumn({name: 'nro_contrato'})
    nro_contrato: number;

    @PrimaryColumn()
    @ManyToOne(() => Producto)
    @JoinColumn({name: 'cod_producto'})
    cod_producto: number;

    @PrimaryColumn()
    @ManyToOne(() => Cliente)
    @JoinColumn({name: 'cod_cliente'})
    cod_cliente: number;
      
    @Column('timestamptz')
    fecha_inicio: Date;

    @Column('timestamptz')
    fecha_fin: Date;

    @Column('numeric')
    monto: number;

    @Column({
        type: "enum",
        enum: EnumEstadoContrato,
    })
    estado_contarto: EnumEstadoContrato;
}
