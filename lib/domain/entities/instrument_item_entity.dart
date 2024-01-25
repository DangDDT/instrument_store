import 'package:instrument_store/domain/entities/bases/base_entity.dart';

class InstrumentItemEntity extends BaseEntity {
  InstrumentItemEntity();

  factory InstrumentItemEntity.fromJson(Map<String, dynamic> json) {
    return InstrumentItemEntity();
  }
}
