import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('dim_estado_contrato')
export class DimEstadoContrato {
    @PrimaryGeneratedColumn()
    sk_dim_estado_contrato: number;

    @Column('integer')
    cod_estado: number;

    @Column('varchar', {length: 25})
    descrip_estado: string;
}