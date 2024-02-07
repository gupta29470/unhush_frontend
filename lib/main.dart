import 'package:flutter/material.dart';
import 'package:unhush_assignment/dependency_injection/bloc_provider.dart';
import 'package:unhush_assignment/dependency_injection/repository_provider.dart';
import 'package:unhush_assignment/routes/app_routes.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryInjection(
      child: BlocInjection(
        child: MaterialApp.router(
          title: 'Unhush Assignment',
          theme: ThemeData(
            primaryColor: AppColors.blueDiamond,
            appBarTheme: AppBarTheme(
              color: AppColors.blueDiamond,
              titleTextStyle: AppTextStyles.headerM(
                color: AppColors.white,
              ),
            ),
            useMaterial3: true,
          ),
          routerConfig: AppRoutes.appRouter,
        ),
      ),
    );
  }
}
