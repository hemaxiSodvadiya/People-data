import 'package:flutter/material.dart';
import 'package:people_data/screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
      },
    ),
  );
}
