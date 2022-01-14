import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';
import 'package:menubar/menubar.dart' as menubar;
import 'package:path_provider/path_provider.dart';
import 'package:win32/win32.dart';

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
    menubar.setApplicationMenu([
      menubar.Submenu(label: 'Explore', children: [
        // This exists only to test that path_provider doesn't break with the
        // latest Win32. It's entirely redundant to the point of this demo.
        menubar.MenuItem(
          label: 'Show Docs Path...',
          onClicked: () async {
            final appDocDir = await getApplicationDocumentsDirectory();
            final pMessage = 'Path: ${appDocDir.path}'.toNativeUtf16();
            final pTitle = 'Application Documents'.toNativeUtf16();
            MessageBox(NULL, pMessage, pTitle, MB_OK);
            free(pMessage);
            free(pTitle);
          },
        ),
      ]),
    ]);

    return Scaffold(
      body: Column(
        children: [
          if (showRoundedCornerSwitch) WindowRoundingSelector(),
          Expanded(child: VolumePanel()),
        ],
      ),
    );
  }
}
