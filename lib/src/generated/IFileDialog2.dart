// IFileDialog2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.dart';
import '../ole32.dart';
import '../com/combase.dart';

import 'IFileDialog.dart';

const IID_IFileDialog2 = '{61744fc7-85b5-4791-a9b0-272276309b13}';

typedef _SetCancelButtonLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszLabel);
typedef _SetCancelButtonLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszLabel);

typedef _SetNavigationRoot_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> psi);
typedef _SetNavigationRoot_Dart = int Function(
    Pointer obj, Pointer<COMObject> psi);

class IFileDialog2 extends IFileDialog {
  // vtable begins at 27, ends at 28

  @override
  Pointer<COMObject> ptr;

  IFileDialog2(this.ptr) : super(ptr);

  int SetCancelButtonLabel(Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<_SetCancelButtonLabel_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(27).value)
          .asFunction<_SetCancelButtonLabel_Dart>()(ptr.ref.lpVtbl, pszLabel);

  int SetNavigationRoot(Pointer<COMObject> psi) =>
      Pointer<NativeFunction<_SetNavigationRoot_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(28).value)
          .asFunction<_SetNavigationRoot_Dart>()(ptr.ref.lpVtbl, psi);
}
