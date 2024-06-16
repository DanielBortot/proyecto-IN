import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { Ciudad } from "./ciudad.entity";

@Entity('sucursal')
export class Sucursal {
    @PrimaryGeneratedColumn()
    cod_sucursal: number;

    @Column()
    nb_sucursal: string;

    @ManyToOne(() => Ciudad)
    @JoinColumn({name: 'cod_ciudad'})
    cod_ciudad: number;
}
