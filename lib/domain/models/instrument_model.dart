import 'package:instrument_store/domain/entities/instrument_entity.dart';
import 'package:instrument_store/domain/models/bases/base_model.dart';

class InstrumentModel extends BaseModel {
  InstrumentModel();

  factory InstrumentModel.fromEntity(InstrumentEntity entity) {
    return InstrumentModel();
  }
}
