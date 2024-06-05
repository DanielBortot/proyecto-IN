import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('dim_contrato')
export class DimContrato {
    @PrimaryGeneratedColumn()
    sk_dim_contrato: number;

    @Column('integer')
    nro_contrato: number

    @Column('varchar', {length: 25})
    descrip_contrato: string;
}
