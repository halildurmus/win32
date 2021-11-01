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
    Pointer obj, Uint32 dwIDCtl, Pointer<Int32> pdwState);
typedef _GetControlState_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Int32> pdwState);

typedef _SetControlState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Int32 dwState);
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
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem, Pointer<Int32> pdwState);
typedef _GetControlItemState_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem, Pointer<Int32> pdwState);

typedef _SetControlItemState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem, Int32 dwState);
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

  int EnableOpenDropDown(int dwIDCtl) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_EnableOpenDropDown_Native>>>()
      .value
      .asFunction<_EnableOpenDropDown_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddMenu(int dwIDCtl, Pointer<Utf16> pszLabel) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_AddMenu_Native>>>()
      .value
      .asFunction<_AddMenu_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int AddPushButton(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<Pointer<NativeFunction<_AddPushButton_Native>>>()
          .value
          .asFunction<_AddPushButton_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int AddComboBox(int dwIDCtl) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_AddComboBox_Native>>>()
      .value
      .asFunction<_AddComboBox_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddRadioButtonList(int dwIDCtl) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_AddRadioButtonList_Native>>>()
      .value
      .asFunction<_AddRadioButtonList_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddCheckButton(int dwIDCtl, Pointer<Utf16> pszLabel, int bChecked) =>
      ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_AddCheckButton_Native>>>()
              .value
              .asFunction<_AddCheckButton_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pszLabel, bChecked);

  int AddEditBox(int dwIDCtl, Pointer<Utf16> pszText) => ptr.ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_AddEditBox_Native>>>()
      .value
      .asFunction<_AddEditBox_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszText);

  int AddSeparator(int dwIDCtl) => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_AddSeparator_Native>>>()
      .value
      .asFunction<_AddSeparator_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddText(int dwIDCtl, Pointer<Utf16> pszText) => ptr.ref.lpVtbl.value
      .elementAt(11)
      .cast<Pointer<NativeFunction<_AddText_Native>>>()
      .value
      .asFunction<_AddText_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszText);

  int SetControlLabel(int dwIDCtl, Pointer<Utf16> pszLabel) => ptr
      .ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_SetControlLabel_Native>>>()
      .value
      .asFunction<_SetControlLabel_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int GetControlState(int dwIDCtl, Pointer<Int32> pdwState) => ptr
      .ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_GetControlState_Native>>>()
      .value
      .asFunction<_GetControlState_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pdwState);

  int SetControlState(int dwIDCtl, int dwState) => ptr.ref.lpVtbl.value
      .elementAt(14)
      .cast<Pointer<NativeFunction<_SetControlState_Native>>>()
      .value
      .asFunction<_SetControlState_Dart>()(ptr.ref.lpVtbl, dwIDCtl, dwState);

  int GetEditBoxText(int dwIDCtl, Pointer<Pointer<Uint16>> ppszText) => ptr
      .ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_GetEditBoxText_Native>>>()
      .value
      .asFunction<_GetEditBoxText_Dart>()(ptr.ref.lpVtbl, dwIDCtl, ppszText);

  int SetEditBoxText(int dwIDCtl, Pointer<Utf16> pszText) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<Pointer<NativeFunction<_SetEditBoxText_Native>>>()
          .value
          .asFunction<_SetEditBoxText_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszText);

  int GetCheckButtonState(int dwIDCtl, Pointer<Int32> pbChecked) =>
      ptr.ref.lpVtbl.value
              .elementAt(17)
              .cast<Pointer<NativeFunction<_GetCheckButtonState_Native>>>()
              .value
              .asFunction<_GetCheckButtonState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pbChecked);

  int SetCheckButtonState(int dwIDCtl, int bChecked) => ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<Pointer<NativeFunction<_SetCheckButtonState_Native>>>()
          .value
          .asFunction<_SetCheckButtonState_Dart>()(
      ptr.ref.lpVtbl, dwIDCtl, bChecked);

  int AddControlItem(int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel) =>
      ptr.ref.lpVtbl.value
              .elementAt(19)
              .cast<Pointer<NativeFunction<_AddControlItem_Native>>>()
              .value
              .asFunction<_AddControlItem_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pszLabel);

  int RemoveControlItem(int dwIDCtl, int dwIDItem) => ptr.ref.lpVtbl.value
      .elementAt(20)
      .cast<Pointer<NativeFunction<_RemoveControlItem_Native>>>()
      .value
      .asFunction<_RemoveControlItem_Dart>()(ptr.ref.lpVtbl, dwIDCtl, dwIDItem);

  int RemoveAllControlItems(int dwIDCtl) => ptr.ref.lpVtbl.value
      .elementAt(21)
      .cast<Pointer<NativeFunction<_RemoveAllControlItems_Native>>>()
      .value
      .asFunction<_RemoveAllControlItems_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int GetControlItemState(int dwIDCtl, int dwIDItem, Pointer<Int32> pdwState) =>
      ptr.ref.lpVtbl.value
              .elementAt(22)
              .cast<Pointer<NativeFunction<_GetControlItemState_Native>>>()
              .value
              .asFunction<_GetControlItemState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pdwState);

  int SetControlItemState(int dwIDCtl, int dwIDItem, int dwState) =>
      ptr.ref.lpVtbl.value
              .elementAt(23)
              .cast<Pointer<NativeFunction<_SetControlItemState_Native>>>()
              .value
              .asFunction<_SetControlItemState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, dwState);

  int GetSelectedControlItem(int dwIDCtl, Pointer<Uint32> pdwIDItem) =>
      ptr.ref.lpVtbl.value
              .elementAt(24)
              .cast<Pointer<NativeFunction<_GetSelectedControlItem_Native>>>()
              .value
              .asFunction<_GetSelectedControlItem_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pdwIDItem);

  int SetSelectedControlItem(int dwIDCtl, int dwIDItem) => ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<Pointer<NativeFunction<_SetSelectedControlItem_Native>>>()
          .value
          .asFunction<_SetSelectedControlItem_Dart>()(
      ptr.ref.lpVtbl, dwIDCtl, dwIDItem);

  int StartVisualGroup(int dwIDCtl, Pointer<Utf16> pszLabel) => ptr
      .ref.lpVtbl.value
      .elementAt(26)
      .cast<Pointer<NativeFunction<_StartVisualGroup_Native>>>()
      .value
      .asFunction<_StartVisualGroup_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int EndVisualGroup() => ptr.ref.lpVtbl.value
      .elementAt(27)
      .cast<Pointer<NativeFunction<_EndVisualGroup_Native>>>()
      .value
      .asFunction<_EndVisualGroup_Dart>()(ptr.ref.lpVtbl);

  int MakeProminent(int dwIDCtl) => ptr.ref.lpVtbl.value
      .elementAt(28)
      .cast<Pointer<NativeFunction<_MakeProminent_Native>>>()
      .value
      .asFunction<_MakeProminent_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int SetControlItemText(int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel) =>
      ptr.ref.lpVtbl.value
              .elementAt(29)
              .cast<Pointer<NativeFunction<_SetControlItemText_Native>>>()
              .value
              .asFunction<_SetControlItemText_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pszLabel);
}
