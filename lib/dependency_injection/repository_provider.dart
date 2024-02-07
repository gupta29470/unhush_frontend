import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unhush_assignment/login/repository/login_repository.dart';

class RepositoryInjection extends StatelessWidget {
  final Widget child;

  const RepositoryInjection({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<LoginRepository>(
          create: (BuildContext context) => LoginRepository(),
        ),
      ],
      child: child,
    );
  }
}
