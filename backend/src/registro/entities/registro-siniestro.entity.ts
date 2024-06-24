import { Column, Entity, JoinColumn, ManyToOne, PrimaryColumn } from "typeorm";
import { Siniestro } from "./siniestro.entity";
import { Contrato } from "./contrato.entity";

@Entity('registro_siniestro')
export class RegistroSiniestro {
    @PrimaryColumn()
    @ManyToOne(() => Siniestro)
    @JoinColumn({name: 'nro_siniestro'})
    nro_siniestro: number;

    @ManyToOne(() => Contrato)
    @JoinColumn({name: 'nro_contrato'})
    @PrimaryColumn()
    nro_contrato: number;

    @PrimaryColumn('timestamptz')
    fecha_siniestro: Date;

    @Column('timestamptz')
    fecha_respuesta: Date;

    @Column()
    id_rechazo: string;

    @Column()
    monto_reconocido: number;

    @Column()
    monto_solicitado: number;
}