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
import '../propvariant.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IPortableDevicePropVariantCollection = Guid.fromComponents(
  0x89b2e422,
  0x4f1b,
  0x4316,
  Uint8List.fromList(const [0xbc, 0xef, 0xa4, 0x4a, 0xfe, 0xa8, 0x3e, 0xb3]),
);

/// Holds a collection of indexed PROPVARIANT values of the same VARTYPE.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicepropvariantcollection>.
///
/// {@category com}
class IPortableDevicePropVariantCollection extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IPortableDevicePropVariantCollection] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IPortableDevicePropVariantCollection] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IPortableDevicePropVariantCollection(super.ptr)
    : _vtable = ptr.value.cast<IPortableDevicePropVariantCollectionVtbl>().ref;

  /// Creates a new instance of [IPortableDevicePropVariantCollection] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IPortableDevicePropVariantCollection] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IPortableDevicePropVariantCollection.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IPortableDevicePropVariantCollectionVtbl _vtable;
  late final _GetCountFn = _vtable
      .GetCount.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetAtFn =
      _vtable.GetAt.asFunction<
        int Function(VTablePointer, int, Pointer<PROPVARIANT>)
      >();
  late final _AddFn = _vtable
      .Add.asFunction<int Function(VTablePointer, Pointer<PROPVARIANT>)>();
  late final _GetTypeFn = _vtable
      .GetType.asFunction<int Function(VTablePointer, Pointer<Uint16>)>();
  late final _ChangeTypeFn =
      _vtable.ChangeType.asFunction<int Function(VTablePointer, int)>();
  late final _ClearFn = _vtable.Clear.asFunction<int Function(VTablePointer)>();
  late final _RemoveAtFn =
      _vtable.RemoveAt.asFunction<int Function(VTablePointer, int)>();

  /// Retrieves the number of items in this collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicepropvariantcollection-getcount>.
  @pragma('vm:prefer-inline')
  void getCount(Pointer<Uint32> pcElems) {
    final hr$ = HRESULT(_GetCountFn(ptr, pcElems));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// IPortableDevicePropVariantCollection::GetAt method - The GetAt method
  /// retrieves an item from the collection by a zero-based index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicepropvariantcollection-getat>.
  @pragma('vm:prefer-inline')
  void getAt(int dwIndex, Pointer<PROPVARIANT> pValue) {
    final hr$ = HRESULT(_GetAtFn(ptr, dwIndex, pValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// IPortableDevicePropVariantCollection::Add method - The Add method adds an
  /// item to the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicepropvariantcollection-add>.
  @pragma('vm:prefer-inline')
  void add(Pointer<PROPVARIANT> pValue) {
    final hr$ = HRESULT(_AddFn(ptr, pValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the data type of the items in the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicepropvariantcollection-gettype>.
  int getType() {
    final pvt = loggingCalloc<Uint16>();
    final hr$ = HRESULT(_GetTypeFn(ptr, pvt));
    if (hr$.isError) {
      free(pvt);
      throw WindowsException(hr$);
    }
    final result$ = pvt.value;
    free(pvt);
    return result$;
  }

  /// Converts all items in the collection to the specified VARTYPE.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicepropvariantcollection-changetype>.
  @pragma('vm:prefer-inline')
  void changeType(int vt) {
    final hr$ = HRESULT(_ChangeTypeFn(ptr, vt));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Frees, and then removes, all items from the collection.
  ///
  /// The collection is considered empty after calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicepropvariantcollection-clear>.
  @pragma('vm:prefer-inline')
  void clear() {
    final hr$ = HRESULT(_ClearFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// IPortableDevicePropVariantCollection::RemoveAt method - The RemoveAt
  /// method removes the element stored at the location specified by the given
  /// index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicepropvariantcollection-removeat>.
  @pragma('vm:prefer-inline')
  void removeAt(int dwIndex) {
    final hr$ = HRESULT(_RemoveAtFn(ptr, dwIndex));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IPortableDevicePropVariantCollection(ptr: $ptr)';
}

/// @nodoc
base class IPortableDevicePropVariantCollectionVtbl extends Struct {
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
        Pointer<PROPVARIANT> pValue,
      )
    >
  >
  GetAt;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PROPVARIANT> pValue)
    >
  >
  Add;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint16> pvt)>
  >
  GetType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint16 vt)>
  >
  ChangeType;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Clear;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwIndex)>
  >
  RemoveAt;
}

@internal
final class IPortableDevicePropVariantCollectionCompanion
    extends ComCompanion<IPortableDevicePropVariantCollection> {
  const IPortableDevicePropVariantCollectionCompanion();

  @pragma('vm:prefer-inline')
  @override
  IPortableDevicePropVariantCollection Function(VTablePointer)
  get fromPointer => IPortableDevicePropVariantCollection.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IPortableDevicePropVariantCollection;
}
