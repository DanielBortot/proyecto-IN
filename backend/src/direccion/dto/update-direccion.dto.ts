import { PartialType } from '@nestjs/mapped-types';
import { CreateDireccionDto } from './create-direccion.dto';

export class UpdateDireccionDto extends PartialType(CreateDireccionDto) {}
