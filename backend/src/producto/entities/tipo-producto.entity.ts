import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('tipo_producto')
export class TipoProducto {
    @PrimaryGeneratedColumn()
    cod_tipo_producto: number;

    @Column()
    nb_tipo_producto: string;
}