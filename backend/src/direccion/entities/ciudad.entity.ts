import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { Pais } from "./pais.entity";

@Entity('ciudad')
export class Ciudad {
    @PrimaryGeneratedColumn()
    cod_ciudad: number;

    @Column()
    nb_ciudad: string;

    @ManyToOne(() => Pais)
    @JoinColumn({name: 'cod_pais'})
    cod_pais: number
}