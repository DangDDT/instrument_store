import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:instrument_store/presentation/pages/dashboard/dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    Get.put(DashboardController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
            body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: AnimationLimiter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 410),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: 50,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: [
                    const SizedBox(height: 24),
                    const _WelcomeSection(),
                    const SizedBox(height: 8),
                    const _SearchSection(),
                    const _CategorySection(),
                  ],
                ),
              ),
            ),
          ),
        ));
      },
    );
  }
}

class _SearchSection extends GetView<DashboardController> {
  const _SearchSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Find the best for you',
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () => {},
          child: Hero(
            tag: const ValueKey('search-bar'),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: context.theme.colorScheme.surfaceVariant,
              ),
              height: 48,
              width: double.infinity,
              child: DefaultTextStyle(
                style: context.theme.textTheme.titleSmall!.copyWith(
                  color:
                      context.theme.colorScheme.onBackground.withOpacity(0.5),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, size: 24),
                    const SizedBox(width: 8),
                    AnimatedTextKit(
                      onTap: () => {},
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Search here...',
                          speed: const Duration(milliseconds: 210),
                          curve: Curves.decelerate,
                          cursor: '|',
                        ),
                        TypewriterAnimatedText(
                          'Search with prompt...',
                          speed: const Duration(milliseconds: 210),
                          curve: Curves.decelerate,
                          cursor: '|',
                        ),
                      ],
                      repeatForever: true,
                    ),
                    // const Spacer(),
                    // GestureDetector(
                    //   onTap: controller.onPressQrCodeButton,
                    //   child: const Icon(
                    //     Icons.qr_code_scanner,
                    //     size: 20,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            // TextFormField(
            //   readOnly: true,
            //   onTap: () => {},
            //   // Get.toNamed(AppRouter.docSearchPage),
            //   decoration: const InputDecoration(
            //     prefixIcon: Icon(Icons.search),
            //     hintText: 'Tìm kiếm văn bản...',
            //     filled: true,
            //   ),
            //   // controller: TextEditingController(),
            // ),
          ),
        )
      ],
    );
  }
}

class _WelcomeSection extends GetView<DashboardController> {
  const _WelcomeSection();

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Welcome, '.toUpperCase(),
        style: context.textTheme.titleSmall?.copyWith(),
        children: [
          TextSpan(
            text: 'Julliana',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _CategorySection extends GetView<DashboardController> {
  const _CategorySection();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.state?.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        final category = controller.state?.elementAt(index);
        return GestureDetector(
          onTap: () => {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: context.theme.colorScheme.surfaceVariant,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Hero(
                    tag: ValueKey(category?.id),
                    child: Image.asset(
                      category?.image ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  category?.name ?? '',
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        );
      },
    );
  }
}
