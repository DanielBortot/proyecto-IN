import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { DireccionService } from './direccion.service';
import { CreateDireccionDto } from './dto/create-direccion.dto';
import { UpdateDireccionDto } from './dto/update-direccion.dto';

@Controller('direccion')
export class DireccionController {
  constructor(private readonly direccionService: DireccionService) {}

  @Post()
  create(@Body() createDireccionDto: CreateDireccionDto) {
    return this.direccionService.create(createDireccionDto);
  }

  @Get()
  findAll() {
    return this.direccionService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.direccionService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateDireccionDto: UpdateDireccionDto) {
    return this.direccionService.update(+id, updateDireccionDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.direccionService.remove(+id);
  }
}
