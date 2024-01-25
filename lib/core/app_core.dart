import 'package:instrument_store/core/initialization/global_binding.dart';
import 'package:instrument_store/core/modules/module_manager.dart';

class AppCore {
  const AppCore._();

  static AppCore get instance => const AppCore._();

  static Future<void> init() async {
    await GlobalBinding.init();
    await ModuleManager.instance.init();
  }
}
