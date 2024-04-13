import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { TipoProducto } from "./tipo-producto.entity";

@Entity('producto')
export class Producto {
    @PrimaryGeneratedColumn()
    cod_producto: number;

    @Column()
    nb_producto: string;

    @Column()
    descripcion: string;

    @Column()
    calificacion: number;

    @ManyToOne(() => TipoProducto)
    @JoinColumn({name: 'cod_tipo_producto'})
    cod_tipo_producto: number;
}
