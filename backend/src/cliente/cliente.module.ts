import { Module } from '@nestjs/common';
import { ClienteService } from './cliente.service';
import { ClienteController } from './cliente.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Cliente } from './entities/cliente.entity';
import { Recomienda } from './entities/recomienda.entity';
import { EvaluacionServicio } from './entities/evaluacion-servicio.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Cliente, Recomienda, EvaluacionServicio])],
  controllers: [ClienteController],
  providers: [ClienteService],
})
export class ClienteModule {}
