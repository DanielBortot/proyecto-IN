import { Column, Entity, JoinColumn, ManyToOne, PrimaryColumn } from "typeorm";
import { Siniestro } from "./siniestro.entity";
import { Contrato } from "./contrato.entity";

export enum EnumRechazo {
    NO = "NO",
    SI = "SI",
}

@Entity('registro_siniestro')
export class RegistroSiniestro {
    
    @ManyToOne(() => Siniestro)
    @JoinColumn({name: 'nro_siniestro'})
    @PrimaryColumn()
    nro_siniestro: number;

    @ManyToOne(() => Contrato)
    @JoinColumn({name: 'cod_contrato'})
    @PrimaryColumn()
    cod_contrato: number;

    @PrimaryColumn('timestamptz')
    fecha_siniestro: Date;

    @Column('timestamptz')
    fecha_respuesta: Date;

    @Column({
        type: "enum",
        enum: EnumRechazo,
        nullable: true
    })
    id_rechazo: string;

    @Column('numeric')
    monto_reconocido: number;

    @Column('numeric')
    monto_solicitado: number;
}    

