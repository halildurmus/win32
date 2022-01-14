import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import 'data/winver.dart';
import 'volumepanel.dart';
import 'windowroundingselector.dart';

void main() {
  runApp(ExplorerApp());
}

class ExplorerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool showRoundedCornerSwitch = false;

  @override
  void initState() {
    showRoundedCornerSwitch = isWindows11();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This exists only to test that path_provider doesn't break with the
      // latest Win32. It's entirely redundant to the point of this demo.
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final appDocDir = await getApplicationDocumentsDirectory();
          print(appDocDir.path);
        },
        label: Text('Paths'),
      ),
      body: Column(
        children: [
          if (showRoundedCornerSwitch) WindowRoundingSelector(),
          Expanded(child: VolumePanel()),
        ],
      ),
    );
  }
}
