// ISecurityInformation3.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/authorization/ui/structs.g.dart';

/// @nodoc
const IID_ISecurityInformation3 = '{E2CDC9CC-31BD-4F8F-8C8B-B641AF516A1A}';

/// {@category Interface}
/// {@category com}
class ISecurityInformation3 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISecurityInformation3(Pointer<COMObject> ptr) : super(ptr);

  int GetFullResourceName(
    Pointer<Pointer<Utf16>> ppszResourceName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszResourceName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszResourceName,
          )>()(
        ptr.ref.lpVtbl,
        ppszResourceName,
      );

  int OpenElevatedEditor(
    int hWnd,
    int uPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            Int32 uPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            int uPage,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        uPage,
      );
}
