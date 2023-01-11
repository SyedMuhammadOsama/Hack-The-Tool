import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_the_tool/bloc/software_bloc/software_bloc.dart';
import 'package:hack_the_tool/screens/detail_screen.dart';
import 'package:hack_the_tool/screens/home_screen.dart';
import 'package:hack_the_tool/screens/signin_screen.dart';
import 'package:hack_the_tool/screens/signup_screen.dart';
import 'package:hack_the_tool/screens/software_detail_screen.dart';
import 'package:hack_the_tool/screens/splash_screen.dart';

import 'auth/auth_bloc.dart';
import 'firebase_options.dart';
import 'screens/bookmark_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => SoftwareBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 176, 101, 189),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            titleMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        home: SplashScreen(),
        routes: {
          SignInScreen.routeName: (context) => SignInScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          DetailScreen.routeName: (context) => DetailScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          BookmarkScreen.routeName: (context) => BookmarkScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          SoftwareDetailScreen.routeName: (context) => SoftwareDetailScreen(),
        },
      ),
    );
  }
}
