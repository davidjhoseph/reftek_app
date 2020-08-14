import 'package:flutter/material.dart';
import './login_screen.dart';
import '../widgets/button.dart';

class HomepageScreen extends StatelessWidget {
  void pushRoute(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    var accentColor = Theme.of(context).accentColor;
    return Scaffold(
      appBar: AppBar(
        title: Text('Amia'),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset(
              'assets/images/banner.png',
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 200,
              child: Text(
                'Welcome to Amia',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).accentColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 280,
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Text(
                '"Connect your Friends and relatives with the Mess Amia messaging system"',
                style: TextStyle(
                    color: Color(0xFFFFE4EA),
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            MainButton(
              backColor: accentColor,
              text: 'Get Started',
              textColor: primaryColor,
              pushRouteAction: () => pushRoute(context),
            )
          ],
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
