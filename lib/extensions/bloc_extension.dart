import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unhush_assignment/login/domain/login_cubit.dart';

extension BuildContextX on BuildContext {
  LoginCubit get loginCubit => read<LoginCubit>();
}
