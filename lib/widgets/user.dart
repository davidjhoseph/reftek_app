import 'package:flutter/material.dart';

class User extends StatelessWidget {
  User({@required this.image, @required this.name, this.selected = false});

  final Image image;
  final String name;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        leading: image,
        trailing: selected
            ? Icon(
                Icons.done,
                color: Theme.of(context).primaryColor,
              )
            : Text(
                '',
              ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
