// IFileDialogCustomize.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IFileDialogCustomize = '{E6FDD21A-163F-4975-9C8C-A69F1BA37034}';

typedef _EnableOpenDropDown_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl);
typedef _EnableOpenDropDown_Dart = int Function(Pointer obj, int dwIDCtl);

typedef _AddMenu_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszLabel);
typedef _AddMenu_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszLabel);

typedef _AddPushButton_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszLabel);
typedef _AddPushButton_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszLabel);

typedef _AddComboBox_Native = Int32 Function(Pointer obj, Uint32 dwIDCtl);
typedef _AddComboBox_Dart = int Function(Pointer obj, int dwIDCtl);

typedef _AddRadioButtonList_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl);
typedef _AddRadioButtonList_Dart = int Function(Pointer obj, int dwIDCtl);

typedef _AddCheckButton_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszLabel, Int32 bChecked);
typedef _AddCheckButton_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszLabel, int bChecked);

typedef _AddEditBox_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszText);
typedef _AddEditBox_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszText);

typedef _AddSeparator_Native = Int32 Function(Pointer obj, Uint32 dwIDCtl);
typedef _AddSeparator_Dart = int Function(Pointer obj, int dwIDCtl);

typedef _AddText_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszText);
typedef _AddText_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszText);

typedef _SetControlLabel_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszLabel);
typedef _SetControlLabel_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszLabel);

typedef _GetControlState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Uint32> pdwState);
typedef _GetControlState_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Uint32> pdwState);

typedef _SetControlState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwState);
typedef _SetControlState_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwState);

typedef _GetEditBoxText_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Pointer<Uint16>> ppszText);
typedef _GetEditBoxText_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Pointer<Uint16>> ppszText);

typedef _SetEditBoxText_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszText);
typedef _SetEditBoxText_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszText);

typedef _GetCheckButtonState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Int32> pbChecked);
typedef _GetCheckButtonState_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Int32> pbChecked);

typedef _SetCheckButtonState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Int32 bChecked);
typedef _SetCheckButtonState_Dart = int Function(
    Pointer obj, int dwIDCtl, int bChecked);

typedef _AddControlItem_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem, Pointer<Utf16> pszLabel);
typedef _AddControlItem_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel);

typedef _RemoveControlItem_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem);
typedef _RemoveControlItem_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem);

typedef _RemoveAllControlItems_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl);
typedef _RemoveAllControlItems_Dart = int Function(Pointer obj, int dwIDCtl);

typedef _GetControlItemState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem, Pointer<Uint32> pdwState);
typedef _GetControlItemState_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem, Pointer<Uint32> pdwState);

typedef _SetControlItemState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem, Uint32 dwState);
typedef _SetControlItemState_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem, int dwState);

typedef _GetSelectedControlItem_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Uint32> pdwIDItem);
typedef _GetSelectedControlItem_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Uint32> pdwIDItem);

typedef _SetSelectedControlItem_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem);
typedef _SetSelectedControlItem_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem);

typedef _StartVisualGroup_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszLabel);
typedef _StartVisualGroup_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszLabel);

typedef _EndVisualGroup_Native = Int32 Function(Pointer obj);
typedef _EndVisualGroup_Dart = int Function(Pointer obj);

typedef _MakeProminent_Native = Int32 Function(Pointer obj, Uint32 dwIDCtl);
typedef _MakeProminent_Dart = int Function(Pointer obj, int dwIDCtl);

typedef _SetControlItemText_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem, Pointer<Utf16> pszLabel);
typedef _SetControlItemText_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel);

/// {@category Interface}
/// {@category com}
class IFileDialogCustomize extends IUnknown {
  // vtable begins at 3, ends at 29

  IFileDialogCustomize(Pointer<COMObject> ptr) : super(ptr);

  int EnableOpenDropDown(int dwIDCtl) =>
      Pointer<NativeFunction<_EnableOpenDropDown_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_EnableOpenDropDown_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddMenu(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<_AddMenu_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_AddMenu_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int AddPushButton(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<_AddPushButton_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_AddPushButton_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int AddComboBox(int dwIDCtl) =>
      Pointer<NativeFunction<_AddComboBox_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_AddComboBox_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddRadioButtonList(int dwIDCtl) =>
      Pointer<NativeFunction<_AddRadioButtonList_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_AddRadioButtonList_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddCheckButton(int dwIDCtl, Pointer<Utf16> pszLabel, int bChecked) =>
      Pointer<NativeFunction<_AddCheckButton_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_AddCheckButton_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pszLabel, bChecked);

  int AddEditBox(int dwIDCtl, Pointer<Utf16> pszText) =>
      Pointer<NativeFunction<_AddEditBox_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_AddEditBox_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszText);

  int AddSeparator(int dwIDCtl) =>
      Pointer<NativeFunction<_AddSeparator_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_AddSeparator_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddText(int dwIDCtl, Pointer<Utf16> pszText) =>
      Pointer<NativeFunction<_AddText_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_AddText_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszText);

  int SetControlLabel(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<_SetControlLabel_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(12).value)
              .asFunction<_SetControlLabel_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int GetControlState(int dwIDCtl, Pointer<Uint32> pdwState) =>
      Pointer<NativeFunction<_GetControlState_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<_GetControlState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pdwState);

  int SetControlState(int dwIDCtl, int dwState) =>
      Pointer<NativeFunction<_SetControlState_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<_SetControlState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwState);

  int GetEditBoxText(int dwIDCtl, Pointer<Pointer<Uint16>> ppszText) =>
      Pointer<NativeFunction<_GetEditBoxText_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<_GetEditBoxText_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, ppszText);

  int SetEditBoxText(int dwIDCtl, Pointer<Utf16> pszText) =>
      Pointer<NativeFunction<_SetEditBoxText_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<_SetEditBoxText_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszText);

  int GetCheckButtonState(int dwIDCtl, Pointer<Int32> pbChecked) =>
      Pointer<NativeFunction<_GetCheckButtonState_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(17).value)
              .asFunction<_GetCheckButtonState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pbChecked);

  int SetCheckButtonState(int dwIDCtl, int bChecked) =>
      Pointer<NativeFunction<_SetCheckButtonState_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(18).value)
              .asFunction<_SetCheckButtonState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, bChecked);

  int AddControlItem(int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<_AddControlItem_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(19).value)
              .asFunction<_AddControlItem_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pszLabel);

  int RemoveControlItem(int dwIDCtl, int dwIDItem) =>
      Pointer<NativeFunction<_RemoveControlItem_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(20).value)
              .asFunction<_RemoveControlItem_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem);

  int RemoveAllControlItems(int dwIDCtl) =>
      Pointer<NativeFunction<_RemoveAllControlItems_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(21).value)
          .asFunction<_RemoveAllControlItems_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int GetControlItemState(
          int dwIDCtl, int dwIDItem, Pointer<Uint32> pdwState) =>
      Pointer<NativeFunction<_GetControlItemState_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(22).value)
              .asFunction<_GetControlItemState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pdwState);

  int SetControlItemState(int dwIDCtl, int dwIDItem, int dwState) =>
      Pointer<NativeFunction<_SetControlItemState_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(23).value)
              .asFunction<_SetControlItemState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, dwState);

  int GetSelectedControlItem(int dwIDCtl, Pointer<Uint32> pdwIDItem) =>
      Pointer<NativeFunction<_GetSelectedControlItem_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(24).value)
              .asFunction<_GetSelectedControlItem_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pdwIDItem);

  int SetSelectedControlItem(int dwIDCtl, int dwIDItem) =>
      Pointer<NativeFunction<_SetSelectedControlItem_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(25).value)
              .asFunction<_SetSelectedControlItem_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem);

  int StartVisualGroup(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<_StartVisualGroup_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(26).value)
              .asFunction<_StartVisualGroup_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int EndVisualGroup() =>
      Pointer<NativeFunction<_EndVisualGroup_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(27).value)
          .asFunction<_EndVisualGroup_Dart>()(ptr.ref.lpVtbl);

  int MakeProminent(int dwIDCtl) =>
      Pointer<NativeFunction<_MakeProminent_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(28).value)
          .asFunction<_MakeProminent_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int SetControlItemText(int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<_SetControlItemText_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(29).value)
              .asFunction<_SetControlItemText_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pszLabel);
}
