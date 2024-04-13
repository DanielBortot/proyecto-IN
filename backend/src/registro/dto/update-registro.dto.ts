import { PartialType } from '@nestjs/mapped-types';
import { CreateRegistroDto } from './create-registro.dto';

export class UpdateRegistroDto extends PartialType(CreateRegistroDto) {}
