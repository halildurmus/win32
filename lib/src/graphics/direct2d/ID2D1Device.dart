// ID2D1Device.dart

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

import '../../graphics/direct2d/ID2D1Resource.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1DeviceContext.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICImagingFactory.dart';
import '../../storage/xps/printing/IPrintDocumentPackageTarget.dart';
import '../../graphics/direct2d/ID2D1PrintControl.dart';

/// @nodoc
const IID_ID2D1Device = '{47DD575D-AC05-4CDD-8049-9B02CD16F44C}';

/// {@category Interface}
/// {@category com}
class ID2D1Device extends ID2D1Resource {
  // vtable begins at 4, is 5 entries long.
  ID2D1Device(Pointer<COMObject> ptr) : super(ptr);

  int CreateDeviceContext(
    int options,
    Pointer<Pointer<COMObject>> deviceContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 options,
            Pointer<Pointer<COMObject>> deviceContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> deviceContext,
          )>()(
        ptr.ref.lpVtbl,
        options,
        deviceContext,
      );

  int CreatePrintControl(
    Pointer<COMObject> wicFactory,
    Pointer<COMObject> documentTarget,
    Pointer<D2D1_PRINT_CONTROL_PROPERTIES> printControlProperties,
    Pointer<Pointer<COMObject>> printControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> wicFactory,
            Pointer<COMObject> documentTarget,
            Pointer<D2D1_PRINT_CONTROL_PROPERTIES> printControlProperties,
            Pointer<Pointer<COMObject>> printControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> wicFactory,
            Pointer<COMObject> documentTarget,
            Pointer<D2D1_PRINT_CONTROL_PROPERTIES> printControlProperties,
            Pointer<Pointer<COMObject>> printControl,
          )>()(
        ptr.ref.lpVtbl,
        wicFactory,
        documentTarget,
        printControlProperties,
        printControl,
      );

  void SetMaximumTextureMemory(
    int maximumInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint64 maximumInBytes,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int maximumInBytes,
          )>()(
        ptr.ref.lpVtbl,
        maximumInBytes,
      );

  int GetMaximumTextureMemory() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void ClearResources(
    int millisecondsSinceUse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 millisecondsSinceUse,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int millisecondsSinceUse,
          )>()(
        ptr.ref.lpVtbl,
        millisecondsSinceUse,
      );
}
