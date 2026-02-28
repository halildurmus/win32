// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11ShaderTrace = GUID.fromComponents(
  0x36b013e6,
  0x2811,
  0x4845,
  Uint8List.fromList(const [0xba, 0xa7, 0xd6, 0x23, 0xfe, 0xd, 0xf1, 0x4]),
);

/// Implements methods for obtaining traces of shader executions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nn-d3d11shadertracing-id3d11shadertrace>.
///
/// {@category com}
class ID3D11ShaderTrace extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11ShaderTrace] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11ShaderTrace]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11ShaderTrace(super.ptr)
    : _vtable = ptr.value.cast<ID3D11ShaderTraceVtbl>().ref;

  /// Creates a new instance of [ID3D11ShaderTrace] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11ShaderTrace] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11ShaderTrace.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11ShaderTraceVtbl _vtable;
  late final _TraceReadyFn = _vtable
      .TraceReady.asFunction<int Function(VTablePointer, Pointer<Uint64>)>();
  late final _ResetTraceFn =
      _vtable.ResetTrace.asFunction<void Function(VTablePointer)>();
  late final _GetTraceStatsFn =
      _vtable.GetTraceStats.asFunction<
        int Function(VTablePointer, Pointer<D3D11_TRACE_STATS>)
      >();
  late final _PSSelectStampFn =
      _vtable.PSSelectStamp.asFunction<int Function(VTablePointer, int)>();
  late final _GetInitialRegisterContentsFn =
      _vtable.GetInitialRegisterContents.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_TRACE_REGISTER>,
          Pointer<D3D11_TRACE_VALUE>,
        )
      >();
  late final _GetStepFn =
      _vtable.GetStep.asFunction<
        int Function(VTablePointer, int, Pointer<D3D11_TRACE_STEP>)
      >();
  late final _GetWrittenRegisterFn =
      _vtable.GetWrittenRegister.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          Pointer<D3D11_TRACE_REGISTER>,
          Pointer<D3D11_TRACE_VALUE>,
        )
      >();
  late final _GetReadRegisterFn =
      _vtable.GetReadRegister.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          Pointer<D3D11_TRACE_REGISTER>,
          Pointer<D3D11_TRACE_VALUE>,
        )
      >();

  /// Specifies that the shader trace recorded and is ready to use.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nf-d3d11shadertracing-id3d11shadertrace-traceready>.
  @pragma('vm:prefer-inline')
  void traceReady(Pointer<Uint64>? pTestCount) {
    final hr$ = HRESULT(_TraceReadyFn(ptr, pTestCount ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Resets the shader-trace object.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nf-d3d11shadertracing-id3d11shadertrace-resettrace>.
  @pragma('vm:prefer-inline')
  void resetTrace() => _ResetTraceFn(ptr);

  /// Returns statistics about the trace.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nf-d3d11shadertracing-id3d11shadertrace-gettracestats>.
  Pointer<D3D11_TRACE_STATS> getTraceStats() {
    final pTraceStats = adaptiveCalloc<D3D11_TRACE_STATS>();
    final hr$ = HRESULT(_GetTraceStatsFn(ptr, pTraceStats));
    if (hr$.isError) {
      free(pTraceStats);
      throw WindowsException(hr$);
    }
    return pTraceStats;
  }

  /// Sets the specified pixel-shader stamp.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nf-d3d11shadertracing-id3d11shadertrace-psselectstamp>.
  @pragma('vm:prefer-inline')
  void pSSelectStamp(int stampIndex) {
    final hr$ = HRESULT(_PSSelectStampFn(ptr, stampIndex));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the initial contents of the specified input register.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nf-d3d11shadertracing-id3d11shadertrace-getinitialregistercontents>.
  Pointer<D3D11_TRACE_VALUE> getInitialRegisterContents(
    Pointer<D3D11_TRACE_REGISTER> pRegister,
  ) {
    final pValue = adaptiveCalloc<D3D11_TRACE_VALUE>();
    final hr$ = HRESULT(_GetInitialRegisterContentsFn(ptr, pRegister, pValue));
    if (hr$.isError) {
      free(pValue);
      throw WindowsException(hr$);
    }
    return pValue;
  }

  /// Retrieves information about the specified step in the trace.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nf-d3d11shadertracing-id3d11shadertrace-getstep>.
  Pointer<D3D11_TRACE_STEP> getStep(int stepIndex) {
    final pTraceStep = adaptiveCalloc<D3D11_TRACE_STEP>();
    final hr$ = HRESULT(_GetStepFn(ptr, stepIndex, pTraceStep));
    if (hr$.isError) {
      free(pTraceStep);
      throw WindowsException(hr$);
    }
    return pTraceStep;
  }

  /// Retrieves information about a register that was written by a step in the
  /// trace.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nf-d3d11shadertracing-id3d11shadertrace-getwrittenregister>.
  @pragma('vm:prefer-inline')
  void getWrittenRegister(
    int stepIndex,
    int writtenRegisterIndex,
    Pointer<D3D11_TRACE_REGISTER> pRegister,
    Pointer<D3D11_TRACE_VALUE> pValue,
  ) {
    final hr$ = HRESULT(
      _GetWrittenRegisterFn(
        ptr,
        stepIndex,
        writtenRegisterIndex,
        pRegister,
        pValue,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves information about a register that was read by a step in the
  /// trace.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11shadertracing/nf-d3d11shadertracing-id3d11shadertrace-getreadregister>.
  @pragma('vm:prefer-inline')
  void getReadRegister(
    int stepIndex,
    int readRegisterIndex,
    Pointer<D3D11_TRACE_REGISTER> pRegister,
    Pointer<D3D11_TRACE_VALUE> pValue,
  ) {
    final hr$ = HRESULT(
      _GetReadRegisterFn(ptr, stepIndex, readRegisterIndex, pRegister, pValue),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11ShaderTrace(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ShaderTraceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint64> pTestCount)
    >
  >
  TraceReady;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>>
  ResetTrace;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_TRACE_STATS> pTraceStats,
      )
    >
  >
  GetTraceStats;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 stampIndex)>
  >
  PSSelectStamp;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_TRACE_REGISTER> pRegister,
        Pointer<D3D11_TRACE_VALUE> pValue,
      )
    >
  >
  GetInitialRegisterContents;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 stepIndex,
        Pointer<D3D11_TRACE_STEP> pTraceStep,
      )
    >
  >
  GetStep;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 stepIndex,
        Uint32 writtenRegisterIndex,
        Pointer<D3D11_TRACE_REGISTER> pRegister,
        Pointer<D3D11_TRACE_VALUE> pValue,
      )
    >
  >
  GetWrittenRegister;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 stepIndex,
        Uint32 readRegisterIndex,
        Pointer<D3D11_TRACE_REGISTER> pRegister,
        Pointer<D3D11_TRACE_VALUE> pValue,
      )
    >
  >
  GetReadRegister;
}

@internal
final class ID3D11ShaderTraceCompanion extends ComCompanion<ID3D11ShaderTrace> {
  const ID3D11ShaderTraceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11ShaderTrace Function(VTablePointer) get fromPointer =>
      ID3D11ShaderTrace.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11ShaderTrace;
}
