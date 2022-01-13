// IAMFilterMiscFlags.dart

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

/// @nodoc
const IID_IAMFilterMiscFlags = '{2DD74950-A890-11D1-ABE8-00A0C905F375}';

/// {@category Interface}
/// {@category com}
class IAMFilterMiscFlags extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAMFilterMiscFlags(Pointer<COMObject> ptr) : super(ptr);

  int GetMiscFlags() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
