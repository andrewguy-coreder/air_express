import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Air Express',
        debugShowCheckedModeBanner: false,
        home: Container(
          alignment: Alignment.center,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 104, 99, 99)),
          child: const Text(
            'Hello World!',
            style:
                TextStyle(color: Colors.amber, decoration: TextDecoration.none),
          ),
        ));
  }
}
