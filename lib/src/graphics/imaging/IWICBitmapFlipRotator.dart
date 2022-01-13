// IWICBitmapFlipRotator.dart

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

import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICBitmapFlipRotator = '{5009834F-2D6A-41CE-9E1B-17C5AFF7A782}';

/// {@category Interface}
/// {@category com}
class IWICBitmapFlipRotator extends IWICBitmapSource {
  // vtable begins at 8, is 1 entries long.
  IWICBitmapFlipRotator(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pISource,
    int options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pISource,
            Int32 options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pISource,
            int options,
          )>()(
        ptr.ref.lpVtbl,
        pISource,
        options,
      );
}
