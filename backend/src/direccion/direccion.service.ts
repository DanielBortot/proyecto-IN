import { Injectable } from '@nestjs/common';
import { CreateDireccionDto } from './dto/create-direccion.dto';
import { UpdateDireccionDto } from './dto/update-direccion.dto';

@Injectable()
export class DireccionService {
  create(createDireccionDto: CreateDireccionDto) {
    return 'This action adds a new direccion';
  }

  findAll() {
    return `This action returns all direccion`;
  }

  findOne(id: number) {
    return `This action returns a #${id} direccion`;
  }

  update(id: number, updateDireccionDto: UpdateDireccionDto) {
    return `This action updates a #${id} direccion`;
  }

  remove(id: number) {
    return `This action removes a #${id} direccion`;
  }
}
