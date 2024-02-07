part of 'login_cubit.dart';

sealed class LoginState {
  const LoginState();
}

class LoginInitialState extends LoginState {
  const LoginInitialState();
}

class LoginLoadingState extends LoginState {
  const LoginLoadingState();
}

class LinkedInLoginSuccessState extends LoginState {
  final String code;
  const LinkedInLoginSuccessState({required this.code});
}

class LoginSuccessState extends LoginState {
  final UserModel userModel;

  const LoginSuccessState(this.userModel);
}

class LoginErrorState extends LoginState {
  const LoginErrorState();
}
