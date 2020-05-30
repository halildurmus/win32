import 'dart:io';

import 'package:flutter/material.dart';

import 'package:filepicker_windows/filepicker_windows.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  File path;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(path != null ? path.toString() : 'Select a file'),
        ),
        body: RaisedButton(
            child: Text('filepicker'),
            onPressed: () {
              final file = FilePicker();
              setState(
                () {
                  path = file.getFile();
                },
              );
            }),
      ),
    );
  }
}
