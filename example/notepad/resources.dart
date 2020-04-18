import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'notepad.dart';

const IDC_FILENAME = 1000;
const IDM_FILE_NEW = 40001;
const IDM_FILE_OPEN = 40002;
const IDM_FILE_SAVE = 40003;
const IDM_FILE_SAVE_AS = 40004;
const IDM_FILE_PRINT = 40005;
const IDM_APP_EXIT = 40006;
const IDM_EDIT_UNDO = 40007;
const IDM_EDIT_CUT = 40008;
const IDM_EDIT_COPY = 40009;
const IDM_EDIT_PASTE = 40010;
const IDM_EDIT_CLEAR = 40011;
const IDM_EDIT_SELECT_ALL = 40012;
const IDM_SEARCH_FIND = 40013;
const IDM_SEARCH_NEXT = 40014;
const IDM_SEARCH_REPLACE = 40015;
const IDM_FORMAT_FONT = 40016;
const IDM_HELP = 40017;
const IDM_APP_ABOUT = 40018;

class ResourceLibrary {
  static int LoadMenus() {
    final hMenu = CreateMenu();

    var hMenuPopup = CreateMenu();
    AppendMenu(hMenuPopup, MF_STRING, IDM_FILE_NEW, TEXT('&New\tCtrl+N'));
    AppendMenu(hMenuPopup, MF_STRING, IDM_FILE_OPEN, TEXT('&Open...\tCtrl+O'));
    AppendMenu(hMenuPopup, MF_STRING, IDM_FILE_SAVE, TEXT('&Save\tCtrl+S'));
    AppendMenu(hMenuPopup, MF_STRING, IDM_FILE_SAVE_AS, TEXT('Save &As...'));
    AppendMenu(hMenuPopup, MF_SEPARATOR, 0, nullptr);
    AppendMenu(hMenuPopup, MF_STRING, IDM_FILE_PRINT, TEXT('&Print\tCtrl+P'));
    AppendMenu(hMenuPopup, MF_SEPARATOR, 0, nullptr);
    AppendMenu(hMenuPopup, MF_STRING, IDM_APP_EXIT, TEXT('E&xit'));
    AppendMenu(hMenu, MF_POPUP, hMenuPopup, TEXT('&File'));

    hMenuPopup = CreateMenu();
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_UNDO, TEXT('&Undo\tCtrl+Z'));
    AppendMenu(hMenuPopup, MF_SEPARATOR, 0, nullptr);
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_CUT, TEXT('Cu&t\tCtrl+X'));
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_COPY, TEXT('&Copy\tCtrl+C'));
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_PASTE, TEXT('&Paste\tCtrl+V'));
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_CLEAR, TEXT('De&lete\tDel'));
    AppendMenu(hMenuPopup, MF_SEPARATOR, 0, nullptr);
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_SELECT_ALL,
        TEXT('&Select All\tCtrl+A'));
    AppendMenu(hMenu, MF_POPUP, hMenuPopup, TEXT('&Edit'));

    hMenuPopup = CreateMenu();
    AppendMenu(
        hMenuPopup, MF_STRING, IDM_SEARCH_FIND, TEXT('&Find...\tCtrl+F'));
    AppendMenu(hMenuPopup, MF_STRING, IDM_SEARCH_NEXT, TEXT('Find &Next\tF3'));
    AppendMenu(
        hMenuPopup, MF_STRING, IDM_SEARCH_REPLACE, TEXT('&Replace...\tCtrl+R'));
    AppendMenu(hMenu, MF_POPUP, hMenuPopup, TEXT('&Search'));

    hMenuPopup = CreateMenu();
    AppendMenu(hMenuPopup, MF_STRING, IDM_FORMAT_FONT, TEXT('&Font...'));
    AppendMenu(hMenu, MF_POPUP, hMenuPopup, TEXT('F&ormat'));

    hMenuPopup = CreateMenu();
    AppendMenu(hMenuPopup, MF_STRING, IDM_HELP, TEXT('&Help'));
    AppendMenu(
        hMenuPopup, MF_STRING, IDM_APP_ABOUT, TEXT('&About $APP_NAME...'));
    AppendMenu(hMenu, MF_POPUP, hMenuPopup, TEXT('&Help'));

    return hMenu;
  }

  static int AccelToUint64(ACCEL accel) =>
      ((accel.cmd & 0xFFFFFFFF) << 32) +
      ((accel.key & 0xFFFF) << 16) +
      (accel.fVirt & 0xFFFF);

  static int LoadAccelerators() {
    final accel1 = ACCEL.allocate()
      ..fVirt = FVIRTKEY
      ..key = VK_F5
      ..cmd = IDM_FILE_NEW;

    final accel2 = ACCEL.allocate()
      ..fVirt = FVIRTKEY
      ..key = VK_F6
      ..cmd = IDM_FILE_PRINT;

    var pTable = allocate<Uint64>(count: 2);
    final accel1AsUint64 = AccelToUint64(accel1);
    print(accel1AsUint64.toRadixString(16).padLeft(16, '0'));
    print(accel1.addressOf
        .cast<Uint64>()
        .value
        .toRadixString(16)
        .padLeft(16, '0'));

    pTable.elementAt(0).value = AccelToUint64(accel2);
    pTable.elementAt(1).value = AccelToUint64(accel1);

    final result = CreateAcceleratorTable(pTable, 2);
    print('accel: $result');
    return result;
  }
}
