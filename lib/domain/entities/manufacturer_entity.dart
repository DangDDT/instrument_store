import 'package:instrument_store/domain/entities/bases/base_entity.dart';

class ManufacturerEntity extends BaseEntity {
  ManufacturerEntity();

  factory ManufacturerEntity.fromJson(Map<String, dynamic> json) {
    return ManufacturerEntity();
  }
}
