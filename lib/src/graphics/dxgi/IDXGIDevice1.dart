// IDXGIDevice1.dart

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

import '../../graphics/dxgi/IDXGIDevice.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIDevice1 = '{77DB970F-6276-48BA-BA28-070143B4392C}';

/// {@category Interface}
/// {@category com}
class IDXGIDevice1 extends IDXGIDevice {
  // vtable begins at 12, is 2 entries long.
  IDXGIDevice1(Pointer<COMObject> ptr) : super(ptr);

  int SetMaximumFrameLatency(
    int MaxLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 MaxLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MaxLatency,
          )>()(
        ptr.ref.lpVtbl,
        MaxLatency,
      );

  int GetMaximumFrameLatency(
    Pointer<Uint32> pMaxLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pMaxLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pMaxLatency,
          )>()(
        ptr.ref.lpVtbl,
        pMaxLatency,
      );
}
