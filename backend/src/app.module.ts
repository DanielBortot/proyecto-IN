import { Module } from '@nestjs/common';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';

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
        autoLoadEntities: true,
        synchronize: true,

      }),
    })
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
