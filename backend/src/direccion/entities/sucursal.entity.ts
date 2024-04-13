import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { Ciudad } from "./ciudad.entity";

@Entity('sucursal')
export class Sucursal {
    @PrimaryGeneratedColumn()
    cod_sucursal: number;

    @Column()
    nb_ciudad: number

    @ManyToOne(() => Ciudad)
    @JoinColumn({name: 'cod_ciudad'})
    cod_ciudad: number;
}
