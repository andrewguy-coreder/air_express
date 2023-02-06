import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

import 'package:air_express/pages/home_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Air Express',
      debugShowCheckedModeBanner: false,
      routes: {'': (context) => HomePage()},
      home: HomePage(),
    );
  }
}
