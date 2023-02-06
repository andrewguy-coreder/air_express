import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

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
              const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () async {
                    FilePickerResult? result = await FilePicker.platform
                        .pickFiles(allowMultiple: true);
                    if (result == null) {
                      return;
                    }
                    List<File> files = result.paths
                        .map((path) => path != null ? File(path) : null)
                        .where((file) => file != null)
                        .cast<File>()
                        .toList();
                    print(files);
                  },
                  child: const Text('upload file'))
            ],
          ),
        ));
  }
}
