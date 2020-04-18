import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

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

int LoadMenus() {
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
  AppendMenu(
      hMenuPopup, MF_STRING, IDM_EDIT_SELECT_ALL, TEXT('&Select All\tCtrl+A'));
  AppendMenu(hMenu, MF_POPUP, hMenuPopup, TEXT('&Edit'));

  hMenuPopup = CreateMenu();
  AppendMenu(hMenuPopup, MF_STRING, IDM_SEARCH_FIND, TEXT('&Find...\tCtrl+F'));
  AppendMenu(hMenuPopup, MF_STRING, IDM_SEARCH_NEXT, TEXT('Find &Next\tF3'));
  AppendMenu(
      hMenuPopup, MF_STRING, IDM_SEARCH_REPLACE, TEXT('&Replace...\tCtrl+R'));
  AppendMenu(hMenu, MF_POPUP, hMenuPopup, TEXT('&Search'));

  hMenuPopup = CreateMenu();
  AppendMenu(hMenuPopup, MF_STRING, IDM_FORMAT_FONT, TEXT('&Font...'));
  AppendMenu(hMenu, MF_POPUP, hMenuPopup, TEXT('F&ormat'));

  hMenuPopup = CreateMenu();
  AppendMenu(hMenuPopup, MF_STRING, IDM_HELP, TEXT('&Help'));
  AppendMenu(hMenuPopup, MF_STRING, IDM_APP_ABOUT, TEXT('&About Dartnote...'));
  AppendMenu(hMenu, MF_POPUP, hMenuPopup, TEXT('&Help'));

  return hMenu;
}

int LoadAccelerators() {
  final accel = ACCEL.allocate();
  accel.fVirt = FNOINVERT;
  accel.key = 'N'.codeUnitAt(0);
  accel.cmd = IDM_FILE_NEW;

  return CreateAcceleratorTable(accel.addressOf, 1);
}
