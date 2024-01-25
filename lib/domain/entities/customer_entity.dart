import 'package:instrument_store/domain/entities/bases/base_entity.dart';

class CustomerEntity extends BaseEntity {
  CustomerEntity();

  factory CustomerEntity.fromJson(Map<String, dynamic> json) {
    return CustomerEntity();
  }
}
