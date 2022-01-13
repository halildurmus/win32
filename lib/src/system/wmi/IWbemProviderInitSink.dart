// IWbemProviderInitSink.dart

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
const IID_IWbemProviderInitSink = '{1BE41571-91DD-11D1-AEB2-00C04FB68820}';

/// {@category Interface}
/// {@category com}
class IWbemProviderInitSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemProviderInitSink(Pointer<COMObject> ptr) : super(ptr);

  int SetStatus(
    int lStatus,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lStatus,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lStatus,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        lStatus,
        lFlags,
      );
}
