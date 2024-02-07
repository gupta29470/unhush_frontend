import 'package:flutter/material.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

class YourGalleryWidget extends StatelessWidget {
  final double width;

  const YourGalleryWidget({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Your gallery",
                style: AppTextStyles.subheaderS(),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.outbox,
                size: 16,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 24,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppColors.noghreiSilver,
              ),
            ),
            child: Column(
              children: [
                const Icon(
                  Icons.tv,
                  size: 128,
                  color: AppColors.trolleyColor,
                ),
                const SizedBox(height: 18),
                Text(
                  "No videos yet,\ncreate one today",
                  style: AppTextStyles.subheaderS(
                    color: AppColors.trolleyColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
