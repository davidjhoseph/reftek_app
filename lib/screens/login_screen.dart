import 'package:flutter/material.dart';
import './signup_screen.dart';
import '../widgets/button.dart';
import './profile_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var isPassword = true;
  void togglePasswordVisibility() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  void pushRoute(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(ProfileScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    var accentColor = Theme.of(context).accentColor;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: primaryColor, //change your color here
        ),
        elevation: 0,
        actions: [
          FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SignupScreen.routeName);
              },
              child: Text(
                'Sign Up',
                style: TextStyle(color: primaryColor),
              ))
        ],
        backgroundColor: accentColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35,
                    color: Color(0xFF0272DD),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email Address'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'ex:hellp@deeper.one',
                      hintStyle: TextStyle(
                        color: Color(0xFFD1D9E0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Password'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xFFD1D9E0),
                      ),
                      suffixIcon: IconButton(
                        icon: isPassword
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: togglePasswordVisibility,
                      ),
                    ),
                    obscureText: isPassword,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.topRight,
                child: FlatButton(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xFF0272DD),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                alignment: Alignment.center,
                child: MainButton(
                  backColor: primaryColor,
                  text: 'Sign in',
                  textColor: accentColor,
                  pushRouteAction: () => pushRoute(context),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: FlatButton(
                  child: Text('Start with Google',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).accentColor,
    );
  }
}
