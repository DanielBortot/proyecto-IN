import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { EntidadesModule } from './entidades/entidades.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConfigModule, ConfigService } from '@nestjs/config';

@Module({
  imports: [
    ConfigModule.forRoot(),
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: (env: ConfigService) => ({
          type: 'postgres',
          host: env.getOrThrow('POSTGRES_HOST'),
          port: +env.getOrThrow('POSTGRES_PORT'),
          username: env.getOrThrow('POSTGRES_USER'),
          password: env.getOrThrow('POSTGRES_PASSWORD'),
          database: env.getOrThrow('POSTGRES_DB'),
          entities: [__dirname + '/src/*/.entity{.ts,.js}'],
          synchronize: true,
      }),
    }),
    EntidadesModule
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
