import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:win32/win32.dart';

import 'volumepanel.dart';
import 'windowroundingselector.dart';

void main() {
  runApp(const ExplorerApp());
}

class ExplorerApp extends StatelessWidget {
  const ExplorerApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    home: const MainPage(),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  var showRoundedCornerSwitch = false;

  @override
  void initState() {
    showRoundedCornerSwitch = IsWindows11OrGreater();
    super.initState();
  }

  Future<void> showDocumentsPath() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    using((arena) {
      final hwnd = GetForegroundWindow();
      final text = arena.pcwstr('Path: ${appDocDir.path}');
      final caption = arena.pcwstr('Application Documents');
      MessageBox(hwnd, text, caption, MB_OK);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    // Unsupported on Windows as of Flutter 3. Adding in preparation for later
    // releases.
    body: PlatformMenuBar(
      menus: [
        PlatformMenu(
          label: 'Explore',
          menus: [
            PlatformMenuItemGroup(
              members: [
                PlatformMenuItem(
                  label: 'Show Documents Path',
                  shortcut: const SingleActivator(
                    LogicalKeyboardKey.keyP,
                    control: true,
                    shift: true,
                  ),
                  onSelected: () async => showDocumentsPath(),
                ),
              ],
            ),
          ],
        ),
      ],
      child: Column(
        children: [
          if (showRoundedCornerSwitch) const WindowRoundingSelector(),
          const Expanded(child: VolumePanel()),

          // TODO(halildurmus): Can be removed if/when PlatformMenuBar is
          // supported on Windows.
          FloatingActionButton(
            onPressed: () async => showDocumentsPath(),
            mini: true,
            tooltip: 'Show Documents Path',
            child: const Icon(Icons.folder),
          ),
        ],
      ),
    ),
  );
}
