import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('dim_cliente')
export class DimCliente {
    @PrimaryGeneratedColumn()
    sk_dim_cliente: number;

    @Column('integer')
    cod_cliente: number;

    @Column('varchar', {length: 25})
    nb_cliente: string;

    @Column('varchar', {length: 45})
    ci_rif: string;

    @Column('varchar', {length: 45})
    telefono: string;

    @Column('varchar', {length: 45})
    direccion: string;

    @Column('varchar', {length: 45})
    sexo: string;

    @Column('varchar', {length: 45})
    email: string;
}