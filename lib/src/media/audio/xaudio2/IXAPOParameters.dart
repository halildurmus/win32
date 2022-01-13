// IXAPOParameters.dart

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
const IID_IXAPOParameters = '{26D95C66-80F2-499A-AD54-5AE7F01C6D98}';

/// {@category Interface}
/// {@category com}
class IXAPOParameters extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IXAPOParameters(Pointer<COMObject> ptr) : super(ptr);

  void SetParameters(
    Pointer pParameters,
    int ParameterByteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer pParameters,
            Uint32 ParameterByteSize,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer pParameters,
            int ParameterByteSize,
          )>()(
        ptr.ref.lpVtbl,
        pParameters,
        ParameterByteSize,
      );

  void GetParameters(
    Pointer pParameters,
    int ParameterByteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer pParameters,
            Uint32 ParameterByteSize,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer pParameters,
            int ParameterByteSize,
          )>()(
        ptr.ref.lpVtbl,
        pParameters,
        ParameterByteSize,
      );
}
