import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { Ciudad } from "./ciudad.entity";

@Entity('sucursal')
export class Sucursal {
    @PrimaryGeneratedColumn()
    cod_sucursal: number;

    @Column({ type: "varchar", length: 40 })
    nb_sucursal: number

    @ManyToOne(() => Ciudad)
    @JoinColumn({name: 'cod_ciudad'})
    cod_ciudad: number;
}
