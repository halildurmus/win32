// INetDiagHelper.dart

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

/// @nodoc
const IID_INetDiagHelper = '{C0B35746-EBF5-11D8-BBE9-505054503030}';

/// {@category Interface}
/// {@category com}
class INetDiagHelper extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  INetDiagHelper(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int celt,
    Pointer<HELPER_ATTRIBUTE> rgAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
            Pointer<HELPER_ATTRIBUTE> rgAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<HELPER_ATTRIBUTE> rgAttributes,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        rgAttributes,
      );

  int GetDiagnosticsInfo(
    Pointer<Pointer<DiagnosticsInfo>> ppInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<DiagnosticsInfo>> ppInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<DiagnosticsInfo>> ppInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppInfo,
      );

  int GetKeyAttributes(
    Pointer<Uint32> pcelt,
    Pointer<Pointer<HELPER_ATTRIBUTE>> pprgAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HELPER_ATTRIBUTE>> pprgAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HELPER_ATTRIBUTE>> pprgAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pcelt,
        pprgAttributes,
      );

  int LowHealth(
    Pointer<Utf16> pwszInstanceDescription,
    Pointer<Pointer<Utf16>> ppwszDescription,
    Pointer<Int32> pDeferredTime,
    Pointer<Int32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszInstanceDescription,
            Pointer<Pointer<Utf16>> ppwszDescription,
            Pointer<Int32> pDeferredTime,
            Pointer<Int32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszInstanceDescription,
            Pointer<Pointer<Utf16>> ppwszDescription,
            Pointer<Int32> pDeferredTime,
            Pointer<Int32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pwszInstanceDescription,
        ppwszDescription,
        pDeferredTime,
        pStatus,
      );

  int HighUtilization(
    Pointer<Utf16> pwszInstanceDescription,
    Pointer<Pointer<Utf16>> ppwszDescription,
    Pointer<Int32> pDeferredTime,
    Pointer<Int32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszInstanceDescription,
            Pointer<Pointer<Utf16>> ppwszDescription,
            Pointer<Int32> pDeferredTime,
            Pointer<Int32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszInstanceDescription,
            Pointer<Pointer<Utf16>> ppwszDescription,
            Pointer<Int32> pDeferredTime,
            Pointer<Int32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pwszInstanceDescription,
        ppwszDescription,
        pDeferredTime,
        pStatus,
      );

  int GetLowerHypotheses(
    Pointer<Uint32> pcelt,
    Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
          )>()(
        ptr.ref.lpVtbl,
        pcelt,
        pprgHypotheses,
      );

  int GetDownStreamHypotheses(
    Pointer<Uint32> pcelt,
    Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
          )>()(
        ptr.ref.lpVtbl,
        pcelt,
        pprgHypotheses,
      );

  int GetHigherHypotheses(
    Pointer<Uint32> pcelt,
    Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
          )>()(
        ptr.ref.lpVtbl,
        pcelt,
        pprgHypotheses,
      );

  int GetUpStreamHypotheses(
    Pointer<Uint32> pcelt,
    Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HYPOTHESIS>> pprgHypotheses,
          )>()(
        ptr.ref.lpVtbl,
        pcelt,
        pprgHypotheses,
      );

  int Repair(
    Pointer<RepairInfo> pInfo,
    Pointer<Int32> pDeferredTime,
    Pointer<Int32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RepairInfo> pInfo,
            Pointer<Int32> pDeferredTime,
            Pointer<Int32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RepairInfo> pInfo,
            Pointer<Int32> pDeferredTime,
            Pointer<Int32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        pDeferredTime,
        pStatus,
      );

  int Validate(
    int problem,
    Pointer<Int32> pDeferredTime,
    Pointer<Int32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 problem,
            Pointer<Int32> pDeferredTime,
            Pointer<Int32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int problem,
            Pointer<Int32> pDeferredTime,
            Pointer<Int32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        problem,
        pDeferredTime,
        pStatus,
      );

  int GetRepairInfo(
    int problem,
    Pointer<Uint32> pcelt,
    Pointer<Pointer<RepairInfo>> ppInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 problem,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<RepairInfo>> ppInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int problem,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<RepairInfo>> ppInfo,
          )>()(
        ptr.ref.lpVtbl,
        problem,
        pcelt,
        ppInfo,
      );

  int GetLifeTime(
    Pointer<LIFE_TIME> pLifeTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<LIFE_TIME> pLifeTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<LIFE_TIME> pLifeTime,
          )>()(
        ptr.ref.lpVtbl,
        pLifeTime,
      );

  int SetLifeTime(
    LIFE_TIME lifeTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            LIFE_TIME lifeTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            LIFE_TIME lifeTime,
          )>()(
        ptr.ref.lpVtbl,
        lifeTime,
      );

  int GetCacheTime(
    Pointer<FILETIME> pCacheTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pCacheTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pCacheTime,
          )>()(
        ptr.ref.lpVtbl,
        pCacheTime,
      );

  int GetAttributes(
    Pointer<Uint32> pcelt,
    Pointer<Pointer<HELPER_ATTRIBUTE>> pprgAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HELPER_ATTRIBUTE>> pprgAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HELPER_ATTRIBUTE>> pprgAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pcelt,
        pprgAttributes,
      );

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int Cleanup() => ptr.ref.lpVtbl.value
          .elementAt(20)
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
