// IDWriteRenderingParams1.dart

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

import '../../graphics/directwrite/IDWriteRenderingParams.dart';

/// @nodoc
const IID_IDWriteRenderingParams1 = '{94413CF4-A6FC-4248-8B50-6674348FCAD3}';

/// {@category Interface}
/// {@category com}
class IDWriteRenderingParams1 extends IDWriteRenderingParams {
  // vtable begins at 8, is 1 entries long.
  IDWriteRenderingParams1(Pointer<COMObject> ptr) : super(ptr);

  double GetGrayscaleEnhancedContrast() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Float Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
