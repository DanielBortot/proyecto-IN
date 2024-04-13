import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('contrato')
export class Contrato {
    @PrimaryGeneratedColumn()
    nro_contrato: number;

    @Column()
    descrip_contrato: string;
}