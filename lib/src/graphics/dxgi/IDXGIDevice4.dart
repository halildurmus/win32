// IDXGIDevice4.dart

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

import '../../graphics/dxgi/IDXGIDevice3.dart';
import '../../graphics/dxgi/IDXGIResource.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIDevice4 = '{95B4F95F-D8DA-4CA4-9EE6-3B76D5968A10}';

/// {@category Interface}
/// {@category com}
class IDXGIDevice4 extends IDXGIDevice3 {
  // vtable begins at 18, is 2 entries long.
  IDXGIDevice4(Pointer<COMObject> ptr) : super(ptr);

  int OfferResources1(
    int NumResources,
    Pointer<Pointer<COMObject>> ppResources,
    int Priority,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumResources,
            Pointer<Pointer<COMObject>> ppResources,
            Int32 Priority,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumResources,
            Pointer<Pointer<COMObject>> ppResources,
            int Priority,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        NumResources,
        ppResources,
        Priority,
        Flags,
      );

  int ReclaimResources1(
    int NumResources,
    Pointer<Pointer<COMObject>> ppResources,
    Pointer<Int32> pResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumResources,
            Pointer<Pointer<COMObject>> ppResources,
            Pointer<Int32> pResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumResources,
            Pointer<Pointer<COMObject>> ppResources,
            Pointer<Int32> pResults,
          )>()(
        ptr.ref.lpVtbl,
        NumResources,
        ppResources,
        pResults,
      );
}
