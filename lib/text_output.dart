import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String data;

  TextOutput(this.data);

  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}
