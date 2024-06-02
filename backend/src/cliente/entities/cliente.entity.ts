import { Sucursal } from "src/direccion/entities/sucursal.entity";
import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";

export enum EnumSexo {
    FEMENINO = 'F',
    MASCULINO = 'M'
}

@Entity('cliente')
export class Cliente {
    @PrimaryGeneratedColumn()
    cod_cliente: number;

    @Column({ type: "varchar", length: 40 })
    nb_cliente: string;

    @Column('varchar', { unique: true } )
    cedula: string;

    @Column('varchar', { unique: true } )
    telefono: string;

    @Column({
        type: "enum",
        enum: EnumSexo,
    })
    sexo: EnumSexo;

    @Column({ type: "varchar", length: 40, unique: true })
    email: string;

    @ManyToOne(() => Sucursal)
    @JoinColumn({name: 'cod_sucursal'})
    cod_sucursal: number;
}
