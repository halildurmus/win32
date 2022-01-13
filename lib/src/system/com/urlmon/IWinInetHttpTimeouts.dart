// IWinInetHttpTimeouts.dart

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

/// @nodoc
const IID_IWinInetHttpTimeouts = '{F286FA56-C1FD-4270-8E67-B3EB790A81E8}';

/// {@category Interface}
/// {@category com}
class IWinInetHttpTimeouts extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWinInetHttpTimeouts(Pointer<COMObject> ptr) : super(ptr);

  int GetRequestTimeouts(
    Pointer<Uint32> pdwConnectTimeout,
    Pointer<Uint32> pdwSendTimeout,
    Pointer<Uint32> pdwReceiveTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwConnectTimeout,
            Pointer<Uint32> pdwSendTimeout,
            Pointer<Uint32> pdwReceiveTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwConnectTimeout,
            Pointer<Uint32> pdwSendTimeout,
            Pointer<Uint32> pdwReceiveTimeout,
          )>()(
        ptr.ref.lpVtbl,
        pdwConnectTimeout,
        pdwSendTimeout,
        pdwReceiveTimeout,
      );
}
