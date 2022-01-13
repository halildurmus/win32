// IRdcGeneratorFilterMaxParameters.dart

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
const IID_IRdcGeneratorFilterMaxParameters =
    '{96236A72-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class IRdcGeneratorFilterMaxParameters extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IRdcGeneratorFilterMaxParameters(Pointer<COMObject> ptr) : super(ptr);

  int GetHorizonSize(
    Pointer<Uint32> horizonSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> horizonSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> horizonSize,
          )>()(
        ptr.ref.lpVtbl,
        horizonSize,
      );

  int SetHorizonSize(
    int horizonSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 horizonSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int horizonSize,
          )>()(
        ptr.ref.lpVtbl,
        horizonSize,
      );

  int GetHashWindowSize(
    Pointer<Uint32> hashWindowSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> hashWindowSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> hashWindowSize,
          )>()(
        ptr.ref.lpVtbl,
        hashWindowSize,
      );

  int SetHashWindowSize(
    int hashWindowSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 hashWindowSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hashWindowSize,
          )>()(
        ptr.ref.lpVtbl,
        hashWindowSize,
      );
}

/// @nodoc
const CLSID_RdcGeneratorFilterMaxParameters =
    '{96236A87-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class RdcGeneratorFilterMaxParameters extends IRdcGeneratorFilterMaxParameters {
  RdcGeneratorFilterMaxParameters(Pointer<COMObject> ptr) : super(ptr);

  factory RdcGeneratorFilterMaxParameters.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_RdcGeneratorFilterMaxParameters);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IRdcGeneratorFilterMaxParameters);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RdcGeneratorFilterMaxParameters(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
