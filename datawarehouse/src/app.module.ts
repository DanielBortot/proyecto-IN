import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { EntidadesModule } from './entidades/entidades.module';

@Module({
  imports: [EntidadesModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
