import 'package:auth_user_repository/auth_user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:meditation_app/bloc/auth_bloc.dart';
import 'package:meditation_app/screens/onboarding.dart';
import 'package:meditation_app/screens/signin.dart';
import 'package:meditation_app/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthUserRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc(
              authUserRepository: RepositoryProvider.of<AuthUserRepository>(context)
          )
          )
        ],
        child: MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => const SignInScreen(),
            )
          ),
        ),
      ),
    );
  }
}
