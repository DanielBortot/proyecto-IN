import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('pais')
export class Pais {
    @PrimaryGeneratedColumn()
    cod_pais: number;

    @Column({ type: "varchar", length: 40 })
    nb_pais: string;
}