// INetDiagHelperEx.dart

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
import '../../networkmanagement/networkdiagnosticsframework/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/networkdiagnosticsframework/INetDiagHelperUtilFactory.dart';

/// @nodoc
const IID_INetDiagHelperEx = '{972DAB4D-E4E3-4FC6-AE54-5F65CCDE4A15}';

/// {@category Interface}
/// {@category com}
class INetDiagHelperEx extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  INetDiagHelperEx(Pointer<COMObject> ptr) : super(ptr);

  int ReconfirmLowHealth(
    int celt,
    Pointer<HypothesisResult> pResults,
    Pointer<Pointer<Utf16>> ppwszUpdatedDescription,
    Pointer<Int32> pUpdatedStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
            Pointer<HypothesisResult> pResults,
            Pointer<Pointer<Utf16>> ppwszUpdatedDescription,
            Pointer<Int32> pUpdatedStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<HypothesisResult> pResults,
            Pointer<Pointer<Utf16>> ppwszUpdatedDescription,
            Pointer<Int32> pUpdatedStatus,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        pResults,
        ppwszUpdatedDescription,
        pUpdatedStatus,
      );

  int SetUtilities(
    Pointer<COMObject> pUtilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUtilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUtilities,
          )>()(
        ptr.ref.lpVtbl,
        pUtilities,
      );

  int ReproduceFailure() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
}
