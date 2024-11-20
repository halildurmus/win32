// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

const IDC_STATIC = 1001;
const IDC_APP_ICON = 1002;

const IDM_FILE_NEW = 40001;
const IDM_FILE_OPEN = 40002;
const IDM_FILE_SAVE = 40003;
const IDM_FILE_SAVE_AS = 40004;
const IDM_FILE_PRINT = 40005;
const IDM_FILE_EXIT = 40006;

const IDM_EDIT_UNDO = 40007;
const IDM_EDIT_CUT = 40008;
const IDM_EDIT_COPY = 40009;
const IDM_EDIT_PASTE = 40010;
const IDM_EDIT_DELETE = 40011;
const IDM_EDIT_SELECT_ALL = 40012;
const IDM_EDIT_FIND = 40013;
const IDM_EDIT_NEXT = 40014;
const IDM_EDIT_PREVIOUS = 40015;
const IDM_EDIT_REPLACE = 40016;

const IDM_FORMAT_FONT = 40017;

const IDM_HELP_VIEW_HELP = 40018;
const IDM_HELP_ABOUT = 40019;

/// Declarative description of a menu item.
class MenuItemSpec {
  const MenuItemSpec(this.label, this.id)
    : assert(label != null || id == null, 'Menu item must havea label and id.');

  const MenuItemSpec.separator() : label = null, id = null;

  final String? label;
  final int? id;

  bool get isSeparator => label == null && id == null;
}

/// Declarative description of an accelerator.
class AccelSpec {
  const AccelSpec({required this.flags, required this.key, required this.cmd});

  final ACCEL_VIRT_FLAGS flags;
  final int key;
  final int cmd;
}

abstract class AppResources {
  static const appName = 'DartNote';

  static HMENU createMainMenu() => using((arena) {
    final Win32Result(value: hMenu, :error) = CreateMenu();
    if (hMenu.isNull) throw WindowsException(error.toHRESULT());

    final fileMenu = _buildMenu(arena, const [
      MenuItemSpec('&New\tCtrl+N', IDM_FILE_NEW),
      MenuItemSpec('&Open...\tCtrl+O', IDM_FILE_OPEN),
      MenuItemSpec('&Save\tCtrl+S', IDM_FILE_SAVE),
      MenuItemSpec('Save &As...\tCtrl+Shift+S', IDM_FILE_SAVE_AS),
      MenuItemSpec.separator(),
      MenuItemSpec('&Print...\tCtrl+P', IDM_FILE_PRINT),
      MenuItemSpec.separator(),
      MenuItemSpec('E&xit', IDM_FILE_EXIT),
    ]);

    final editMenu = _buildMenu(arena, const [
      MenuItemSpec('&Undo\tCtrl+Z', IDM_EDIT_UNDO),
      MenuItemSpec.separator(),
      MenuItemSpec('Cu&t\tCtrl+X', IDM_EDIT_CUT),
      MenuItemSpec('&Copy\tCtrl+C', IDM_EDIT_COPY),
      MenuItemSpec('&Paste\tCtrl+V', IDM_EDIT_PASTE),
      MenuItemSpec('De&lete\tDel', IDM_EDIT_DELETE),
      MenuItemSpec.separator(),
      MenuItemSpec('&Find...\tCtrl+F', IDM_EDIT_FIND),
      MenuItemSpec('Find &Next\tF3', IDM_EDIT_NEXT),
      MenuItemSpec('Find &Previous\tShift+F3', IDM_EDIT_PREVIOUS),
      MenuItemSpec('&Replace...\tCtrl+H', IDM_EDIT_REPLACE),
      MenuItemSpec.separator(),
      MenuItemSpec('Select &All\tCtrl+A', IDM_EDIT_SELECT_ALL),
    ]);

    final formatMenu = _buildMenu(arena, const [
      MenuItemSpec('&Font...', IDM_FORMAT_FONT),
    ]);

    final helpMenu = _buildMenu(arena, const [
      MenuItemSpec('View &Help\tF1', IDM_HELP_VIEW_HELP),
      MenuItemSpec.separator(),
      MenuItemSpec('&About $appName', IDM_HELP_ABOUT),
    ]);

    AppendMenu(hMenu, MF_POPUP, fileMenu.address, arena.pcwstr('&File'));
    AppendMenu(hMenu, MF_POPUP, editMenu.address, arena.pcwstr('&Edit'));
    AppendMenu(hMenu, MF_POPUP, formatMenu.address, arena.pcwstr('F&ormat'));
    AppendMenu(hMenu, MF_POPUP, helpMenu.address, arena.pcwstr('&Help'));

    return hMenu;
  });

  static HMENU _buildMenu(Arena arena, List<MenuItemSpec> items) {
    final Win32Result(:value, :error) = CreatePopupMenu();
    if (value.isNull) throw WindowsException(error.toHRESULT());

    for (final item in items) {
      if (item.isSeparator) {
        AppendMenu(value, MF_SEPARATOR, 0, null);
      } else {
        AppendMenu(value, MF_STRING, item.id!, arena.pcwstr(item.label!));
      }
    }

    return value;
  }

  static HACCEL createAccelerators() => using((arena) {
    final specs = <AccelSpec>[
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FNOINVERT,
        key: VK_N,
        cmd: IDM_FILE_NEW,
      ),
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FNOINVERT,
        key: VK_O,
        cmd: IDM_FILE_OPEN,
      ),
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FNOINVERT,
        key: VK_S,
        cmd: IDM_FILE_SAVE,
      ),
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FSHIFT | FNOINVERT,
        key: VK_S,
        cmd: IDM_FILE_SAVE_AS,
      ),
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FNOINVERT,
        key: VK_P,
        cmd: IDM_FILE_PRINT,
      ),
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FNOINVERT,
        key: VK_Z,
        cmd: IDM_EDIT_UNDO,
      ),
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FNOINVERT,
        key: VK_X,
        cmd: IDM_EDIT_CUT,
      ),
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FNOINVERT,
        key: VK_C,
        cmd: IDM_EDIT_COPY,
      ),
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FNOINVERT,
        key: VK_V,
        cmd: IDM_EDIT_PASTE,
      ),
      AccelSpec(
        flags: FVIRTKEY | FNOINVERT,
        key: VK_DELETE,
        cmd: IDM_EDIT_DELETE,
      ),
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FNOINVERT,
        key: VK_F,
        cmd: IDM_EDIT_FIND,
      ),
      AccelSpec(flags: FVIRTKEY | FNOINVERT, key: VK_F3, cmd: IDM_EDIT_NEXT),
      AccelSpec(
        flags: FVIRTKEY | FSHIFT | FNOINVERT,
        key: VK_F3,
        cmd: IDM_EDIT_PREVIOUS,
      ),
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FNOINVERT,
        key: VK_H,
        cmd: IDM_EDIT_REPLACE,
      ),
      AccelSpec(
        flags: FVIRTKEY | FCONTROL | FNOINVERT,
        key: VK_A,
        cmd: IDM_EDIT_SELECT_ALL,
      ),
      AccelSpec(
        flags: FVIRTKEY | FNOINVERT,
        key: VK_F1,
        cmd: IDM_HELP_VIEW_HELP,
      ),
    ];

    final paccel = arena<ACCEL>(specs.length);
    for (var i = 0; i < specs.length; i++) {
      final spec = specs[i];
      paccel[i]
        ..fVirt = spec.flags
        ..key = spec.key
        ..cmd = spec.cmd;
    }

    final Win32Result(value: hAccel, :error) = CreateAcceleratorTable(
      paccel,
      specs.length,
    );
    if (hAccel.isNull) throw WindowsException(error.toHRESULT());
    return hAccel;
  });

  static Pointer<DLGTEMPLATE> loadAboutAppDialog({
    Allocator allocator = adaptiveCalloc,
  }) {
    final pDialog = allocator<Uint16>(1024);
    var idx = 0;

    idx += pDialog.cast<DLGTEMPLATE>().setDialog(
      style: DS_MODALFRAME | WS_POPUP | WS_CAPTION | WS_SYSMENU | DS_SETFONT,
      x: 32,
      y: 32,
      cx: 240,
      cy: 140,
      cdit: 5,
      title: 'About $appName',
      fontName: 'Segoe UI',
      fontSize: 9,
    );

    idx += (pDialog + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
      style: WS_CHILD | WS_VISIBLE | BS_DEFPUSHBUTTON | WS_TABSTOP,
      x: 164,
      y: 104,
      cx: 60,
      cy: 14,
      id: IDOK,
      windowSystemClass: 0x0080,
      text: 'OK',
    );

    idx += (pDialog + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
      style: WS_CHILD | WS_VISIBLE | SS_ICON,
      x: 16,
      y: 16,
      cx: 24,
      cy: 24,
      windowSystemClass: 0x0082,
      id: IDC_APP_ICON,
    );

    idx += (pDialog + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
      style: WS_CHILD | WS_VISIBLE,
      x: 52,
      y: 18,
      cx: 160,
      cy: 14,
      windowSystemClass: 0x0082,
      text: appName,
      id: IDC_STATIC,
    );

    idx += (pDialog + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
      style: WS_CHILD | WS_VISIBLE | SS_LEFT,
      x: 52,
      y: 36,
      cx: 170,
      cy: 20,
      windowSystemClass: 0x0082,
      text: 'Dart-based Notepad for Windows',
      id: IDC_STATIC,
    );

    idx += (pDialog + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
      style: WS_CHILD | WS_VISIBLE | SS_LEFT,
      x: 16,
      y: 72,
      cx: 200,
      cy: 12,
      windowSystemClass: 0x0082,
      text: 'Copyright © 2026 Halil Durmus',
      id: IDC_STATIC,
    );

    return pDialog.cast();
  }
}
