import { Sucursal } from "src/direccion/entities/sucursal.entity";
import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";

@Entity('cliente')
export class Cliente {
    @PrimaryGeneratedColumn()
    cod_cliente: number;

    @Column()
    nb_cliente: string;

    @Column()
    cedula: string;

    @Column()
    telefono: string;

    @Column()
    sexo: string;

    @Column()
    email: string;

    @Column({length: 200})
    direccion: string;

    @ManyToOne(() => Sucursal)
    @JoinColumn({name: 'cod_sucursal'})
    cod_sucursal: number;
}
