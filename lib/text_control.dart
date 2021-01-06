import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function onButtonPressed;

  TextControl(this.onButtonPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Press me'),
      onPressed: onButtonPressed,
    );
  }
}
