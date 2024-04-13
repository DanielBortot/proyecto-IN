import { Module } from '@nestjs/common';
import { ProductoService } from './producto.service';
import { ProductoController } from './producto.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Producto } from './entities/producto.entity';
import { TipoProducto } from './entities/tipo-producto.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Producto, TipoProducto])],
  controllers: [ProductoController],
  providers: [ProductoService],
})
export class ProductoModule {}
