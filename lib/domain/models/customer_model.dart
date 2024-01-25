import 'package:instrument_store/domain/entities/customer_entity.dart';
import 'package:instrument_store/domain/models/bases/base_model.dart';

class CustomerModel extends BaseModel {
  const CustomerModel();

  factory CustomerModel.fromEntity(CustomerEntity entity) {
    return const CustomerModel();
  }
}
