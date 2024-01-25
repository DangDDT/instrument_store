import 'package:instrument_store/domain/models/instrument_model.dart';
import 'package:instrument_store/domain/requests/instrument/get_instruments_query.dart';
import 'package:instrument_store/domain/requests/instrument/post_instrument_body.dart';
import 'package:instrument_store/domain/requests/instrument/put_instrument_body.dart';
import 'package:instrument_store/infrastructure/repositories/api_repo.dart';

import 'bases/base_service.dart';

class ServiceFactory {
  ServiceFactory._();

  static final ServiceFactory _instance = ServiceFactory._();

  static ServiceFactory get instance {
    return _instance;
  }

  void init({
    InstrumentService? instrumentService,
  }) {
    _instrumentService = instrumentService ?? InstrumentRepo();
  }

  late final InstrumentService _instrumentService;
  InstrumentService get instrumentService => _instrumentService;
}

mixin ServiceMixin {
  ServiceFactory get serviceFactory => ServiceFactory.instance;
}

abstract class InstrumentService extends BaseService<int, InstrumentModel,
    GetInstrumentsQuery, PostInstrumentBody, PutInstrumentBody> {}
