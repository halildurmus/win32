import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:win32/win32.dart';

class WindowRoundingSelector extends StatefulWidget {
  const WindowRoundingSelector({Key? key}) : super(key: key);

  @override
  _WindowRoundingSelectorState createState() => _WindowRoundingSelectorState();
}

class _WindowRoundingSelectorState extends State<WindowRoundingSelector> {
  bool _isWindowRounded = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      child: SwitchListTile(
        title: const Text('Round window corners (Windows 11 style)'),
        value: _isWindowRounded,
        onChanged: (bool isRounded) {
          final hwnd = GetForegroundWindow();
          final attr = DWMWINDOWATTRIBUTE.DWMWA_WINDOW_CORNER_PREFERENCE;
          final pref = calloc<DWORD>()
            ..value = isRounded
                ? DWM_WINDOW_CORNER_PREFERENCE.DWMWCP_ROUND
                : DWM_WINDOW_CORNER_PREFERENCE.DWMWCP_DONOTROUND;

          DwmSetWindowAttribute(hwnd, attr, pref, sizeOf<DWORD>());

          setState(() {
            _isWindowRounded = isRounded;
          });
        },
        secondary: const FaIcon(FontAwesomeIcons.windowMaximize),
      ),
    );
  }
}
