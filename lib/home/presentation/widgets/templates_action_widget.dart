import 'package:flutter/material.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

class TemplatesActionWidget extends StatelessWidget {
  final String text;

  const TemplatesActionWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(8),
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
            text,
            style: AppTextStyles.bodyTextS(),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.trolleyColor,
            size: 20,
          ),
        ],
      ),
    );
  }
}
