import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { TipoProducto } from "./tipo-producto.entity";

export enum EnumCalificacion {
    MALO = 1,
    REGULAR = 2,
    BUENO = 3,
    MUY_BUENO = 4,
    EXCELENTE = 5
}

@Entity('producto')
export class Producto {
    @PrimaryGeneratedColumn()
    cod_producto: number;

    @Column({ type: "varchar", length: 40 })
    nb_producto: string;

    @Column({ type: "varchar", length: 200 })
    descripcion: string;

    @Column({
        type: "enum",
        enum: EnumCalificacion,
    })
    calificacion: EnumCalificacion;

    @ManyToOne(() => TipoProducto)
    @JoinColumn({name: 'cod_tipo_producto'})
    cod_tipo_producto: number;
}