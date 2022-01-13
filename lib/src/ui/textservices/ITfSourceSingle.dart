// ITfSourceSingle.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfSourceSingle = '{73131F9C-56A9-49DD-B0EE-D046633F7528}';

/// {@category Interface}
/// {@category com}
class ITfSourceSingle extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfSourceSingle(Pointer<COMObject> ptr) : super(ptr);

  int AdviseSingleSink(
    int tid,
    Pointer<GUID> riid,
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tid,
            Pointer<GUID> riid,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tid,
            Pointer<GUID> riid,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        tid,
        riid,
        punk,
      );

  int UnadviseSingleSink(
    int tid,
    Pointer<GUID> riid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tid,
            Pointer<GUID> riid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tid,
            Pointer<GUID> riid,
          )>()(
        ptr.ref.lpVtbl,
        tid,
        riid,
      );
}
