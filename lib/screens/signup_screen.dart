import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import './login_screen.dart';
import '../widgets/button.dart';

class SignupScreen extends StatefulWidget {
  static final routeName = '/signup';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  void pushRoute(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/');
  }

  var isPassword = true;

  void togglePasswordVisibility() {
    setState(() {
      isPassword = !isPassword;
    });
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
                'Sign Up',
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
                  Text('Phone Number'),
                  TextField(
                    style: TextStyle(
                      color: Color(0xFF0272DD),
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      suffix: Image.asset('assets/images/flag.png'),
                      hintText: '+123456789',
                      hintStyle: TextStyle(
                        color: Color(0xFFD1D9E0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email Address'),
                  TextField(
                    style: TextStyle(
                      color: Color(0xFF0272DD),
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      hintText: 'ex:hellp@deeper.one',
                      hintStyle: TextStyle(
                        color: Color(0xFFD1D9E0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Password'),
                  TextField(
                    style: TextStyle(
                      color: Color(0xFF0272DD),
                      fontWeight: FontWeight.bold,
                    ),
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
              SizedBox(height: 40),
              Container(
                width: 230,
                child: RichText(
                  text: TextSpan(
                    text: 'By signing up, you agree to our',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Terms ',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamed('/');
                          },
                        style: TextStyle(
                          color: Color(0xFF0272DD),
                        ),
                      ),
                      TextSpan(
                        text: 'and',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      TextSpan(
                        text: ' Privacy',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: TextStyle(
                          color: Color(0xFF0272DD),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                alignment: Alignment.center,
                child: MainButton(
                  backColor: primaryColor,
                  text: 'Sign up',
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
                  child: Text('I already have an account',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                  onPressed: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
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
