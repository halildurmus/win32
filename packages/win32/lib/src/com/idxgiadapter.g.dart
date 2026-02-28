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
import 'idxgiobject.g.dart';
import 'idxgioutput.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDXGIAdapter = GUID.fromComponents(
  0x2411e7e1,
  0x12ac,
  0x4ccf,
  Uint8List.fromList(const [0xbd, 0x14, 0x97, 0x98, 0xe8, 0x53, 0x4d, 0xc0]),
);

/// Represents a display subsystem (including one or more GPUs, DACs and video
/// memory).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dxgi/nn-dxgi-idxgiadapter>.
///
/// {@category com}
class IDXGIAdapter extends IDXGIObject implements ComInterface {
  /// Creates a new instance of [IDXGIAdapter] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDXGIAdapter] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  IDXGIAdapter(super.ptr) : _vtable = ptr.value.cast<IDXGIAdapterVtbl>().ref;

  /// Creates a new instance of [IDXGIAdapter] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDXGIAdapter] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDXGIAdapter.from(IUnknown interface) => interface.queryInterface();

  final IDXGIAdapterVtbl _vtable;
  late final _EnumOutputsFn =
      _vtable.EnumOutputs.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        int Function(VTablePointer, Pointer<DXGI_ADAPTER_DESC>)
      >();
  late final _CheckInterfaceSupportFn =
      _vtable.CheckInterfaceSupport.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<Int64>)
      >();

  /// Enumerate adapter (video card) outputs.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiadapter-enumoutputs>.
  IDXGIOutput? enumOutputs(int output) {
    final ppOutput = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_EnumOutputsFn(ptr, output, ppOutput));
    if (hr$.isError) {
      free(ppOutput);
      throw WindowsException(hr$);
    }
    final result$ = ppOutput.value;
    free(ppOutput);
    if (result$.isNull) return null;
    return IDXGIOutput(result$);
  }

  /// Gets a DXGI 1.0 description of an adapter (or video card).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiadapter-getdesc>.
  Pointer<DXGI_ADAPTER_DESC> getDesc() {
    final pDesc = adaptiveCalloc<DXGI_ADAPTER_DESC>();
    final hr$ = HRESULT(_GetDescFn(ptr, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Checks whether the system supports a device interface for a graphics
  /// component.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgiadapter-checkinterfacesupport>.
  int checkInterfaceSupport(Pointer<GUID> interfaceName) {
    final pUMDVersion = adaptiveCalloc<Int64>();
    final hr$ = HRESULT(
      _CheckInterfaceSupportFn(ptr, interfaceName, pUMDVersion),
    );
    if (hr$.isError) {
      free(pUMDVersion);
      throw WindowsException(hr$);
    }
    final result$ = pUMDVersion.value;
    free(pUMDVersion);
    return result$;
  }

  @override
  String toString() => 'IDXGIAdapter(ptr: $ptr)';
}

/// @nodoc
base class IDXGIAdapterVtbl extends Struct {
  external IDXGIObjectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 output,
        Pointer<VTablePointer> ppOutput,
      )
    >
  >
  EnumOutputs;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<DXGI_ADAPTER_DESC> pDesc)
    >
  >
  GetDesc;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> interfaceName,
        Pointer<Int64> pUMDVersion,
      )
    >
  >
  CheckInterfaceSupport;
}

@internal
final class IDXGIAdapterCompanion extends ComCompanion<IDXGIAdapter> {
  const IDXGIAdapterCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDXGIAdapter Function(VTablePointer) get fromPointer => IDXGIAdapter.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDXGIAdapter;
}
