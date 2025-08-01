import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/view/home_view/payement_screen.dart';
import 'package:grocery_app/view/starting_view/splash_view/splash_screen.dart';
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
      title: 'GroceryApp',
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
      home ://PayementScreen(),
      //SweetHome(),
      //ApplyFilters(),
      //ShippingAddress(),
      //CartScreen(),
      //TrackScreen(),
      //VeryfyNumber(),
      //ExpansionPhoneField (),
      // VerifyNumber(),
     // HomeScreen1(),
      // ForgetpasswordScreen(),
      //ReveiwScreen(),
     //BottomNav(),
      //SplashScreen8(),
      //SplashScreen7(),
      //BottomBar(),
      //BottomAppBar(),
      //CategariesScreen(),
      //FavouriteScreen(),
      //HomeScreen1(),
     //LoginScreen(),
     // WelcomeScreen(),
   //HomeScreen(),
      //SplashScreen01(),
     // SignupScreen(),
       //OnBoarding(),
      //SplashScreen6(),
      //SplashScreen5(),
      //SplashScreen4(),
     //SplashScreen3(),
    // SplashScreen2(),
   SplashScreen(),
    );
  }
}
