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
import 'idcompositiondelegatedinktrail.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionInkTrailDevice = GUID.fromComponents(
  0xdf0c7cec,
  0xcdeb,
  0x4d4a,
  Uint8List.fromList(const [0xb9, 0x1c, 0x72, 0x1b, 0xf2, 0x2f, 0x4e, 0x6c]),
);

/// {@category com}
class IDCompositionInkTrailDevice extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionInkTrailDevice] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionInkTrailDevice] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionInkTrailDevice(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionInkTrailDeviceVtbl>().ref;

  /// Creates a new instance of [IDCompositionInkTrailDevice] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionInkTrailDevice] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionInkTrailDevice.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionInkTrailDeviceVtbl _vtable;
  late final _CreateDelegatedInkTrailFn =
      _vtable.CreateDelegatedInkTrail.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateDelegatedInkTrailForSwapChainFn =
      _vtable.CreateDelegatedInkTrailForSwapChain.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();

  /// Throws a [WindowsException] on failure.
  IDCompositionDelegatedInkTrail? createDelegatedInkTrail() {
    final inkTrail = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateDelegatedInkTrailFn(ptr, inkTrail));
    if (hr$.isError) {
      free(inkTrail);
      throw WindowsException(hr$);
    }
    final result$ = inkTrail.value;
    free(inkTrail);
    if (result$.isNull) return null;
    return IDCompositionDelegatedInkTrail(result$);
  }

  /// Throws a [WindowsException] on failure.
  IDCompositionDelegatedInkTrail? createDelegatedInkTrailForSwapChain(
    IUnknown? swapChain,
  ) {
    final inkTrail = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateDelegatedInkTrailForSwapChainFn(
        ptr,
        swapChain?.ptr ?? nullptr,
        inkTrail,
      ),
    );
    if (hr$.isError) {
      free(inkTrail);
      throw WindowsException(hr$);
    }
    final result$ = inkTrail.value;
    free(inkTrail);
    if (result$.isNull) return null;
    return IDCompositionDelegatedInkTrail(result$);
  }

  @override
  String toString() => 'IDCompositionInkTrailDevice(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionInkTrailDeviceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> inkTrail)
    >
  >
  CreateDelegatedInkTrail;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer swapChain,
        Pointer<VTablePointer> inkTrail,
      )
    >
  >
  CreateDelegatedInkTrailForSwapChain;
}

@internal
final class IDCompositionInkTrailDeviceCompanion
    extends ComCompanion<IDCompositionInkTrailDevice> {
  const IDCompositionInkTrailDeviceCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionInkTrailDevice Function(VTablePointer) get fromPointer =>
      IDCompositionInkTrailDevice.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionInkTrailDevice;
}
