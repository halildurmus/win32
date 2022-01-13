// IAuthenticate.dart

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
const IID_IAuthenticate = '{79EAC9D0-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IAuthenticate extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAuthenticate(Pointer<COMObject> ptr) : super(ptr);

  int Authenticate(
    Pointer<IntPtr> phwnd,
    Pointer<Pointer<Utf16>> pszUsername,
    Pointer<Pointer<Utf16>> pszPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwnd,
            Pointer<Pointer<Utf16>> pszUsername,
            Pointer<Pointer<Utf16>> pszPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwnd,
            Pointer<Pointer<Utf16>> pszUsername,
            Pointer<Pointer<Utf16>> pszPassword,
          )>()(
        ptr.ref.lpVtbl,
        phwnd,
        pszUsername,
        pszPassword,
      );
}
