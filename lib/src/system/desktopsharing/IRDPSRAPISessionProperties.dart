// IRDPSRAPISessionProperties.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IRDPSRAPISessionProperties = '{339B24F2-9BC0-4F16-9AAC-F165433D13D4}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPISessionProperties extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IRDPSRAPISessionProperties(Pointer<COMObject> ptr) : super(ptr);

  int get_Property(
    Pointer<Utf16> PropertyName,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PropertyName,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PropertyName,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        PropertyName,
        pVal,
      );

  int put_Property(
    Pointer<Utf16> PropertyName,
    VARIANT newVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PropertyName,
            VARIANT newVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PropertyName,
            VARIANT newVal,
          )>()(
        ptr.ref.lpVtbl,
        PropertyName,
        newVal,
      );
}

/// @nodoc
const CLSID_RDPSRAPISessionProperties =
    '{DD7594FF-EA2A-4C06-8FDF-132DE48B6510}';

/// {@category com}
class RDPSRAPISessionProperties extends IRDPSRAPISessionProperties {
  RDPSRAPISessionProperties(Pointer<COMObject> ptr) : super(ptr);

  factory RDPSRAPISessionProperties.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RDPSRAPISessionProperties);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRDPSRAPISessionProperties);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RDPSRAPISessionProperties(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
