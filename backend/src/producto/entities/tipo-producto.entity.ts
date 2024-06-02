import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

export enum EnumTipoProducto {
    PRESTACION = 'PRESTACION DE SERVICIOS',
    PERSONALES = 'PERSONALES',
    DAÑOS = 'DAÑOS',
    PATRIMONIALES = 'PATRIMONIALES'
}

@Entity('tipo_producto')
export class TipoProducto {
    @PrimaryGeneratedColumn()
    cod_tipo_producto: number;

    @Column({
        type: "enum",
        enum: EnumTipoProducto,
    })
    nb_tipo_producto: EnumTipoProducto;
}