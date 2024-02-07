import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unhush_assignment/login/domain/login_cubit.dart';
import 'package:unhush_assignment/login/repository/login_repository.dart';

class BlocInjection extends StatelessWidget {
  final Widget child;

  const BlocInjection({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (context) => LoginCubit(
            RepositoryProvider.of<LoginRepository>(
              context,
              listen: false,
            ),
          ),
        ),
      ],
      child: child,
    );
  }
}
