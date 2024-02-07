import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';

class _AppTextStyles {
  static TextStyle bold = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.bold,
  );

  static TextStyle semiBold = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w600,
  );

  static TextStyle regular = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w400,
  );
}

class AppTextStyles {
  // ************************* HEADERS ***************************//
  static TextStyle headerL({Color? color}) => _AppTextStyles.semiBold.copyWith(
        fontSize: 40,
        height: 46 / 40,
        color: color ?? AppColors.black,
      );

  static TextStyle headerM({Color? color}) => _AppTextStyles.semiBold.copyWith(
        fontSize: 32,
        height: 38 / 32,
        color: color ?? AppColors.black,
      );

  static TextStyle headerS({Color? color}) => _AppTextStyles.semiBold.copyWith(
        fontSize: 18,
        height: 24 / 18,
        color: color ?? AppColors.black,
      );

  // ************************* SUB HEADERS ***************************//
  static TextStyle subheaderXL({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 24,
        height: 30 / 24,
        color: color ?? AppColors.black,
      );

  static TextStyle subheaderL({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 20,
        height: 26 / 20,
        color: color ?? AppColors.black,
      );

  static TextStyle subheaderM({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 16,
        height: 22 / 16,
        color: color ?? AppColors.black,
      );

  static TextStyle subheaderS({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 14,
        height: 20 / 14,
        color: color ?? AppColors.black,
      );

  static TextStyle subheaderXS({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 12,
        height: 18 / 12,
        color: color ?? AppColors.black,
      );

  static TextStyle subheaderXXS({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 10,
        height: 16 / 10,
        color: color ?? AppColors.black,
      );

  static TextStyle subheaderXXXS({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 8,
        height: 14 / 8,
        color: color ?? AppColors.black,
      );

  // ************************* BODY TEXT ***************************//
  static TextStyle bodyTextXXL({Color? color}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 28,
        height: 42 / 28,
        color: color ?? AppColors.black,
      );

  static TextStyle bodyTextXL({Color? color}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 24,
        height: 30 / 24,
        color: color ?? AppColors.black,
      );

  static TextStyle bodyTextL({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 20,
        height: 26 / 20,
        color: color ?? AppColors.black,
      );

  static TextStyle bodyTextM({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 16,
        height: 22 / 16,
        color: color ?? AppColors.black,
      );

  static TextStyle bodyTextS({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 14,
        height: 20 / 14,
        color: color ?? AppColors.black,
      );

  static TextStyle bodyTextXS({Color? color}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 12,
        height: 18 / 12,
        color: color ?? AppColors.black,
      );

  static TextStyle bodyTextXXS({Color? color}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 10,
        height: 16 / 10,
        color: color ?? AppColors.black,
      );

  static TextStyle bodyTextXXXS({Color? color}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 8,
        height: 14 / 8,
        color: color ?? AppColors.black,
      );

  // ************************* BOLD TEXT ***************************//
  static TextStyle boldTextXL({Color? color}) => _AppTextStyles.bold.copyWith(
        fontSize: 24,
        height: 30 / 24,
        color: color ?? AppColors.black,
      );

  static TextStyle boldTextL({Color? color}) => _AppTextStyles.bold.copyWith(
        fontSize: 20,
        height: 26 / 20,
        color: color ?? AppColors.black,
      );

  static TextStyle boldTextM({Color? color}) => _AppTextStyles.bold.copyWith(
        fontSize: 16,
        height: 22 / 16,
        color: color ?? AppColors.black,
      );

  static TextStyle boldTextS({Color? color}) => _AppTextStyles.bold.copyWith(
        fontSize: 14,
        height: 20 / 14,
        color: color ?? AppColors.black,
      );

  static TextStyle boldTextXS({Color? color}) => _AppTextStyles.bold.copyWith(
        fontSize: 12,
        height: 18 / 12,
        color: color ?? AppColors.black,
      );

  static TextStyle boldTextXXS({Color? color}) => _AppTextStyles.bold.copyWith(
        fontSize: 10,
        height: 16 / 10,
        color: color ?? AppColors.black,
      );

  static TextStyle boldTextXXXS({Color? color}) => _AppTextStyles.bold.copyWith(
        fontSize: 8,
        height: 14 / 8,
        color: color ?? AppColors.black,
      );
}
