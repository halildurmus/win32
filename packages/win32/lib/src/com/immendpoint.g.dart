// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IMMEndpoint = Guid.fromComponents(
  0x1be09788,
  0x6894,
  0x4089,
  Uint8List.fromList(const [0x85, 0x86, 0x9a, 0x2a, 0x6c, 0x26, 0x5a, 0xc5]),
);

/// Represents an audio endpoint device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nn-mmdeviceapi-immendpoint>.
///
/// {@category com}
class IMMEndpoint extends IUnknown implements ComInterface {
  /// Creates a new instance of [IMMEndpoint] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMMEndpoint] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMMEndpoint(super.ptr) : _vtable = ptr.value.cast<IMMEndpointVtbl>().ref;

  /// Creates a new instance of [IMMEndpoint] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMMEndpoint] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMMEndpoint.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IMMEndpointVtbl _vtable;
  late final _GetDataFlowFn = _vtable
      .GetDataFlow.asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Indicates whether the audio endpoint device is a rendering device or a
  /// capture device.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immendpoint-getdataflow>.
  EDataFlow getDataFlow() {
    final pDataFlow = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetDataFlowFn(ptr, pDataFlow));
    if (hr$.isError) {
      free(pDataFlow);
      throw WindowsException(hr$);
    }
    final result$ = pDataFlow.value;
    free(pDataFlow);
    return EDataFlow(result$);
  }

  @override
  String toString() => 'IMMEndpoint(ptr: $ptr)';
}

/// @nodoc
base class IMMEndpointVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> pDataFlow)
    >
  >
  GetDataFlow;
}

@internal
final class IMMEndpointCompanion extends ComCompanion<IMMEndpoint> {
  const IMMEndpointCompanion();

  @pragma('vm:prefer-inline')
  @override
  IMMEndpoint Function(VTablePointer) get fromPointer => IMMEndpoint.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMMEndpoint;
}
