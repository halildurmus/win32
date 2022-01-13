// IDWriteFactory1.dart

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

import '../../graphics/directwrite/IDWriteFactory.dart';
import '../../graphics/directwrite/IDWriteFontCollection.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteRenderingParams1.dart';

/// @nodoc
const IID_IDWriteFactory1 = '{30572F99-DAC6-41DB-A16E-0486307E606A}';

/// {@category Interface}
/// {@category com}
class IDWriteFactory1 extends IDWriteFactory {
  // vtable begins at 24, is 2 entries long.
  IDWriteFactory1(Pointer<COMObject> ptr) : super(ptr);

  int GetEudcFontCollection(
    Pointer<Pointer<COMObject>> fontCollection,
    int checkForUpdates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontCollection,
            Int32 checkForUpdates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontCollection,
            int checkForUpdates,
          )>()(
        ptr.ref.lpVtbl,
        fontCollection,
        checkForUpdates,
      );

  int CreateCustomRenderingParams_1(
    double gamma,
    double enhancedContrast,
    double enhancedContrastGrayscale,
    double clearTypeLevel,
    int pixelGeometry,
    int renderingMode,
    Pointer<Pointer<COMObject>> renderingParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float gamma,
            Float enhancedContrast,
            Float enhancedContrastGrayscale,
            Float clearTypeLevel,
            Int32 pixelGeometry,
            Int32 renderingMode,
            Pointer<Pointer<COMObject>> renderingParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double gamma,
            double enhancedContrast,
            double enhancedContrastGrayscale,
            double clearTypeLevel,
            int pixelGeometry,
            int renderingMode,
            Pointer<Pointer<COMObject>> renderingParams,
          )>()(
        ptr.ref.lpVtbl,
        gamma,
        enhancedContrast,
        enhancedContrastGrayscale,
        clearTypeLevel,
        pixelGeometry,
        renderingMode,
        renderingParams,
      );
}
