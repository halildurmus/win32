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
import 'interface.g.dart';
import 'iportabledevicevalues.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IPortableDeviceValuesCollection = Guid.fromComponents(
  0x6e3f2d79,
  0x4e07,
  0x48c4,
  Uint8List.fromList(const [0x82, 0x8, 0xd8, 0xc2, 0xe5, 0xaf, 0x4a, 0x99]),
);

/// Holds a collection of zero-based indexed IPortableDeviceValues interfaces.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevaluescollection>.
///
/// {@category com}
class IPortableDeviceValuesCollection extends IUnknown implements ComInterface {
  /// Creates a new instance of [IPortableDeviceValuesCollection] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IPortableDeviceValuesCollection] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IPortableDeviceValuesCollection(super.ptr)
    : _vtable = ptr.value.cast<IPortableDeviceValuesCollectionVtbl>().ref;

  /// Creates a new instance of [IPortableDeviceValuesCollection] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IPortableDeviceValuesCollection] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IPortableDeviceValuesCollection.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IPortableDeviceValuesCollectionVtbl _vtable;
  late final _GetCountFn = _vtable
      .GetCount.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetAtFn =
      _vtable.GetAt.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _AddFn =
      _vtable.Add.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _ClearFn = _vtable.Clear.asFunction<int Function(VTablePointer)>();
  late final _RemoveAtFn =
      _vtable.RemoveAt.asFunction<int Function(VTablePointer, int)>();

  /// IPortableDeviceValuesCollection::GetCount method - The GetCount method
  /// retrieves the number of items in the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevaluescollection-getcount>.
  @pragma('vm:prefer-inline')
  void getCount(Pointer<Uint32> pcElems) {
    final hr$ = HRESULT(_GetCountFn(ptr, pcElems));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// IPortableDeviceValuesCollection::GetAt method - The GetAt method retrieves
  /// an item from the collection by a zero-based index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevaluescollection-getat>.
  IPortableDeviceValues? getAt(int dwIndex) {
    final ppValues = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetAtFn(ptr, dwIndex, ppValues));
    if (hr$.isError) {
      free(ppValues);
      throw WindowsException(hr$);
    }
    final result$ = ppValues.value;
    free(ppValues);
    if (result$.isNull) return null;
    return IPortableDeviceValues(result$);
  }

  /// IPortableDeviceValuesCollection::Add method - The Add method adds an item
  /// to the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevaluescollection-add>.
  @pragma('vm:prefer-inline')
  void add(IPortableDeviceValues? pValues) {
    final hr$ = HRESULT(_AddFn(ptr, pValues?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Releases all items from the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevaluescollection-clear>.
  @pragma('vm:prefer-inline')
  void clear() {
    final hr$ = HRESULT(_ClearFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// IPortableDeviceValuesCollection::RemoveAt method - The RemoveAt method
  /// removes the element stored at the location specified by the given index.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/wpd_sdk/iportabledevicevaluescollection-removeat>.
  @pragma('vm:prefer-inline')
  void removeAt(int dwIndex) {
    final hr$ = HRESULT(_RemoveAtFn(ptr, dwIndex));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IPortableDeviceValuesCollection(ptr: $ptr)';
}

/// @nodoc
base class IPortableDeviceValuesCollectionVtbl extends Struct {
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
        Pointer<VTablePointer> ppValues,
      )
    >
  >
  GetAt;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pValues)>
  >
  Add;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Clear;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwIndex)>
  >
  RemoveAt;
}

@internal
final class IPortableDeviceValuesCollectionCompanion
    extends ComCompanion<IPortableDeviceValuesCollection> {
  const IPortableDeviceValuesCollectionCompanion();

  @pragma('vm:prefer-inline')
  @override
  IPortableDeviceValuesCollection Function(VTablePointer) get fromPointer =>
      IPortableDeviceValuesCollection.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IPortableDeviceValuesCollection;
}
