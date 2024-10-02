import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('dim_sucursal')
export class DimSucursal {
    @PrimaryGeneratedColumn()
    sk_dim_sucursal: number;

    @Column('integer')
    cod_sucursal: number;

    @Column('varchar', {length: 25})
    nb_sucursal: string;

    @Column('varchar', {length: 45})
    cod_ciudad: string;

    @Column('varchar', {length: 45})
    nb_ciudad: string;

    @Column('varchar', {length: 45})
    cod_pais: string;

    @Column('varchar', {length: 45})
    nb_pais: string;
}