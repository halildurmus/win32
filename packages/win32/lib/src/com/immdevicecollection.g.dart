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
import 'immdevice.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IMMDeviceCollection = Guid.fromComponents(
  0xbd7a1be,
  0x7a1a,
  0x44db,
  Uint8List.fromList(const [0x83, 0x97, 0xcc, 0x53, 0x92, 0x38, 0x7b, 0x5e]),
);

/// Represents a collection of multimedia device resources.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nn-mmdeviceapi-immdevicecollection>.
///
/// {@category com}
class IMMDeviceCollection extends IUnknown implements ComInterface {
  /// Creates a new instance of [IMMDeviceCollection] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMMDeviceCollection]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMMDeviceCollection(super.ptr)
    : _vtable = ptr.value.cast<IMMDeviceCollectionVtbl>().ref;

  /// Creates a new instance of [IMMDeviceCollection] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMMDeviceCollection] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMMDeviceCollection.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IMMDeviceCollectionVtbl _vtable;
  late final _GetCountFn = _vtable
      .GetCount.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _ItemFn =
      _vtable.Item.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();

  /// Retrieves a count of the devices in the device collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdevicecollection-getcount>.
  int getCount() {
    final pcDevices = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetCountFn(ptr, pcDevices));
    if (hr$.isError) {
      free(pcDevices);
      throw WindowsException(hr$);
    }
    final result$ = pcDevices.value;
    free(pcDevices);
    return result$;
  }

  /// Retrieves a pointer to the specified item in the device collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdevicecollection-item>.
  IMMDevice? item(int nDevice) {
    final ppDevice = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_ItemFn(ptr, nDevice, ppDevice));
    if (hr$.isError) {
      free(ppDevice);
      throw WindowsException(hr$);
    }
    final result$ = ppDevice.value;
    free(ppDevice);
    if (result$.isNull) return null;
    return IMMDevice(result$);
  }

  @override
  String toString() => 'IMMDeviceCollection(ptr: $ptr)';
}

/// @nodoc
base class IMMDeviceCollectionVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pcDevices)
    >
  >
  GetCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 nDevice,
        Pointer<VTablePointer> ppDevice,
      )
    >
  >
  Item;
}

@internal
final class IMMDeviceCollectionCompanion
    extends ComCompanion<IMMDeviceCollection> {
  const IMMDeviceCollectionCompanion();

  @pragma('vm:prefer-inline')
  @override
  IMMDeviceCollection Function(VTablePointer) get fromPointer =>
      IMMDeviceCollection.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMMDeviceCollection;
}
