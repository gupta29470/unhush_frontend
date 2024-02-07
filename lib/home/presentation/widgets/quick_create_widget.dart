import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

class QuickCreateWidget extends StatelessWidget {
  final double width;

  const QuickCreateWidget({
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
          Text(
            "Quick Create",
            style: AppTextStyles.subheaderS(),
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
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Text(
                    "Generate video from any URL (Eg.Amazon)",
                    style: AppTextStyles.subheaderXS(
                      color: AppColors.carbon,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppColors.noghreiSilver,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 12,
                        ),
                        child: Text(
                          "https://www.amazon.com",
                          style: AppTextStyles.bodyTextS(
                            color: AppColors.trolleyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const DottedLine(
                  direction: Axis.horizontal,
                  dashColor: AppColors.noghreiSilver,
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Text(
                    "Or",
                    style: AppTextStyles.headerS(),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                AppColors.blueDiamond.withOpacity(0.3),
                            padding: const EdgeInsets.all(
                              8,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              side: const BorderSide(
                                color: AppColors.blueDiamond,
                              ),
                            ),
                            shadowColor: Colors.transparent,
                          ),
                          child: Text(
                            "Create from scratch",
                            style: AppTextStyles.subheaderS(
                              color: AppColors.blueDiamond,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                AppColors.blueDiamond.withOpacity(0.3),
                            padding: const EdgeInsets.all(
                              8,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              side: const BorderSide(
                                color: AppColors.blueDiamond,
                              ),
                            ),
                            shadowColor: Colors.transparent,
                          ),
                          child: Text(
                            "Create from templates",
                            style: AppTextStyles.subheaderS(
                              color: AppColors.blueDiamond,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
