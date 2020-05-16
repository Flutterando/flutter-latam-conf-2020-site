import 'package:flutter/material.dart';

class RectangleButtonWidget extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  const RectangleButtonWidget(
      {Key key, @required this.buttonText, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        width: 200,
        height: 40,
        color: Color(0xFF00B18D),
        alignment: Alignment.center,
        child: Text(buttonText, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
