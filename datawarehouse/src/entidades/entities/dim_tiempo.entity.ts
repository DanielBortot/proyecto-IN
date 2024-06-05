import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity('dim_tiempo')
export class DimTiempo {
    @PrimaryGeneratedColumn()
    sk_dim_tiempo: number;

    @Column('integer')
    cod_annio: number;

    @Column('integer')
    cod_mes: number;

    @Column('integer')
    cod_dia_annio: number;

    @Column('integer')
    cod_dia_mes: number;

    @Column('integer')
    cod_dia_semana: number;

    @Column('integer')
    cod_semana: number;

    @Column('varchar', {length: 10})
    desc_dia_semana: string;

    @Column('varchar', {length: 5})
    desc_dia_semana_corta: string;

    @Column('varchar', {length: 20})
    desc_mes: string;

    @Column('varchar', {length: 3})
    desc_mes_corta: string;

    @Column('integer')
    desc_trimestre: number;

    @Column('integer')
    desc_semestre: number;

    @Column('date')
    fecha_completa: Date;
}