import 'package:instrument_store/domain/entities/bases/base_entity.dart';

class OrderStatusEntity extends BaseEntity {
  OrderStatusEntity();

  factory OrderStatusEntity.fromJson(Map<String, dynamic> json) {
    return OrderStatusEntity();
  }
}
