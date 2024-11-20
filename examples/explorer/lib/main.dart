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
    final hwnd = GetForegroundWindow();
    final text = w('Path: ${appDocDir.path}');
    final caption = w('Application Documents');
    MessageBox(hwnd, text.ptr, caption.ptr, MB_OK);
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
                  label: 'Show Docs Path...',
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

          // TODO(halildurmus): Can be removed when PlatformMenuBar is
          // supported on Windows.
          FloatingActionButton(
            mini: true,
            child: const Icon(Icons.folder),
            onPressed: () async => showDocumentsPath(),
          ),
        ],
      ),
    ),
  );
}
