import 'package:flutter/material.dart';

import 'text_control.dart';
import 'text_output.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  var _counter = 0;

  String get displayText => 'Pressed $_counter times!';

  void _onButtonPressed() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: Column(
          children: [
            TextOutput(displayText),
            TextControl(_onButtonPressed),
          ],
        ),
      ),
    );
  }
}
