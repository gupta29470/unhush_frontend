import 'package:flutter/material.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';

class HomeSideBarWidget extends StatefulWidget {
  const HomeSideBarWidget({super.key});

  @override
  State<HomeSideBarWidget> createState() => _HomeSideBarWidgetState();
}

class _HomeSideBarWidgetState extends State<HomeSideBarWidget> {
  int selectedIndex = 0;
  List<IconData> icons = [
    Icons.home,
    Icons.shopping_cart,
    Icons.movie,
    Icons.dashboard,
    Icons.pause,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 84,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              color: AppColors.noghreiSilver,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              icons.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: selectedIndex == index
                            ? BorderRadius.circular(8)
                            : null,
                        color: selectedIndex == index
                            ? AppColors.blueDiamond.withOpacity(0.3)
                            : null,
                      ),
                      child: Icon(
                        icons[index],
                        color: selectedIndex == index
                            ? AppColors.blueDiamond
                            : AppColors.trolleyColor,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
