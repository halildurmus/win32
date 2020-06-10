// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/generated/IFileDialog.dart';

const CLSID_FileSaveDialog = '{C0B4E2F3-BA21-4773-8DBA-335EC946EB8B}';
const IID_IFileSaveDialog = '{84bccd23-5fde-4cdb-aea4-af64b83d78ab}';

typedef SetSaveAsItem_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> psi);
typedef SetSaveAsItem_Dart = int Function(Pointer obj, Pointer<COMObject> psi);

typedef SetProperties_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pStore);
typedef SetProperties_Dart = int Function(
    Pointer obj, Pointer<COMObject> pStore);

typedef SetCollectedProperties_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pList, Int32 fAppendDefault);
typedef SetCollectedProperties_Dart = int Function(
    Pointer obj, Pointer<COMObject> pList, int fAppendDefault);

typedef GetProperties_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppStore);
typedef GetProperties_Dart = int Function(Pointer obj, Pointer<IntPtr> ppStore);

typedef ApplyProperties_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> psi,
    Pointer<COMObject> pStore,
    IntPtr hwnd,
    Pointer<COMObject> pSink);
typedef ApplyProperties_Dart = int Function(Pointer obj, Pointer<COMObject> psi,
    Pointer<COMObject> pStore, int hwnd, Pointer<COMObject> pSink);

class IFileSaveDialog extends IFileDialog {
  // vtable begins at 27, ends at 31

  @override
  Pointer<COMObject> ptr;

  IFileSaveDialog(this.ptr) : super(ptr);

  int SetSaveAsItem(Pointer<COMObject> psi) =>
      Pointer<NativeFunction<SetSaveAsItem_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(27).value)
          .asFunction<SetSaveAsItem_Dart>()(ptr.ref.lpVtbl, psi);

  int SetProperties(Pointer<COMObject> pStore) =>
      Pointer<NativeFunction<SetProperties_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(28).value)
          .asFunction<SetProperties_Dart>()(ptr.ref.lpVtbl, pStore);

  int SetCollectedProperties(Pointer<COMObject> pList, int fAppendDefault) =>
      Pointer<NativeFunction<SetCollectedProperties_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(29).value)
              .asFunction<SetCollectedProperties_Dart>()(
          ptr.ref.lpVtbl, pList, fAppendDefault);

  int GetProperties(Pointer<IntPtr> ppStore) =>
      Pointer<NativeFunction<GetProperties_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(30).value)
          .asFunction<GetProperties_Dart>()(ptr.ref.lpVtbl, ppStore);

  int ApplyProperties(Pointer<COMObject> psi, Pointer<COMObject> pStore,
          int hwnd, Pointer<COMObject> pSink) =>
      Pointer<NativeFunction<ApplyProperties_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(31).value)
              .asFunction<ApplyProperties_Dart>()(
          ptr.ref.lpVtbl, psi, pStore, hwnd, pSink);
}

class FileSaveDialog extends IFileSaveDialog {
  @override
  Pointer<COMObject> ptr;

  factory FileSaveDialog.createInstance() {
    final ptr = COMObject.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_FileSaveDialog).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_IFileSaveDialog).addressOf,
        ptr.cast());

    if (!SUCCEEDED(hr)) throw COMException(hr);
    return FileSaveDialog(ptr);
  }

  FileSaveDialog(this.ptr) : super(ptr);
}
