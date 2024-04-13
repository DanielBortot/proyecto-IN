import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('pais')
export class Pais {
    @PrimaryGeneratedColumn()
    cod_pais: number;

    @Column()
    nb_pais: string;
}