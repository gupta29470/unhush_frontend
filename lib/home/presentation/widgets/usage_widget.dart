import 'package:flutter/material.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

class UsageWidget extends StatelessWidget {
  final double width;

  const UsageWidget({
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
                "Usage",
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
                CircleAvatar(
                  radius: 72,
                  backgroundColor: AppColors.blueDiamond,
                  child: CircleAvatar(
                    radius: 52,
                    backgroundColor: AppColors.white,
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Total\n",
                              style: AppTextStyles.bodyTextXS(),
                            ),
                            TextSpan(
                              text: "2,0000",
                              style: AppTextStyles.headerS(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: AppColors.blueDiamond,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(width: 8),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Credits left: ",
                            style: AppTextStyles.bodyTextXS(),
                          ),
                          TextSpan(
                            text: "100%",
                            style: AppTextStyles.bodyTextXS().copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
