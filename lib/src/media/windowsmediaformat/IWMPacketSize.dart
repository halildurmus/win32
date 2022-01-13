// IWMPacketSize.dart

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
const IID_IWMPacketSize = '{CDFB97AB-188F-40B3-B643-5B7903975C59}';

/// {@category Interface}
/// {@category com}
class IWMPacketSize extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMPacketSize(Pointer<COMObject> ptr) : super(ptr);

  int GetMaxPacketSize(
    Pointer<Uint32> pdwMaxPacketSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMaxPacketSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMaxPacketSize,
          )>()(
        ptr.ref.lpVtbl,
        pdwMaxPacketSize,
      );

  int SetMaxPacketSize(
    int dwMaxPacketSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMaxPacketSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMaxPacketSize,
          )>()(
        ptr.ref.lpVtbl,
        dwMaxPacketSize,
      );
}
