class GlobalBinding {
  const GlobalBinding._internal();

  GlobalBinding get instance => const GlobalBinding._internal();

  static Future<void> init() async {}
}
