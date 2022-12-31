import 'package:flutter/material.dart';
import 'package:hack_the_tool/screens/home_screen.dart';
import 'package:hack_the_tool/screens/signup_screen.dart';
import '../widgets/bottom_navigation_widget.dart';
import '../widgets/text_field_widget.dart';
import 'package:lottie/lottie.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = 'SignInScreen';

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Hack The Tool'),),

        backgroundColor: Theme.of(context).primaryColor,
      ),
      resizeToAvoidBottomInset: false,
      body: Form(
        child: Builder(builder: (context) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
         Container(margin:EdgeInsets.only(bottom: 20),height:150,child:Lottie.asset('assets/animation/authentication.json'),),
                   Container(
                     alignment: Alignment.centerLeft,
                      padding:  EdgeInsets.only(left: 20.0),
                      child:const Text(
                        'Email',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextFormFieldWidget(
                      validator: (textValue) {
                        if (!(textValue!.contains('@')) || textValue.isEmpty) {
                          return 'Please enter valid informaton';
                        }
                        return null;
                      },
                      hint: 'abc@email.com',
                      controller: emailController,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding:  EdgeInsets.only(left: 20.0),
                      child: const Text(
                        'Password',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),

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


                BottomNavigationButton('Sign In', () async {
                  if (Form.of(context)?.validate() ?? false) {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  }
                }),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
                          },
                          child: Text('Sign Up',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.merge(TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ))))
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
