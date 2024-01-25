import 'package:instrument_store/domain/entities/instrument_entity.dart';
import 'package:instrument_store/domain/models/instrument_model.dart';
import 'package:instrument_store/domain/requests/instrument/get_instruments_query.dart';
import 'package:instrument_store/domain/requests/instrument/post_instrument_body.dart';
import 'package:instrument_store/domain/requests/instrument/put_instrument_body.dart';
import 'package:instrument_store/domain/services/services.dart';

import 'bases/base_repo.dart';

class InstrumentRepo extends BaseRepo<
    int,
    InstrumentEntity,
    InstrumentModel,
    GetInstrumentsQuery,
    PostInstrumentBody,
    PutInstrumentBody> implements InstrumentService {
  InstrumentRepo() : super(path: '/instruments');
}
