import { Module } from '@nestjs/common';
import { DireccionService } from './direccion.service';
import { DireccionController } from './direccion.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Pais } from './entities/pais.entity';
import { Ciudad } from './entities/ciudad.entity';
import { Sucursal } from './entities/sucursal.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Pais, Ciudad, Sucursal])],
  controllers: [DireccionController],
  providers: [DireccionService],
})
export class DireccionModule {}
