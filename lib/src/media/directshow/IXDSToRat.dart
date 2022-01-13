// IXDSToRat.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IXDSToRat = '{C5C5C5B0-3ABC-11D6-B25B-00C04FA0C026}';

/// {@category Interface}
/// {@category com}
class IXDSToRat extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IXDSToRat(Pointer<COMObject> ptr) : super(ptr);

  int Init() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int ParseXDSBytePair(
    int byte1,
    int byte2,
    Pointer<Int32> pEnSystem,
    Pointer<Int32> pEnLevel,
    Pointer<Int32> plBfEnAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 byte1,
            Uint8 byte2,
            Pointer<Int32> pEnSystem,
            Pointer<Int32> pEnLevel,
            Pointer<Int32> plBfEnAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int byte1,
            int byte2,
            Pointer<Int32> pEnSystem,
            Pointer<Int32> pEnLevel,
            Pointer<Int32> plBfEnAttributes,
          )>()(
        ptr.ref.lpVtbl,
        byte1,
        byte2,
        pEnSystem,
        pEnLevel,
        plBfEnAttributes,
      );
}

/// @nodoc
const CLSID_XDSToRat = '{C5C5C5F0-3ABC-11D6-B25B-00C04FA0C026}';

/// {@category com}
class XDSToRat extends IXDSToRat {
  XDSToRat(Pointer<COMObject> ptr) : super(ptr);

  factory XDSToRat.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_XDSToRat);
    final iid = calloc<GUID>()..ref.setGUID(IID_IXDSToRat);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return XDSToRat(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
