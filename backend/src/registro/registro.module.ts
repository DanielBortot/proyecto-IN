import { Module } from '@nestjs/common';
import { RegistroService } from './registro.service';
import { RegistroController } from './registro.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { RegistroContrato } from './entities/registro-contrato.entity';
import { Contrato } from './entities/contrato.entity';
import { RegistroSiniestro } from './entities/registro-siniestro.entity';
import { Siniestro } from './entities/siniestro.entity';

@Module({
  imports: [TypeOrmModule.forFeature([RegistroContrato, Contrato, RegistroSiniestro, Siniestro])],
  controllers: [RegistroController],
  providers: [RegistroService],
})
export class RegistroModule {}
