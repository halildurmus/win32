// resources.dart

// Global resource identifiers, menus and accelerators

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'notepad.dart';

// Resource IDs
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

// wParam for edit control messages
const EDITID = 1;

class NotepadResources {
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
        hMenuPopup, MF_STRING, IDM_APP_ABOUT, TEXT('&About ${APP_NAME}...'));
    AppendMenu(hMenu, MF_POPUP, hMenuPopup, TEXT('&Help'));

    return hMenu;
  }

  static int LoadAccelerators() {
    final pTable = allocate<ACCEL>(count: 17);

    pTable[0]
      ..fVirt = FVIRTKEY | FALT | FNOINVERT
      ..key = VK_BACK
      ..cmd = IDM_EDIT_UNDO;

    pTable[1]
      ..fVirt = FVIRTKEY | FNOINVERT
      ..key = VK_DELETE
      ..cmd = IDM_EDIT_CLEAR;

    pTable[2]
      ..fVirt = FVIRTKEY | FSHIFT | FNOINVERT
      ..key = VK_DELETE
      ..cmd = IDM_EDIT_CUT;

    pTable[3]
      ..fVirt = FVIRTKEY | FNOINVERT
      ..key = VK_F1
      ..cmd = IDM_HELP;

    pTable[4]
      ..fVirt = FVIRTKEY | FNOINVERT
      ..key = VK_F3
      ..cmd = IDM_SEARCH_NEXT;

    pTable[5]
      ..fVirt = FVIRTKEY | FCONTROL | FNOINVERT
      ..key = VK_INSERT
      ..cmd = IDM_EDIT_COPY;

    pTable[6]
      ..fVirt = FVIRTKEY | FSHIFT | FNOINVERT
      ..key = VK_INSERT
      ..cmd = IDM_EDIT_PASTE;

    pTable[7]
      ..fVirt = FNOINVERT
      ..key = 3 // Ctrl+C
      ..cmd = IDM_EDIT_COPY;

    pTable[8]
      ..fVirt = FNOINVERT
      ..key = 6 // Ctrl+F
      ..cmd = IDM_SEARCH_FIND;

    pTable[9]
      ..fVirt = FNOINVERT
      ..key = 14 // Ctrl+N
      ..cmd = IDM_FILE_NEW;

    pTable[10]
      ..fVirt = FNOINVERT
      ..key = 15 // Ctrl+O
      ..cmd = IDM_FILE_OPEN;

    pTable[11]
      ..fVirt = FNOINVERT
      ..key = 16 // Ctrl+P
      ..cmd = IDM_FILE_PRINT;

    pTable[12]
      ..fVirt = FNOINVERT
      ..key = 18 // Ctrl+R
      ..cmd = IDM_SEARCH_REPLACE;

    pTable[13]
      ..fVirt = FNOINVERT
      ..key = 19 // Ctrl+S
      ..cmd = IDM_FILE_SAVE;

    pTable[14]
      ..fVirt = FNOINVERT
      ..key = 22 // Ctrl+V
      ..cmd = IDM_EDIT_PASTE;

    pTable[15]
      ..fVirt = FNOINVERT
      ..key = 24 // Ctrl+X
      ..cmd = IDM_EDIT_CUT;

    pTable[16]
      ..fVirt = FNOINVERT
      ..key = 26 // Ctrl+Z
      ..cmd = IDM_EDIT_UNDO;

    final result = CreateAcceleratorTable(pTable, 17);
    if (result == NULL) {
      print('Error loading accelerators: ${GetLastError()}');
    }
    return result;
  }
}
