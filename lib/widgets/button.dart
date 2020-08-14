import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  MainButton(
      {@required this.pushRouteAction,
      @required this.backColor,
      @required this.textColor,
      @required this.text});
  final Function pushRouteAction;
  final Color backColor;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
      onPressed: pushRouteAction,
      color: backColor,
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 120),
    );
  }
}
