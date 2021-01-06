import 'package:flutter/material.dart';

import 'text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControl();
  }
}

class _TextControl extends State<TextControl> {
  var _counter = 0;

  String get displayText => 'Pressed $_counter times!';

  void _onButtonPressed() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextOutput(displayText),
        RaisedButton(
          child: Text('Press me'),
          onPressed: _onButtonPressed,
        )
      ],
    );
  }
}
