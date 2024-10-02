import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('dim_evaluacion_servicio')
export class DimEvaluacionServicio {
    @PrimaryGeneratedColumn()
    sk_dim_evaluacion_servicio: number;

    @Column('integer')
    cod_evaluacion_servicio: number;

    @Column('varchar', {length: 25})
    nb_descrip: string;
}