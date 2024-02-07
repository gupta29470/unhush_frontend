import 'package:flutter/material.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

class HomeTopBarWidget extends StatelessWidget {
  const HomeTopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: AppColors.noghreiSilver,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Center(
                child: Image.network(
                  "https://images.unsplash.com/photo-1551150441-3f3828204ef0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGxvZ298ZW58MHx8MHx8fDA%3D",
                  height: 40,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blueDiamond,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(84, 48),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Create',
                      style: AppTextStyles.subheaderXXS(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    height: 48,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.snowFlake,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.person,
                        size: 20,
                        color: AppColors.trolleyColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
