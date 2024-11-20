import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:win32/win32.dart';

class WindowRoundingSelector extends StatefulWidget {
  const WindowRoundingSelector({super.key});

  @override
  WindowRoundingSelectorState createState() => WindowRoundingSelectorState();
}

class WindowRoundingSelectorState extends State<WindowRoundingSelector> {
  var _isWindowRounded = true;

  void setWindowRoundingEffect({bool isRounded = true}) {
    using((arena) {
      final hWnd = GetForegroundWindow();
      final pref = arena<DWORD>()
        ..value = isRounded ? DWMWCP_ROUND : DWMWCP_DONOTROUND;
      DwmSetWindowAttribute(
        hWnd,
        DWMWA_WINDOW_CORNER_PREFERENCE,
        pref,
        sizeOf<DWORD>(),
      );
      setState(() => _isWindowRounded = isRounded);
    });
  }

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
    child: SwitchListTile(
      title: const Text('Round window corners (Windows 11 style)'),
      secondary: const FaIcon(FontAwesomeIcons.windowMaximize),
      value: _isWindowRounded,
      onChanged: (value) => setWindowRoundingEffect(isRounded: value),
    ),
  );
}
