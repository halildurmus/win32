import 'dart:io';

import 'package:flutter/material.dart';
import 'package:filepicker_windows/filepicker_windows.dart';

import 'wallpaper.dart';

void main() => runApp(FilePickerExample());

class FilePickerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File path;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(path != null ? path.toString() : 'Select a file'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width - 100,
              child: path == null ? Placeholder() : Image.file(path),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  child: Text('Open file dialog'),
                  onPressed: () {
                    final file = FilePicker();
                    file.hidePinnedPlaces = true;
                    file.forcePreviewPaneOn = true;
                    file.filterSpecification = {
                      'JPEG Files': '*.jpg;*.jpeg',
                      'Bitmap Files': '*.bmp',
                      'All Files (*.*)': '*.*'
                    };
                    file.title = 'Select an image';
                    final result = file.getFile();
                    if (result != null) {
                      setState(() {
                        path = result;
                      });
                    }
                  },
                ),
                RaisedButton(
                  child: Text('Set Wallpaper'),
                  onPressed: () {
                    Wallpaper.set(path);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
