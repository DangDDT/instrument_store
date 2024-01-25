import 'package:instrument_store/core/modules/module_manager.dart';

import 'initialization/global_binding.dart';

class AppCore {
  static String packageName = 'instrument_store';

  const AppCore._internal();

  static AppCore get instance => const AppCore._internal();

  Future<void> init() async {
    await GlobalBinding.instance.init();
    await ModuleManager.instance.init();
  }
}
