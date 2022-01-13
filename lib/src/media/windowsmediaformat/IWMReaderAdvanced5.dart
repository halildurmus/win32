// IWMReaderAdvanced5.dart

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

import '../../media/windowsmediaformat/IWMReaderAdvanced4.dart';
import '../../media/windowsmediaformat/IWMPlayerHook.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMReaderAdvanced5 = '{24C44DB0-55D1-49AE-A5CC-F13815E36363}';

/// {@category Interface}
/// {@category com}
class IWMReaderAdvanced5 extends IWMReaderAdvanced4 {
  // vtable begins at 49, is 1 entries long.
  IWMReaderAdvanced5(Pointer<COMObject> ptr) : super(ptr);

  int SetPlayerHook(
    int dwOutputNum,
    Pointer<COMObject> pHook,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<COMObject> pHook,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<COMObject> pHook,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pHook,
      );
}
