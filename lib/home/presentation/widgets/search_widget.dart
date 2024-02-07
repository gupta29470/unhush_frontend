import 'package:flutter/material.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.noghreiSilver,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search here",
            style: AppTextStyles.bodyTextS(
              color: AppColors.trolleyColor,
            ),
          ),
          const Icon(
            Icons.search,
            color: AppColors.trolleyColor,
            size: 20,
          ),
        ],
      ),
    );
  }
}
