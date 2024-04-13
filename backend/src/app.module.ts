import { Module } from '@nestjs/common';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ClienteModule } from './cliente/cliente.module';
import { DireccionModule } from './direccion/direccion.module';
import { ProductoModule } from './producto/producto.module';
import { RegistroModule } from './registro/registro.module';
import { DatabaseModule } from './database/database.module';

@Module({
  imports: [
    ConfigModule.forRoot(),
    DatabaseModule,
    ClienteModule,
    DireccionModule,
    ProductoModule,
    RegistroModule
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
