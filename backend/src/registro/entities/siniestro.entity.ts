import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('siniestro')
export class Siniestro {
    @PrimaryGeneratedColumn()
    nro_siniestro: number;

    @Column( { type: "varchar", length: 200 } )
    descripcion_siniestro: string;
}