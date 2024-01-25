import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instrument_store/presentation/pages/dashboard/dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    Get.put(DashboardController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return const SizedBox.shrink();
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
