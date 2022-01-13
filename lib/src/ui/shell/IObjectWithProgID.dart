// IObjectWithProgID.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IObjectWithProgID = '{71E806FB-8DEE-46FC-BF8C-7748A8A1AE13}';

/// {@category Interface}
/// {@category com}
class IObjectWithProgID extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IObjectWithProgID(Pointer<COMObject> ptr) : super(ptr);

  int SetProgID(
    Pointer<Utf16> pszProgID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszProgID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszProgID,
          )>()(
        ptr.ref.lpVtbl,
        pszProgID,
      );

  int GetProgID(
    Pointer<Pointer<Utf16>> ppszProgID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszProgID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszProgID,
          )>()(
        ptr.ref.lpVtbl,
        ppszProgID,
      );
}
