// IWMPacketSize2.dart

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

import '../../media/windowsmediaformat/IWMPacketSize.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPacketSize2 = '{8BFC2B9E-B646-4233-A877-1C6A079669DC}';

/// {@category Interface}
/// {@category com}
class IWMPacketSize2 extends IWMPacketSize {
  // vtable begins at 5, is 2 entries long.
  IWMPacketSize2(Pointer<COMObject> ptr) : super(ptr);

  int GetMinPacketSize(
    Pointer<Uint32> pdwMinPacketSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMinPacketSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMinPacketSize,
          )>()(
        ptr.ref.lpVtbl,
        pdwMinPacketSize,
      );

  int SetMinPacketSize(
    int dwMinPacketSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMinPacketSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMinPacketSize,
          )>()(
        ptr.ref.lpVtbl,
        dwMinPacketSize,
      );
}
