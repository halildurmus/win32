import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'place.dart';

/// Resolves each entry in [customPlaces] to an [IShellItem] and registers it
/// with [dialog] using [IFileDialog.addPlace].
///
/// Must be called from within an [Arena] scope so all intermediate COM
/// objects ([IKnownFolderManager], [IKnownFolder], [IShellItem]) are owned
/// by [arena] and released when it exits. Nothing escapes the call.
void applyCustomPlaces(
  IFileDialog dialog,
  List<CustomPlace> customPlaces,
  Arena arena,
) {
  if (customPlaces.isEmpty) return;

  final knownFolderManager = arena.com<IKnownFolderManager>(KnownFolderManager);

  for (final place in customPlaces) {
    final knownFolder = knownFolderManager.getFolder(
      place.folder.toNative(allocator: arena),
    );
    if (knownFolder == null) continue;
    arena.adopt(knownFolder);

    final shellItem = arena.adopt(knownFolder.getShellItem<IShellItem>(0));
    dialog.addPlace(shellItem, place.place == .bottom ? FDAP_BOTTOM : FDAP_TOP);
  }
}

const _flutterWindowClassName = 'FLUTTER_RUNNER_WIN32_WINDOW';

HWND _getWindowHandle() => using(
  (arena) => FindWindow(arena.pcwstr(_flutterWindowClassName), null).value,
);

HWND getEffectiveWindowHandle(Pointer hWndOwner) {
  if (hWndOwner.isNotNull) return .new(hWndOwner);
  return _getWindowHandle();
}
