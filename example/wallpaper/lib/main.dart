import 'dart:io';

import 'package:filepicker_windows/filepicker_windows.dart' as picker;
import 'package:flutter/material.dart';

import 'wallpaper.dart';

void main() => runApp(const FilePickerExample());

class FilePickerExample extends StatelessWidget {
  const FilePickerExample({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(home: HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? path;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
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
                child: path == null ? const Placeholder() : Image.file(path!),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final file = picker.OpenFilePicker()
                          ..hidePinnedPlaces = true
                          ..forcePreviewPaneOn = true
                          ..title = 'Select an image'
                          ..filterSpecification = {
                            'JPEG Files': '*.jpg;*.jpeg',
                            'Bitmap Files': '*.bmp',
                            'All Files (*.*)': '*.*'
                          };

                        final result = file.getFile();
                        if (result != null) {
                          setState(() {
                            path = result;
                          });
                        }
                      },
                      child: const Text('Open file dialog'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (path != null) {
                          Wallpaper.set(path!);
                        }
                      },
                      child: const Text('Set Wallpaper'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
