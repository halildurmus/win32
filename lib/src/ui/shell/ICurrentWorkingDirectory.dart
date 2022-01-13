// ICurrentWorkingDirectory.dart

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
const IID_ICurrentWorkingDirectory = '{91956D21-9276-11D1-921A-006097DF5BD4}';

/// {@category Interface}
/// {@category com}
class ICurrentWorkingDirectory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ICurrentWorkingDirectory(Pointer<COMObject> ptr) : super(ptr);

  int GetDirectory(
    Pointer<Utf16> pwzPath,
    int cchSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzPath,
            Uint32 cchSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzPath,
            int cchSize,
          )>()(
        ptr.ref.lpVtbl,
        pwzPath,
        cchSize,
      );

  int SetDirectory(
    Pointer<Utf16> pwzPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzPath,
          )>()(
        ptr.ref.lpVtbl,
        pwzPath,
      );
}
