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
import '../propertykey.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IPortableDeviceKeyCollection = Guid.fromComponents(
  0xdada2357,
  0xe0ad,
  0x492e,
  Uint8List.fromList(const [0x98, 0xdb, 0xdd, 0x61, 0xc5, 0x3b, 0xa3, 0x53]),
);

/// Holds a collection of PROPERTYKEY values.
///
/// This interface can be retrieved from a method or, if a new object is
/// required, call CoCreate with CLSID_PortableDeviceKeyCollection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicekeycollection>.
///
/// {@category com}
class IPortableDeviceKeyCollection extends IUnknown implements ComInterface {
  /// Creates a new instance of [IPortableDeviceKeyCollection] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IPortableDeviceKeyCollection] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IPortableDeviceKeyCollection(super.ptr)
    : _vtable = ptr.value.cast<IPortableDeviceKeyCollectionVtbl>().ref;

  /// Creates a new instance of [IPortableDeviceKeyCollection] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IPortableDeviceKeyCollection] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IPortableDeviceKeyCollection.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IPortableDeviceKeyCollectionVtbl _vtable;
  late final _GetCountFn = _vtable
      .GetCount.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetAtFn =
      _vtable.GetAt.asFunction<
        int Function(VTablePointer, int, Pointer<PROPERTYKEY>)
      >();
  late final _AddFn = _vtable
      .Add.asFunction<int Function(VTablePointer, Pointer<PROPERTYKEY>)>();
  late final _ClearFn = _vtable.Clear.asFunction<int Function(VTablePointer)>();
  late final _RemoveAtFn =
      _vtable.RemoveAt.asFunction<int Function(VTablePointer, int)>();

  /// Retrieves the number of keys in this collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicekeycollection-getcount>.
  @pragma('vm:prefer-inline')
  void getCount(Pointer<Uint32> pcElems) {
    final hr$ = HRESULT(_GetCountFn(ptr, pcElems));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a PROPERTYKEY from the collection by index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicekeycollection-getat>.
  @pragma('vm:prefer-inline')
  void getAt(int dwIndex, Pointer<PROPERTYKEY> pKey) {
    final hr$ = HRESULT(_GetAtFn(ptr, dwIndex, pKey));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a property key to the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicekeycollection-add>.
  @pragma('vm:prefer-inline')
  void add(Pointer<PROPERTYKEY> key) {
    final hr$ = HRESULT(_AddFn(ptr, key));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// IPortableDeviceKeyCollection::Clear method - The Clear method deletes all
  /// items from the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicekeycollection-clear>.
  @pragma('vm:prefer-inline')
  void clear() {
    final hr$ = HRESULT(_ClearFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// IPortableDeviceKeyCollection::RemoveAt method - The RemoveAt method
  /// removes the element stored at the location specified by the given index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicekeycollection-removeat>.
  @pragma('vm:prefer-inline')
  void removeAt(int dwIndex) {
    final hr$ = HRESULT(_RemoveAtFn(ptr, dwIndex));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IPortableDeviceKeyCollection(ptr: $ptr)';
}

/// @nodoc
base class IPortableDeviceKeyCollectionVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pcElems)>
  >
  GetCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIndex,
        Pointer<PROPERTYKEY> pKey,
      )
    >
  >
  GetAt;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PROPERTYKEY> key)
    >
  >
  Add;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Clear;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwIndex)>
  >
  RemoveAt;
}

@internal
final class IPortableDeviceKeyCollectionCompanion
    extends ComCompanion<IPortableDeviceKeyCollection> {
  const IPortableDeviceKeyCollectionCompanion();

  @pragma('vm:prefer-inline')
  @override
  IPortableDeviceKeyCollection Function(VTablePointer) get fromPointer =>
      IPortableDeviceKeyCollection.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IPortableDeviceKeyCollection;
}
