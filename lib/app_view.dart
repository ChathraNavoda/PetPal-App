import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_repository/pet_supplies_repository.dart';
import 'package:petpal/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:petpal/screens/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:petpal/screens/auth/views/welcome_screen.dart';
import 'package:petpal/screens/home/bloc/get_items_bloc/get_items_bloc.dart';
import 'package:petpal/screens/home/views/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Supplies Delivery",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: Colors.grey.shade100,
          onSurface: Colors.black,
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: ((context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => SignInBloc(
                      context.read<AuthenticationBloc>().userRepository),
                ),
                BlocProvider(
                  create: (context) =>
                      GetItemsBloc(FirebasePetRepo())..add(GetItems()),
                ),
              ],
              child: const HomeScreen(),
            );
          } else {
            return const WelcomeScreen();
          }
        }),
      ),
    );
  }
}
