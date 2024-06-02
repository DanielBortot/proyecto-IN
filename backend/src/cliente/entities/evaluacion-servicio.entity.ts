import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

export enum EnumDescripcion {
    MALO = 1,
    REGULAR = 2,
    BUENO = 3,
    MUY_BUENO = 4,
    EXCELENTE = 5
}

@Entity('evaluacion_servicio')
export class EvaluacionServicio {
    @PrimaryGeneratedColumn()
    cod_evaluacion_servicio: number;
    
    @Column({
        type: "enum",
        enum: EnumDescripcion,
    })
    descripcion: EnumDescripcion;
}