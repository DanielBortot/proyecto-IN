import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { DimCliente } from './entities/dim_cliente.entity';
import { DimContrato } from './entities/dim_contrato.entity';
import { DimEstadoContrato } from './entities/dim_estado_contrato.entity';
import { DimEvaluacionServicio } from './entities/dim_evaluacion_servicio.entity';
import { DimProducto } from './entities/dim_producto.entity';
import { DimSiniestro } from './entities/dim_siniestro.entity';
import { DimSucursal } from './entities/dim_sucursal.entity';
import { DimTiempo } from './entities/dim_tiempo.entity';
import { FactEvaluacionServicio } from './entities/fact_evaluacion_servicio.entity';
import { FactMetas } from './entities/fact_metas.entity';
import { FactRegistroContrato } from './entities/fact_registro_contacto.entity';
import { FactRegistroSiniestro } from './entities/fact_registro_siniestro.entity';

@Module({
    imports: [TypeOrmModule.forFeature([DimCliente, DimContrato, DimEstadoContrato, DimEvaluacionServicio, DimProducto, DimSiniestro, DimSucursal, DimTiempo, FactEvaluacionServicio, FactMetas, FactRegistroContrato, FactRegistroSiniestro])]
})
export class EntidadesModule {}
