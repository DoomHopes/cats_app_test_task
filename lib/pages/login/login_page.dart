import 'package:cats_app_test_task/blocs/login_bloc/login_bloc.dart';
import 'package:cats_app_test_task/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_form.dart';

class LoginPage extends StatelessWidget {
  final UserRepository _userRepository;

  const LoginPage({Key key, UserRepository userRepository})
      : _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(userRepository: _userRepository),
        child: Container(
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(top: 230),
            child: LoginForm(
              userRepository: _userRepository,
            ),
          ),
        ),
      ),
    );
  }
}
