import 'package:flutter/material.dart';
import './screens/signup_screen.dart';
import './screens/profile_screen.dart';
import './screens/login_screen.dart';
import './screens/homepage_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Color(0xFFE9446A),
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => HomepageScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        SignupScreen.routeName: (context) => SignupScreen()
      },
    );
  }
}
