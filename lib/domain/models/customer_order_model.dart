import 'package:instrument_store/domain/entities/customer_order_entity.dart';
import 'package:instrument_store/domain/models/bases/base_model.dart';

class CustomerOrderModel extends BaseModel {
  const CustomerOrderModel();

  factory CustomerOrderModel.fromEntity(CustomerOrderEntity entity) {
    return const CustomerOrderModel();
  }
}
