// IXAudio2Extension.dart

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

import '../../../system/com/IUnknown.dart';

/// @nodoc
const IID_IXAudio2Extension = '{84AC29BB-D619-44D2-B197-E4ACF7DF3ED6}';

/// {@category Interface}
/// {@category com}
class IXAudio2Extension extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IXAudio2Extension(Pointer<COMObject> ptr) : super(ptr);

  void GetProcessingQuantum(
    Pointer<Uint32> quantumNumerator,
    Pointer<Uint32> quantumDenominator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint32> quantumNumerator,
            Pointer<Uint32> quantumDenominator,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint32> quantumNumerator,
            Pointer<Uint32> quantumDenominator,
          )>()(
        ptr.ref.lpVtbl,
        quantumNumerator,
        quantumDenominator,
      );

  void GetProcessor(
    Pointer<Uint32> processor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint32> processor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint32> processor,
          )>()(
        ptr.ref.lpVtbl,
        processor,
      );
}
