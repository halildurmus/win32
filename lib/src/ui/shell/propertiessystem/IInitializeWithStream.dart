// IInitializeWithStream.dart

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
import '../../../system/com/IStream.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInitializeWithStream = '{B824B49D-22AC-4161-AC8A-9916E8FA3F7F}';

/// {@category Interface}
/// {@category com}
class IInitializeWithStream extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInitializeWithStream(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pstream,
    int grfMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pstream,
            Uint32 grfMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pstream,
            int grfMode,
          )>()(
        ptr.ref.lpVtbl,
        pstream,
        grfMode,
      );
}
