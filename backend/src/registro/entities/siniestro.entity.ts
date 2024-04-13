import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('siniestro')
export class Siniestro {
    @PrimaryGeneratedColumn()
    nro_siniestro: number;

    @Column()
    descripcion_siniestro: string;
}