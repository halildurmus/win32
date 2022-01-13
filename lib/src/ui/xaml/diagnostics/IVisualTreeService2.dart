// IVisualTreeService2.dart

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

import '../../../ui/xaml/diagnostics/IVisualTreeService.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/xaml/diagnostics/structs.g.dart';
import '../../../ui/xaml/diagnostics/IBitmapData.dart';

/// @nodoc
const IID_IVisualTreeService2 = '{130F5136-EC43-4F61-89C7-9801A36D2E95}';

/// {@category Interface}
/// {@category com}
class IVisualTreeService2 extends IVisualTreeService {
  // vtable begins at 15, is 4 entries long.
  IVisualTreeService2(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyIndex(
    int object,
    Pointer<Utf16> propertyName,
    Pointer<Uint32> pPropertyIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 object,
            Pointer<Utf16> propertyName,
            Pointer<Uint32> pPropertyIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int object,
            Pointer<Utf16> propertyName,
            Pointer<Uint32> pPropertyIndex,
          )>()(
        ptr.ref.lpVtbl,
        object,
        propertyName,
        pPropertyIndex,
      );

  int GetProperty(
    int object,
    int propertyIndex,
    Pointer<Uint64> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 object,
            Uint32 propertyIndex,
            Pointer<Uint64> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int object,
            int propertyIndex,
            Pointer<Uint64> pValue,
          )>()(
        ptr.ref.lpVtbl,
        object,
        propertyIndex,
        pValue,
      );

  int ReplaceResource(
    int resourceDictionary,
    int key,
    int newValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 resourceDictionary,
            Uint64 key,
            Uint64 newValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int resourceDictionary,
            int key,
            int newValue,
          )>()(
        ptr.ref.lpVtbl,
        resourceDictionary,
        key,
        newValue,
      );

  int RenderTargetBitmap(
    int handle,
    int options,
    int maxPixelWidth,
    int maxPixelHeight,
    Pointer<Pointer<COMObject>> ppBitmapData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 handle,
            Int32 options,
            Uint32 maxPixelWidth,
            Uint32 maxPixelHeight,
            Pointer<Pointer<COMObject>> ppBitmapData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int handle,
            int options,
            int maxPixelWidth,
            int maxPixelHeight,
            Pointer<Pointer<COMObject>> ppBitmapData,
          )>()(
        ptr.ref.lpVtbl,
        handle,
        options,
        maxPixelWidth,
        maxPixelHeight,
        ppBitmapData,
      );
}
