// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/generated/IUnknown.dart';

const IID_IFileDialogCustomize = '{e6fdd21a-163f-4975-9c8c-a69f1ba37034}';

typedef EnableOpenDropDown_Native = Int32 Function(Pointer obj, Uint32 dwIDCtl);
typedef EnableOpenDropDown_Dart = int Function(Pointer obj, int dwIDCtl);

typedef AddMenu_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszLabel);
typedef AddMenu_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszLabel);

typedef AddPushButton_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszLabel);
typedef AddPushButton_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszLabel);

typedef AddComboBox_Native = Int32 Function(Pointer obj, Uint32 dwIDCtl);
typedef AddComboBox_Dart = int Function(Pointer obj, int dwIDCtl);

typedef AddRadioButtonList_Native = Int32 Function(Pointer obj, Uint32 dwIDCtl);
typedef AddRadioButtonList_Dart = int Function(Pointer obj, int dwIDCtl);

typedef AddCheckButton_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszLabel, Int32 bChecked);
typedef AddCheckButton_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszLabel, int bChecked);

typedef AddEditBox_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszText);
typedef AddEditBox_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszText);

typedef AddSeparator_Native = Int32 Function(Pointer obj, Uint32 dwIDCtl);
typedef AddSeparator_Dart = int Function(Pointer obj, int dwIDCtl);

typedef AddText_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszText);
typedef AddText_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszText);

typedef SetControlLabel_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszLabel);
typedef SetControlLabel_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszLabel);

typedef GetControlState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Int32> pdwState);
typedef GetControlState_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Int32> pdwState);

typedef SetControlState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Int32 dwState);
typedef SetControlState_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwState);

typedef GetEditBoxText_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<IntPtr> ppszText);
typedef GetEditBoxText_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<IntPtr> ppszText);

typedef SetEditBoxText_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszText);
typedef SetEditBoxText_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszText);

typedef GetCheckButtonState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Int32> pbChecked);
typedef GetCheckButtonState_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Int32> pbChecked);

typedef SetCheckButtonState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Int32 bChecked);
typedef SetCheckButtonState_Dart = int Function(
    Pointer obj, int dwIDCtl, int bChecked);

typedef AddControlItem_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem, Pointer<Utf16> pszLabel);
typedef AddControlItem_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel);

typedef RemoveControlItem_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem);
typedef RemoveControlItem_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem);

typedef RemoveAllControlItems_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl);
typedef RemoveAllControlItems_Dart = int Function(Pointer obj, int dwIDCtl);

typedef GetControlItemState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem, Pointer<Int32> pdwState);
typedef GetControlItemState_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem, Pointer<Int32> pdwState);

typedef SetControlItemState_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem, Int32 dwState);
typedef SetControlItemState_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem, int dwState);

typedef GetSelectedControlItem_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Uint32> pdwIDItem);
typedef GetSelectedControlItem_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Uint32> pdwIDItem);

typedef SetSelectedControlItem_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem);
typedef SetSelectedControlItem_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem);

typedef StartVisualGroup_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Pointer<Utf16> pszLabel);
typedef StartVisualGroup_Dart = int Function(
    Pointer obj, int dwIDCtl, Pointer<Utf16> pszLabel);

typedef EndVisualGroup_Native = Int32 Function(Pointer obj);
typedef EndVisualGroup_Dart = int Function(Pointer obj);

typedef MakeProminent_Native = Int32 Function(Pointer obj, Uint32 dwIDCtl);
typedef MakeProminent_Dart = int Function(Pointer obj, int dwIDCtl);

typedef SetControlItemText_Native = Int32 Function(
    Pointer obj, Uint32 dwIDCtl, Uint32 dwIDItem, Pointer<Utf16> pszLabel);
typedef SetControlItemText_Dart = int Function(
    Pointer obj, int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel);

class IFileDialogCustomize extends IUnknown {
  // vtable begins at 3, ends at 29

  @override
  Pointer<COMObject> ptr;

  IFileDialogCustomize(this.ptr) : super(ptr);

  int EnableOpenDropDown(int dwIDCtl) =>
      Pointer<NativeFunction<EnableOpenDropDown_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<EnableOpenDropDown_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddMenu(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<AddMenu_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<AddMenu_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int AddPushButton(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<AddPushButton_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<AddPushButton_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int AddComboBox(int dwIDCtl) =>
      Pointer<NativeFunction<AddComboBox_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<AddComboBox_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddRadioButtonList(int dwIDCtl) =>
      Pointer<NativeFunction<AddRadioButtonList_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<AddRadioButtonList_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddCheckButton(int dwIDCtl, Pointer<Utf16> pszLabel, int bChecked) =>
      Pointer<NativeFunction<AddCheckButton_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<AddCheckButton_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pszLabel, bChecked);

  int AddEditBox(int dwIDCtl, Pointer<Utf16> pszText) =>
      Pointer<NativeFunction<AddEditBox_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<AddEditBox_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszText);

  int AddSeparator(int dwIDCtl) =>
      Pointer<NativeFunction<AddSeparator_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<AddSeparator_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int AddText(int dwIDCtl, Pointer<Utf16> pszText) =>
      Pointer<NativeFunction<AddText_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<AddText_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszText);

  int SetControlLabel(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<SetControlLabel_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(12).value)
              .asFunction<SetControlLabel_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int GetControlState(int dwIDCtl, Pointer<Int32> pdwState) =>
      Pointer<NativeFunction<GetControlState_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<GetControlState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pdwState);

  int SetControlState(int dwIDCtl, int dwState) =>
      Pointer<NativeFunction<SetControlState_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<SetControlState_Dart>()(ptr.ref.lpVtbl, dwIDCtl, dwState);

  int GetEditBoxText(int dwIDCtl, Pointer<IntPtr> ppszText) =>
      Pointer<NativeFunction<GetEditBoxText_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<GetEditBoxText_Dart>()(ptr.ref.lpVtbl, dwIDCtl, ppszText);

  int SetEditBoxText(int dwIDCtl, Pointer<Utf16> pszText) =>
      Pointer<NativeFunction<SetEditBoxText_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<SetEditBoxText_Dart>()(ptr.ref.lpVtbl, dwIDCtl, pszText);

  int GetCheckButtonState(int dwIDCtl, Pointer<Int32> pbChecked) =>
      Pointer<NativeFunction<GetCheckButtonState_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(17).value)
              .asFunction<GetCheckButtonState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pbChecked);

  int SetCheckButtonState(int dwIDCtl, int bChecked) =>
      Pointer<NativeFunction<SetCheckButtonState_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(18).value)
              .asFunction<SetCheckButtonState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, bChecked);

  int AddControlItem(int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<AddControlItem_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(19).value)
              .asFunction<AddControlItem_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pszLabel);

  int RemoveControlItem(int dwIDCtl, int dwIDItem) =>
      Pointer<NativeFunction<RemoveControlItem_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(20).value)
              .asFunction<RemoveControlItem_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem);

  int RemoveAllControlItems(int dwIDCtl) =>
      Pointer<NativeFunction<RemoveAllControlItems_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(21).value)
          .asFunction<RemoveAllControlItems_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int GetControlItemState(int dwIDCtl, int dwIDItem, Pointer<Int32> pdwState) =>
      Pointer<NativeFunction<GetControlItemState_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(22).value)
              .asFunction<GetControlItemState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pdwState);

  int SetControlItemState(int dwIDCtl, int dwIDItem, int dwState) =>
      Pointer<NativeFunction<SetControlItemState_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(23).value)
              .asFunction<SetControlItemState_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, dwState);

  int GetSelectedControlItem(int dwIDCtl, Pointer<Uint32> pdwIDItem) =>
      Pointer<NativeFunction<GetSelectedControlItem_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(24).value)
              .asFunction<GetSelectedControlItem_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pdwIDItem);

  int SetSelectedControlItem(int dwIDCtl, int dwIDItem) =>
      Pointer<NativeFunction<SetSelectedControlItem_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(25).value)
              .asFunction<SetSelectedControlItem_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem);

  int StartVisualGroup(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<StartVisualGroup_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(26).value)
              .asFunction<StartVisualGroup_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int EndVisualGroup() =>
      Pointer<NativeFunction<EndVisualGroup_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(27).value)
          .asFunction<EndVisualGroup_Dart>()(ptr.ref.lpVtbl);

  int MakeProminent(int dwIDCtl) =>
      Pointer<NativeFunction<MakeProminent_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(28).value)
          .asFunction<MakeProminent_Dart>()(ptr.ref.lpVtbl, dwIDCtl);

  int SetControlItemText(int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<SetControlItemText_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(29).value)
              .asFunction<SetControlItemText_Dart>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pszLabel);
}
