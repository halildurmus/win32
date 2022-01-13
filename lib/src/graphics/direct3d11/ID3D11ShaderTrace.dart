// ID3D11ShaderTrace.dart

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
import '../../graphics/direct3d11/structs.g.dart';

/// @nodoc
const IID_ID3D11ShaderTrace = '{36B013E6-2811-4845-BAA7-D623FE0DF104}';

/// {@category Interface}
/// {@category com}
class ID3D11ShaderTrace extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ID3D11ShaderTrace(Pointer<COMObject> ptr) : super(ptr);

  int TraceReady(
    Pointer<Uint64> pTestCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pTestCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pTestCount,
          )>()(
        ptr.ref.lpVtbl,
        pTestCount,
      );

  void ResetTrace() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetTraceStats(
    Pointer<D3D11_TRACE_STATS> pTraceStats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_TRACE_STATS> pTraceStats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_TRACE_STATS> pTraceStats,
          )>()(
        ptr.ref.lpVtbl,
        pTraceStats,
      );

  int PSSelectStamp(
    int stampIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stampIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stampIndex,
          )>()(
        ptr.ref.lpVtbl,
        stampIndex,
      );

  int GetInitialRegisterContents(
    Pointer<D3D11_TRACE_REGISTER> pRegister,
    Pointer<D3D11_TRACE_VALUE> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_TRACE_REGISTER> pRegister,
            Pointer<D3D11_TRACE_VALUE> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_TRACE_REGISTER> pRegister,
            Pointer<D3D11_TRACE_VALUE> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pRegister,
        pValue,
      );

  int GetStep(
    int stepIndex,
    Pointer<D3D11_TRACE_STEP> pTraceStep,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stepIndex,
            Pointer<D3D11_TRACE_STEP> pTraceStep,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stepIndex,
            Pointer<D3D11_TRACE_STEP> pTraceStep,
          )>()(
        ptr.ref.lpVtbl,
        stepIndex,
        pTraceStep,
      );

  int GetWrittenRegister(
    int stepIndex,
    int writtenRegisterIndex,
    Pointer<D3D11_TRACE_REGISTER> pRegister,
    Pointer<D3D11_TRACE_VALUE> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stepIndex,
            Uint32 writtenRegisterIndex,
            Pointer<D3D11_TRACE_REGISTER> pRegister,
            Pointer<D3D11_TRACE_VALUE> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stepIndex,
            int writtenRegisterIndex,
            Pointer<D3D11_TRACE_REGISTER> pRegister,
            Pointer<D3D11_TRACE_VALUE> pValue,
          )>()(
        ptr.ref.lpVtbl,
        stepIndex,
        writtenRegisterIndex,
        pRegister,
        pValue,
      );

  int GetReadRegister(
    int stepIndex,
    int readRegisterIndex,
    Pointer<D3D11_TRACE_REGISTER> pRegister,
    Pointer<D3D11_TRACE_VALUE> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stepIndex,
            Uint32 readRegisterIndex,
            Pointer<D3D11_TRACE_REGISTER> pRegister,
            Pointer<D3D11_TRACE_VALUE> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stepIndex,
            int readRegisterIndex,
            Pointer<D3D11_TRACE_REGISTER> pRegister,
            Pointer<D3D11_TRACE_VALUE> pValue,
          )>()(
        ptr.ref.lpVtbl,
        stepIndex,
        readRegisterIndex,
        pRegister,
        pValue,
      );
}
