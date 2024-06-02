import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('contrato')
export class Contrato {
    @PrimaryGeneratedColumn()
    nro_contrato: number;

    @Column({ type: "varchar", length: 200 })
    descrip_contrato: string;
}