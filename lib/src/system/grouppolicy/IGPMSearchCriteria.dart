// IGPMSearchCriteria.dart

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
import '../../system/grouppolicy/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IGPMSearchCriteria = '{D6F11C42-829B-48D4-83F5-3615B67DFC22}';

/// {@category Interface}
/// {@category com}
class IGPMSearchCriteria extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IGPMSearchCriteria(Pointer<COMObject> ptr) : super(ptr);

  int Add(
    int searchProperty,
    int searchOperation,
    VARIANT varValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 searchProperty,
            Int32 searchOperation,
            VARIANT varValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int searchProperty,
            int searchOperation,
            VARIANT varValue,
          )>()(
        ptr.ref.lpVtbl,
        searchProperty,
        searchOperation,
        varValue,
      );
}

/// @nodoc
const CLSID_GPMSearchCriteria = '{17AACA26-5CE0-44FA-8CC0-5259E6483566}';

/// {@category com}
class GPMSearchCriteria extends IGPMSearchCriteria {
  GPMSearchCriteria(Pointer<COMObject> ptr) : super(ptr);

  factory GPMSearchCriteria.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GPMSearchCriteria);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPMSearchCriteria);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPMSearchCriteria(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
