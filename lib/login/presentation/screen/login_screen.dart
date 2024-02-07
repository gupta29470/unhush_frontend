import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:unhush_assignment/extensions/bloc_extension.dart';
import 'package:unhush_assignment/login/domain/login_cubit.dart';
import 'package:unhush_assignment/login/models/user_model.dart';
import 'package:unhush_assignment/login/presentation/widgets/login_body_widget.dart';
import 'package:unhush_assignment/routes/routes.dart';
import 'package:unhush_assignment/styles/app_colors/app_colors.dart';
import 'package:unhush_assignment/styles/app_text_styles/app_text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.loginCubit.listenForAuthCode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.snowFlake,
      appBar: AppBar(
        backgroundColor: AppColors.blueDiamond,
        title: const Text(
          "Login",
        ),
      ),
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (_, state) {
          return switch (state) {
            LoginInitialState() => const LoginBodyWidget(),
            LoginLoadingState() => Stack(
                children: [
                  const LoginBodyWidget(),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.black.withOpacity(0.8),
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.blueDiamond,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            LinkedInLoginSuccessState(code: String _) => Stack(
                children: [
                  const LoginBodyWidget(),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.black.withOpacity(0.8),
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.blueDiamond,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            LoginSuccessState(userModel: UserModel userModel) => Center(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.noghreiSilver,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                  userModel.picture ??
                                      "https://i.pravatar.cc/150?img=28",
                                ),
                              ),
                              const SizedBox(width: 8),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "${userModel.name}\n",
                                      style: AppTextStyles.subheaderS(),
                                    ),
                                    TextSpan(
                                      text: "${userModel.email}",
                                      style: AppTextStyles.bodyTextXS(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        DecoratedBox(
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: AppColors.noghreiSilver,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 40,
                              horizontal: 120,
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.blueDiamond,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                minimumSize: const Size(96, 48),
                              ),
                              onPressed: () {
                                context.go(
                                  Routes.command,
                                );
                              },
                              child: Text(
                                'Click to open a menu (Command + K)',
                                style: AppTextStyles.headerS(
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            LoginErrorState() => Center(
                child: Text(
                  "Something went wrong while logging or fetching profile",
                  style: AppTextStyles.headerM(),
                ),
              ),
          };
        },
      ),
    );
  }
}
