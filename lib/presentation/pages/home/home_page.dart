import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instrument_store/presentation/pages/home/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: Get.put(HomeController()) ?? HomeController(),
      builder: (controller) {
        return const SizedBox.shrink();
      },
    );
  }
}
