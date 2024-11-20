// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:win32/win32.dart';

import 'notepad.dart';

// Resource IDs
const IDC_FILENAME = 1000;
const IDC_STATIC = 1001;

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
  static int loadMenus() {
    final hMenu = CreateMenu();

    var hMenuPopup = CreateMenu();
    final newItem = w('&New\tCtrl+N');
    AppendMenu(hMenuPopup, MF_STRING, IDM_FILE_NEW, newItem.ptr);
    final openItem = w('&Open...\tCtrl+O');
    AppendMenu(hMenuPopup, MF_STRING, IDM_FILE_OPEN, openItem.ptr);
    final saveItem = w('&Save\tCtrl+S');
    AppendMenu(hMenuPopup, MF_STRING, IDM_FILE_SAVE, saveItem.ptr);
    final saveAsItem = w('Save &As...');
    AppendMenu(hMenuPopup, MF_STRING, IDM_FILE_SAVE_AS, saveAsItem.ptr);
    AppendMenu(hMenuPopup, MF_SEPARATOR, 0, null);
    final printItem = w('&Print\tCtrl+P');
    AppendMenu(hMenuPopup, MF_STRING, IDM_FILE_PRINT, printItem.ptr);
    AppendMenu(hMenuPopup, MF_SEPARATOR, 0, null);
    final exitItem = w('E&xit');
    AppendMenu(hMenuPopup, MF_STRING, IDM_APP_EXIT, exitItem.ptr);
    final fileItem = w('&File');
    AppendMenu(hMenu, MF_POPUP, hMenuPopup, fileItem.ptr);

    hMenuPopup = CreateMenu();
    final undoItem = w('&Undo\tCtrl+Z');
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_UNDO, undoItem.ptr);
    AppendMenu(hMenuPopup, MF_SEPARATOR, 0, null);
    final cutItem = w('Cu&t\tCtrl+X');
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_CUT, cutItem.ptr);
    final copyItem = w('&Copy\tCtrl+C');
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_COPY, copyItem.ptr);
    final pasteItem = w('&Paste\tCtrl+V');
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_PASTE, pasteItem.ptr);
    final clearItem = w('De&lete\tDel');
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_CLEAR, clearItem.ptr);
    AppendMenu(hMenuPopup, MF_SEPARATOR, 0, null);
    final selectAllItem = w('&Select All\tCtrl+A');
    AppendMenu(hMenuPopup, MF_STRING, IDM_EDIT_SELECT_ALL, selectAllItem.ptr);
    final editItem = w('&Edit');
    AppendMenu(hMenu, MF_POPUP, hMenuPopup, editItem.ptr);

    hMenuPopup = CreateMenu();
    final findItem = w('&Find...\tCtrl+F');
    AppendMenu(hMenuPopup, MF_STRING, IDM_SEARCH_FIND, findItem.ptr);
    final findNextItem = w('Find &Next\tF3');
    AppendMenu(hMenuPopup, MF_STRING, IDM_SEARCH_NEXT, findNextItem.ptr);
    final replaceItem = w('&Replace...\tCtrl+R');
    AppendMenu(hMenuPopup, MF_STRING, IDM_SEARCH_REPLACE, replaceItem.ptr);
    final searchItem = w('&Search');
    AppendMenu(hMenu, MF_POPUP, hMenuPopup, searchItem.ptr);

    hMenuPopup = CreateMenu();
    final fontItem = w('&Font...');
    AppendMenu(hMenuPopup, MF_STRING, IDM_FORMAT_FONT, fontItem.ptr);
    final formatItem = w('F&ormat');
    AppendMenu(hMenu, MF_POPUP, hMenuPopup, formatItem.ptr);

    hMenuPopup = CreateMenu();
    final helpItem = w('&Help');
    AppendMenu(hMenuPopup, MF_STRING, IDM_HELP, helpItem.ptr);
    final aboutItem = w('&About $appName...');
    AppendMenu(hMenuPopup, MF_STRING, IDM_APP_ABOUT, aboutItem.ptr);
    AppendMenu(hMenu, MF_POPUP, hMenuPopup, helpItem.ptr);

    return hMenu;
  }

  static SmartPointer<DLGTEMPLATE> loadAboutBox() {
    final pDialog = loggingCalloc<Uint16>(1024);
    var idx = 0;

    idx += pDialog.cast<DLGTEMPLATE>().setDialog(
      style: DS_MODALFRAME | WS_POPUP | DS_SETFONT,
      x: 32,
      y: 32,
      cx: 180,
      cy: 100,
      cdit: 5,
      fontName: 'MS Sans Serif',
      fontSize: 8,
    );

    idx += (pDialog + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
      style: WS_CHILD | WS_VISIBLE | BS_DEFPUSHBUTTON | WS_TABSTOP,
      x: 66,
      y: 80,
      cx: 50,
      cy: 14,
      id: IDOK,
      windowSystemClass: 0x0080,
      text: 'OK',
    );

    idx += (pDialog + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
      style: WS_CHILD | WS_VISIBLE | SS_ICON,
      x: 7,
      y: 7,
      cx: 20,
      cy: 20,
      windowSystemClass: 0x0082,
      text: 'POPPAD',
      id: IDC_STATIC,
    );

    idx += (pDialog + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
      style: WS_CHILD | WS_VISIBLE | SS_CENTER | WS_GROUP,
      x: 40,
      y: 12,
      cx: 100,
      cy: 8,
      windowSystemClass: 0x0082,
      text: 'DartNote',
      id: IDC_STATIC,
    );

    idx += (pDialog + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
      style: WS_CHILD | WS_VISIBLE | SS_CENTER | WS_GROUP,
      x: 7,
      y: 40,
      cx: 166,
      cy: 8,
      windowSystemClass: 0x0082,
      text: 'Dart-based Notepad for Windows',
      id: IDC_STATIC,
    );

    idx += (pDialog + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
      style: WS_CHILD | WS_VISIBLE | SS_CENTER | WS_GROUP,
      x: 27,
      y: 52,
      cx: 126,
      cy: 30,
      windowSystemClass: 0x0082,
      text:
          'Copyright (C) 1998 Charles Petzold, '
          '(C) 2020 Tim Sneath, and '
          '(C) 2024 Halil Durmus',
      id: IDC_STATIC,
    );

    return SmartPointer(pDialog.cast(), sizeInBytes: 1024 * sizeOf<Uint16>());
  }

  static int loadAccelerators() {
    final pTable = loggingCalloc<ACCEL>(18);

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
      ..key =
          3 // Ctrl+C
      ..cmd = IDM_EDIT_COPY;

    pTable[8]
      ..fVirt = FNOINVERT
      ..key =
          6 // Ctrl+F
      ..cmd = IDM_SEARCH_FIND;

    pTable[9]
      ..fVirt = FNOINVERT
      ..key =
          14 // Ctrl+N
      ..cmd = IDM_FILE_NEW;

    pTable[10]
      ..fVirt = FNOINVERT
      ..key =
          15 // Ctrl+O
      ..cmd = IDM_FILE_OPEN;

    pTable[11]
      ..fVirt = FNOINVERT
      ..key =
          16 // Ctrl+P
      ..cmd = IDM_FILE_PRINT;

    pTable[12]
      ..fVirt = FNOINVERT
      ..key =
          18 // Ctrl+R
      ..cmd = IDM_SEARCH_REPLACE;

    pTable[13]
      ..fVirt = FNOINVERT
      ..key =
          19 // Ctrl+S
      ..cmd = IDM_FILE_SAVE;

    pTable[14]
      ..fVirt = FNOINVERT
      ..key =
          22 // Ctrl+V
      ..cmd = IDM_EDIT_PASTE;

    pTable[15]
      ..fVirt = FNOINVERT
      ..key =
          24 // Ctrl+X
      ..cmd = IDM_EDIT_CUT;

    pTable[16]
      ..fVirt = FNOINVERT
      ..key =
          26 // Ctrl+Z
      ..cmd = IDM_EDIT_UNDO;

    pTable[17]
      ..fVirt = FNOINVERT
      ..key =
          1 // Ctrl+A
      ..cmd = IDM_EDIT_SELECT_ALL;

    final result = CreateAcceleratorTable(pTable, 18);
    if (result == NULL) {
      print('Error loading accelerators: ${GetLastError()}');
    }

    free(pTable);
    return result;
  }
}
