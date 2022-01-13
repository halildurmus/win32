// IWaaSAssessor.dart

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
import '../../system/updateassessment/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWaaSAssessor = '{2347BBEF-1A3B-45A4-902D-3E09C269B45E}';

/// {@category Interface}
/// {@category com}
class IWaaSAssessor extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWaaSAssessor(Pointer<COMObject> ptr) : super(ptr);

  int GetOSUpdateAssessment(
    Pointer<OSUpdateAssessment> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OSUpdateAssessment> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OSUpdateAssessment> result,
          )>()(
        ptr.ref.lpVtbl,
        result,
      );
}

/// @nodoc
const CLSID_WaaSAssessor = '{098EF871-FA9F-46AF-8958-C083515D7C9C}';

/// {@category com}
class WaaSAssessor extends IWaaSAssessor {
  WaaSAssessor(Pointer<COMObject> ptr) : super(ptr);

  factory WaaSAssessor.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WaaSAssessor);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWaaSAssessor);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WaaSAssessor(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
