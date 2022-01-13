// IWiaDataCallback.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWiaDataCallback = '{A558A866-A5B0-11D2-A08F-00C04F72DC3C}';

/// {@category Interface}
/// {@category com}
class IWiaDataCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWiaDataCallback(Pointer<COMObject> ptr) : super(ptr);

  int BandedDataCallback(
    int lMessage,
    int lStatus,
    int lPercentComplete,
    int lOffset,
    int lLength,
    int lReserved,
    int lResLength,
    Pointer<Uint8> pbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMessage,
            Int32 lStatus,
            Int32 lPercentComplete,
            Int32 lOffset,
            Int32 lLength,
            Int32 lReserved,
            Int32 lResLength,
            Pointer<Uint8> pbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMessage,
            int lStatus,
            int lPercentComplete,
            int lOffset,
            int lLength,
            int lReserved,
            int lResLength,
            Pointer<Uint8> pbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        lMessage,
        lStatus,
        lPercentComplete,
        lOffset,
        lLength,
        lReserved,
        lResLength,
        pbBuffer,
      );
}
