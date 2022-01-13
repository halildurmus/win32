// IMFAsyncCallback.dart

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
import '../../media/mediafoundation/IMFAsyncResult.dart';

/// @nodoc
const IID_IMFAsyncCallback = '{A27003CF-2354-4F2A-8D6A-AB7CFF15437E}';

/// {@category Interface}
/// {@category com}
class IMFAsyncCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFAsyncCallback(Pointer<COMObject> ptr) : super(ptr);

  int GetParameters(
    Pointer<Uint32> pdwFlags,
    Pointer<Uint32> pdwQueue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
            Pointer<Uint32> pdwQueue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
            Pointer<Uint32> pdwQueue,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
        pdwQueue,
      );

  int Invoke(
    Pointer<COMObject> pAsyncResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAsyncResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAsyncResult,
          )>()(
        ptr.ref.lpVtbl,
        pAsyncResult,
      );
}
