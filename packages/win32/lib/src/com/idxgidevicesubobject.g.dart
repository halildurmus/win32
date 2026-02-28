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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDXGIDeviceSubObject = GUID.fromComponents(
  0x3d3e0379,
  0xf9de,
  0x4d58,
  Uint8List.fromList(const [0xbb, 0x6c, 0x18, 0xd6, 0x29, 0x92, 0xf1, 0xa6]),
);

/// Inherited from objects that are tied to the device so that they can retrieve
/// a pointer to it.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dxgi/nn-dxgi-idxgidevicesubobject>.
///
/// {@category com}
class IDXGIDeviceSubObject extends IDXGIObject implements ComInterface {
  /// Creates a new instance of [IDXGIDeviceSubObject] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDXGIDeviceSubObject]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDXGIDeviceSubObject(super.ptr)
    : _vtable = ptr.value.cast<IDXGIDeviceSubObjectVtbl>().ref;

  /// Creates a new instance of [IDXGIDeviceSubObject] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDXGIDeviceSubObject] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDXGIDeviceSubObject.from(IUnknown interface) =>
      interface.queryInterface();

  final IDXGIDeviceSubObjectVtbl _vtable;
  late final _GetDeviceFn =
      _vtable.GetDevice.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<Pointer>)
      >();

  /// Retrieves the device.
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgidevicesubobject-getdevice>.
  T getDevice<T extends IUnknown>() {
    final companion = ComInterface.type<T>();
    final riid = companion.iid.toNative();
    final ppDevice = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(_GetDeviceFn(ptr, riid, ppDevice));
    free(riid);
    if (hr$.isError) {
      free(ppDevice);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppDevice.value.cast());
    free(ppDevice);
    return result;
  }

  @override
  String toString() => 'IDXGIDeviceSubObject(ptr: $ptr)';
}

/// @nodoc
base class IDXGIDeviceSubObjectVtbl extends Struct {
  external IDXGIObjectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> riid,
        Pointer<Pointer> ppDevice,
      )
    >
  >
  GetDevice;
}

@internal
final class IDXGIDeviceSubObjectCompanion
    extends ComCompanion<IDXGIDeviceSubObject> {
  const IDXGIDeviceSubObjectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDXGIDeviceSubObject Function(VTablePointer) get fromPointer =>
      IDXGIDeviceSubObject.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDXGIDeviceSubObject;
}
