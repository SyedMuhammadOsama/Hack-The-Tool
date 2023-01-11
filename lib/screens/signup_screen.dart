import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth/auth_bloc.dart';
import '../widgets/bottom_navigation_widget.dart';
import '../widgets/text_field_widget.dart';
import 'Signin_screen.dart';
import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = 'SignUpScreen';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.user != null) {
          Navigator.pushNamed(context, HomeScreen.routeName);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Center(child: const Text('HackTheTool')),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          resizeToAvoidBottomInset: false,
          body: Form(
            child: Builder(
              builder: (context) {
                return Center(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20.0),
                        child: const Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormFieldWidget(
                        validator: (textValue) {
                          if (textValue!.isEmpty) {
                            return 'Please enter Name';
                          }
                          return null;
                        },
                        hint: 'Talha Khan',
                        controller: nameController,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20.0),
                        child: const Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormFieldWidget(
                        validator: (textValue) {
                          if (!(textValue!.contains('@')) ||
                              textValue.isEmpty) {
                            return 'Please enter valid informaton';
                          }
                          return null;
                        },
                        hint: 'abc@email.com',
                        controller: emailController,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20.0),
                        child: const Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormFieldWidget(
                        validator: (textValue) {
                          if (textValue!.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        hint: '******',
                        controller: passwordController,
                      ),
                      if (state.isLoading == false)
                        BottomNavigationButton('Sign Up', () async {
                          if (Form.of(context)?.validate() ?? false) {
                            context.read<AuthBloc>().add(OnSignUp(
                                emailController.text, passwordController.text));
                            if (state.user != null) {
                              Navigator.pushNamed(
                                  context, HomeScreen.routeName);
                            }
                          }
                        }),
                      if (state.isLoading == true) CircularProgressIndicator(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account?',
                                style: Theme.of(context).textTheme.bodyMedium),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, SignInScreen.routeName);
                                },
                                child: Text(
                                  'Sign In',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.merge(TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                      )),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
