// IURLSearchHook.dart

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
const IID_IURLSearchHook = '{AC60F6A0-0FD9-11D0-99CB-00C04FD64497}';

/// {@category Interface}
/// {@category com}
class IURLSearchHook extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IURLSearchHook(Pointer<COMObject> ptr) : super(ptr);

  int Translate(
    Pointer<Utf16> pwszSearchURL,
    int cchBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszSearchURL,
            Uint32 cchBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszSearchURL,
            int cchBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        pwszSearchURL,
        cchBufferSize,
      );
}
