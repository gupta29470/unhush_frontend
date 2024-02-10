import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unhush_assignment/extensions/bloc_extension.dart';
import 'package:unhush_assignment/routes/routes.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blueDiamond,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(96, 48),
            ),
            onPressed: context.loginCubit.handleLinkedInLogin,
            child: Text(
              'Login with LinkedIn',
              style: AppTextStyles.headerS(
                color: AppColors.white,
              ),
            ),
          ),
          const SizedBox(height: 24),
          TextButton(
            onPressed: () {
              context.push(Routes.home);
            },
            style: TextButton.styleFrom(
              backgroundColor: AppColors.blueDiamond,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(96, 48),
            ),
            child: Text(
              "Navigate to home screen",
              style: AppTextStyles.subheaderS(color: AppColors.white),
            ),
          ),
          const SizedBox(height: 24),
          TextButton(
            onPressed: () {
              context.push(Routes.command);
            },
            style: TextButton.styleFrom(
              backgroundColor: AppColors.blueDiamond,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(96, 48),
            ),
            child: Text(
              "Navigate to commad screen",
              style: AppTextStyles.subheaderS(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
