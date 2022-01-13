// IGPMDomain3.dart

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

import '../../system/grouppolicy/IGPMDomain2.dart';
import '../../system/grouppolicy/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/grouppolicy/IGPMResult.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IGPMDomain3 = '{0077FDFE-88C7-4ACF-A11D-D10A7C310A03}';

/// {@category Interface}
/// {@category com}
class IGPMDomain3 extends IGPMDomain2 {
  // vtable begins at 23, is 4 entries long.
  IGPMDomain3(Pointer<COMObject> ptr) : super(ptr);

  int GenerateReport(
    int gpmReportType,
    Pointer<VARIANT> pvarGPMProgress,
    Pointer<VARIANT> pvarGPMCancel,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 gpmReportType,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int gpmReportType,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>()(
        ptr.ref.lpVtbl,
        gpmReportType,
        pvarGPMProgress,
        pvarGPMCancel,
        ppIGPMResult,
      );

  Pointer<Utf16> get InfrastructureDC {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set InfrastructureDC(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(25)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set InfrastructureFlags(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(26)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 dwFlags,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int dwFlags,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
