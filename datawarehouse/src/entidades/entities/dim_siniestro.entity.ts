import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('dim_siniestro')
export class DimSiniestro {
    @PrimaryGeneratedColumn()
    sk_dim_siniestro: number;

    @Column('integer')
    nro_siniestro: number;

    @Column('varchar', {length: 25})
    descrip_siniestro: string;
}