import 'package:flutter/material.dart';
import 'package:unhush_assignment/home/presentation/widgets/home_side_bar_widget.dart';
import 'package:unhush_assignment/home/presentation/widgets/home_top_bar_widget.dart';
import 'package:unhush_assignment/home/presentation/widgets/images_widget.dart';
import 'package:unhush_assignment/home/presentation/widgets/quick_create_widget.dart';
import 'package:unhush_assignment/home/presentation/widgets/search_widget.dart';
import 'package:unhush_assignment/home/presentation/widgets/templates_action_widget.dart';
import 'package:unhush_assignment/home/presentation/widgets/usage_widget.dart';
import 'package:unhush_assignment/home/presentation/widgets/your_gallery_widget.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

enum ScreenType {
  mobile,
  tablet,
  desktop,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<IconData> icons = [
    Icons.home,
    Icons.shopping_cart,
    Icons.movie,
    Icons.dashboard,
    Icons.pause,
  ];
  int selectedIndex = 0;

  int getTopCardColumnFactor(double screenWidth) {
    ScreenType screenType = getScreenType(screenWidth);
    if (screenType == ScreenType.desktop) {
      return 3;
    } else if (screenType == ScreenType.tablet) {
      return 2;
    }
    return 1;
  }

  int getItemsColumnFactor(double screenWidth) {
    ScreenType screenType = getScreenType(screenWidth);
    if (screenType == ScreenType.desktop) {
      return 8;
    } else if (screenType == ScreenType.tablet) {
      return 4;
    }
    return 2;
  }

  ScreenType getScreenType(double screenWidth) {
    return switch (screenWidth) {
      > 1200 => ScreenType.desktop,
      > 900 => ScreenType.tablet,
      _ => ScreenType.mobile,
    };
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;
    final int topCardColumnFactor = getTopCardColumnFactor(screenWidth);
    final double topCardWidth =
        (screenWidth - 84 - 40 - 56) / topCardColumnFactor;

    final int itemsColumnFactor = getItemsColumnFactor(screenWidth);
    const totalPaddingAndMargins = 40 + 48 + 84;
    final totalSpacing = 16 * (itemsColumnFactor - 1);
    final availableWidthForItems =
        screenWidth - totalSpacing - totalPaddingAndMargins;
    final itemCardWidth = availableWidthForItems / itemsColumnFactor;
    debugPrint('Screen width: $screenWidth');
    debugPrint('Available width for items: $availableWidthForItems');
    debugPrint('Item card width: $itemCardWidth');
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTopBarWidget(),
            const Divider(
              height: 1,
              thickness: 1,
              color: AppColors.noghreiSilver,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeSideBarWidget(),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 28,
                            runSpacing: 16,
                            children: [
                              QuickCreateWidget(width: topCardWidth),
                              YourGalleryWidget(width: topCardWidth),
                              UsageWidget(width: topCardWidth),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Text(
                                "Templates",
                                style: AppTextStyles.subheaderS(),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.outbox,
                                size: 16,
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: AppColors.noghreiSilver,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (getScreenType(screenWidth) ==
                                      ScreenType.mobile) ...[
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SearchWidget(),
                                        SizedBox(height: 16),
                                        TemplatesActionWidget(
                                          text: "All use cases",
                                        ),
                                        SizedBox(height: 16),
                                        TemplatesActionWidget(
                                          text: "Potrait",
                                        ),
                                      ],
                                    ),
                                  ] else ...[
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SearchWidget(),
                                        Row(
                                          children: [
                                            TemplatesActionWidget(
                                              text: "All use cases",
                                            ),
                                            SizedBox(width: 16),
                                            TemplatesActionWidget(
                                              text: "Potrait",
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                  const SizedBox(height: 16),
                                  ImagesWidget(
                                    width: itemCardWidth,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
