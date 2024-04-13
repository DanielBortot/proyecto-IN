import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('evaluacion_servicio')
export class EvaluacionServicio {
    @PrimaryGeneratedColumn()
    cod_evaluacion_servicio: number;

    @Column()
    descripcion: string;
}