import 'package:flutter/material.dart';
import '../widgets/user.dart';
import '../widgets/button.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void pushRoute(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/');
  }

  var selectedUser = "Tokunaga";
  void changeSelectedUser(name) {
    setState(() {
      selectedUser = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    var accentColor = Theme.of(context).accentColor;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: accentColor, //change your color here
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('assets/images/rectangle.png'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Dennis',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: accentColor,
                    ),
                  ),
                  Text(
                    'Dennis@gmail.com',
                    style: TextStyle(
                        color: Color(0xFFFFE4EA),
                        fontWeight: FontWeight.w200,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => changeSelectedUser('Tokunaga'),
                    child: User(
                      image: Image.asset('assets/images/user1.png'),
                      name: 'Tokunaga Yae',
                      selected: selectedUser == 'Tokunaga' ? true : false,
                    ),
                  ),
                  Divider(height: 0),
                  InkWell(
                    onTap: () => changeSelectedUser('Dominik'),
                    child: User(
                      image: Image.asset('assets/images/user2.png'),
                      name: 'Dominik Doudny',
                      selected: selectedUser == 'Dominik' ? true : false,
                    ),
                  ),
                  Divider(height: 0),
                  InkWell(
                    onTap: () => changeSelectedUser('Corrabelle'),
                    child: User(
                      image: Image.asset('assets/images/user3.png'),
                      name: 'Corrabel Durrad',
                      selected: selectedUser == 'Corrabelle' ? true : false,
                    ),
                  ),
                  Divider(height: 0),
                ],
              ),
            ),
            MainButton(
                pushRouteAction: () => pushRoute(context),
                backColor: primaryColor,
                textColor: accentColor,
                text: 'Continue as $selectedUser')
          ],
        ),
      ),
      backgroundColor: Theme.of(context).accentColor,
    );
  }
}
