// IDXGIFactory1.dart

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

import '../../graphics/dxgi/IDXGIFactory.dart';
import '../../graphics/dxgi/IDXGIAdapter1.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIFactory1 = '{770AAE78-F26F-4DBA-A829-253C83D1B387}';

/// {@category Interface}
/// {@category com}
class IDXGIFactory1 extends IDXGIFactory {
  // vtable begins at 12, is 2 entries long.
  IDXGIFactory1(Pointer<COMObject> ptr) : super(ptr);

  int EnumAdapters1(
    int Adapter,
    Pointer<Pointer<COMObject>> ppAdapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Pointer<Pointer<COMObject>> ppAdapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            Pointer<Pointer<COMObject>> ppAdapter,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        ppAdapter,
      );

  int IsCurrent() => ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
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
