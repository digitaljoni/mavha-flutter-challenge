import 'package:flutter/material.dart';
import 'package:mavha_flutter_challenge/my_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF4142ca),
        primaryColorDark: Color(0xFF3737b4),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyList(),
    );
  }
}
