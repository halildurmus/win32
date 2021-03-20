// IFileDialog2.dart

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

import 'IFileDialog.dart';

/// @nodoc
const IID_IFileDialog2 = '{61744FC7-85B5-4791-A9B0-272276309B13}';

typedef _SetCancelButtonLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszLabel);
typedef _SetCancelButtonLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszLabel);

typedef _SetNavigationRoot_Native = Int32 Function(Pointer obj, Pointer psi);
typedef _SetNavigationRoot_Dart = int Function(Pointer obj, Pointer psi);

/// {@category Interface}
/// {@category com}
class IFileDialog2 extends IFileDialog {
  // vtable begins at 27, ends at 28

  IFileDialog2(Pointer<COMObject> ptr) : super(ptr);

  int SetCancelButtonLabel(Pointer<Utf16> pszLabel) =>
      Pointer<NativeFunction<_SetCancelButtonLabel_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(27).value)
          .asFunction<_SetCancelButtonLabel_Dart>()(ptr.ref.lpVtbl, pszLabel);

  int SetNavigationRoot(Pointer psi) =>
      Pointer<NativeFunction<_SetNavigationRoot_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(28).value)
          .asFunction<_SetNavigationRoot_Dart>()(ptr.ref.lpVtbl, psi);
}
