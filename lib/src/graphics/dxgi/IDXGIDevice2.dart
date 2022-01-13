// IDXGIDevice2.dart

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

import '../../graphics/dxgi/IDXGIDevice1.dart';
import '../../graphics/dxgi/IDXGIResource.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIDevice2 = '{05008617-FBFD-4051-A790-144884B4F6A9}';

/// {@category Interface}
/// {@category com}
class IDXGIDevice2 extends IDXGIDevice1 {
  // vtable begins at 14, is 3 entries long.
  IDXGIDevice2(Pointer<COMObject> ptr) : super(ptr);

  int OfferResources(
    int NumResources,
    Pointer<Pointer<COMObject>> ppResources,
    int Priority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumResources,
            Pointer<Pointer<COMObject>> ppResources,
            Int32 Priority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumResources,
            Pointer<Pointer<COMObject>> ppResources,
            int Priority,
          )>()(
        ptr.ref.lpVtbl,
        NumResources,
        ppResources,
        Priority,
      );

  int ReclaimResources(
    int NumResources,
    Pointer<Pointer<COMObject>> ppResources,
    Pointer<Int32> pDiscarded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumResources,
            Pointer<Pointer<COMObject>> ppResources,
            Pointer<Int32> pDiscarded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumResources,
            Pointer<Pointer<COMObject>> ppResources,
            Pointer<Int32> pDiscarded,
          )>()(
        ptr.ref.lpVtbl,
        NumResources,
        ppResources,
        pDiscarded,
      );

  int EnqueueSetEvent(
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
      );
}
