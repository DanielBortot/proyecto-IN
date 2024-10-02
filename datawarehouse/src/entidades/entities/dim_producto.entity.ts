import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('dim_producto')
export class DimProducto {
    @PrimaryGeneratedColumn()
    sk_dim_producto: number;

    @Column('integer')
    cod_producto: number;

    @Column('varchar', {length: 25})
    nb_producto: string;

    @Column('varchar', {length: 25})
    descrip_producto: string;

    @Column('varchar', {length: 25})
    cod_tipo_producto: string;

    @Column('varchar', {length: 25})
    nb_tipo_producto: string;

    @Column('integer')
    calificacion: number;
}