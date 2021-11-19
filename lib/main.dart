import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(Aplication());

class Aplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NAVEGADOR',
      home: Home(),
      theme: ThemeData(
          primaryColor: Color(0xFF2F008e),
          secondaryHeaderColor: Colors.black12),
    );
  }
}
