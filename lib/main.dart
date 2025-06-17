import 'package:flutter/material.dart';
import 'package:grocery_app/view/auth_view/login-screen/auth_login_screen.dart';
import 'package:grocery_app/view/auth_view/signup-screen/auth_signup_screen.dart';
import 'package:grocery_app/view/auth_view/welcome1.dart';
import 'package:grocery_app/view/home_view/bottom-screen.dart';
import 'package:grocery_app/view/home_view/categaries_screen/categaries_screen.dart';
import 'package:grocery_app/view/home_view/favorities-screen/favourite.dart';
import 'package:grocery_app/view/home_view/home-screen/home_screen.dart';
import 'package:grocery_app/view/home_view/home-screen/home_screen1.dart';
import 'package:grocery_app/view/starting_view/intro_view/onboarding_view.dart';
import 'package:grocery_app/view/starting_view/splash_view/splash-8.dart';
import 'package:grocery_app/view/starting_view/splash_view/splash_screen.dart';
import 'package:grocery_app/view/starting_view/splash_view/splash_screen01.dart';
import 'package:grocery_app/view/starting_view/splash_view/splash_screen2.dart';
import 'package:grocery_app/view/starting_view/splash_view/splash_screen3.dart';
import 'package:grocery_app/view/starting_view/splash_view/splash_screen4.dart';
import 'package:grocery_app/view/starting_view/splash_view/splash_screen5.dart';
import 'package:grocery_app/view/starting_view/splash_view/splash_screen6.dart';
import 'package:grocery_app/view/starting_view/splash_view/splash_screen7.dart';

import 'controller/components/container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home :SplashScreen8(),
      //SplashScreen7(),
      //BottomBar(),
      //BottomAppBar(),
      //CategariesScreen(),
      //FavouriteScreen(),
     // HomeScreen1(),
      //LoginScreen(),
      //WelcomeScreen(),
    // HomeScreen(),
      //SplashScreen01(),
      //SignupScreen(),
       //OnBoarding(),
      //SplashScreen6(),
      //SplashScreen5(),
      //SplashScreen4(),
     //SplashScreen3(),
    // SplashScreen2(),
   //SplashScreen(),
    );
  }
}
