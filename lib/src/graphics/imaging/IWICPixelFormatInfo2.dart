// IWICPixelFormatInfo2.dart

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

import '../../graphics/imaging/IWICPixelFormatInfo.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/structs.g.dart';

/// @nodoc
const IID_IWICPixelFormatInfo2 = '{A9DB33A2-AF5F-43C7-B679-74F5984B5AA4}';

/// {@category Interface}
/// {@category com}
class IWICPixelFormatInfo2 extends IWICPixelFormatInfo {
  // vtable begins at 16, is 2 entries long.
  IWICPixelFormatInfo2(Pointer<COMObject> ptr) : super(ptr);

  int SupportsTransparency(
    Pointer<Int32> pfSupportsTransparency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfSupportsTransparency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfSupportsTransparency,
          )>()(
        ptr.ref.lpVtbl,
        pfSupportsTransparency,
      );

  int GetNumericRepresentation(
    Pointer<Uint32> pNumericRepresentation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pNumericRepresentation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pNumericRepresentation,
          )>()(
        ptr.ref.lpVtbl,
        pNumericRepresentation,
      );
}
