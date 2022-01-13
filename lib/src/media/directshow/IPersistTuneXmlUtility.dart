// IPersistTuneXmlUtility.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPersistTuneXmlUtility = '{990237AE-AC11-4614-BE8F-DD217A4CB4CB}';

/// {@category Interface}
/// {@category com}
class IPersistTuneXmlUtility extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPersistTuneXmlUtility(Pointer<COMObject> ptr) : super(ptr);

  int Deserialize(
    VARIANT varValue,
    Pointer<Pointer<COMObject>> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varValue,
            Pointer<Pointer<COMObject>> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varValue,
            Pointer<Pointer<COMObject>> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        varValue,
        ppObject,
      );
}

/// @nodoc
const CLSID_PersistTuneXmlUtility = '{E77026B0-B97F-4CBB-B7FB-F4F03AD69F11}';

/// {@category com}
class PersistTuneXmlUtility extends IPersistTuneXmlUtility {
  PersistTuneXmlUtility(Pointer<COMObject> ptr) : super(ptr);

  factory PersistTuneXmlUtility.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PersistTuneXmlUtility);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPersistTuneXmlUtility);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PersistTuneXmlUtility(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
