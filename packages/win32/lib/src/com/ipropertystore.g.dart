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
import '../propvariant.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IPropertyStore = Guid.fromComponents(
  0x886d8eeb,
  0x8cf2,
  0x4446,
  Uint8List.fromList(const [0x8d, 0x2, 0xcd, 0xba, 0x1d, 0xbd, 0xcf, 0x99]),
);

/// This interface exposes methods used to enumerate and manipulate property
/// values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/propsys/nn-propsys-ipropertystore>.
///
/// {@category com}
class IPropertyStore extends IUnknown implements ComInterface {
  /// Creates a new instance of [IPropertyStore] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IPropertyStore]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IPropertyStore(super.ptr)
    : _vtable = ptr.value.cast<IPropertyStoreVtbl>().ref;

  /// Creates a new instance of [IPropertyStore] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IPropertyStore] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IPropertyStore.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IPropertyStoreVtbl _vtable;
  late final _GetCountFn = _vtable
      .GetCount.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetAtFn =
      _vtable.GetAt.asFunction<
        int Function(VTablePointer, int, Pointer<PROPERTYKEY>)
      >();
  late final _GetValueFn =
      _vtable.GetValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<PROPVARIANT>)
      >();
  late final _SetValueFn =
      _vtable.SetValue.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<PROPVARIANT>)
      >();
  late final _CommitFn =
      _vtable.Commit.asFunction<int Function(VTablePointer)>();

  /// This method returns a count of the number of properties that are attached
  /// to the file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/propsys/nf-propsys-ipropertystore-getcount>.
  int getCount() {
    final cProps = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetCountFn(ptr, cProps));
    if (hr$.isError) {
      free(cProps);
      throw WindowsException(hr$);
    }
    final result$ = cProps.value;
    free(cProps);
    return result$;
  }

  /// Gets a property key from the property array of an item.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/propsys/nf-propsys-ipropertystore-getat>.
  Pointer<PROPERTYKEY> getAt(int iProp) {
    final pkey = loggingCalloc<PROPERTYKEY>();
    final hr$ = HRESULT(_GetAtFn(ptr, iProp, pkey));
    if (hr$.isError) {
      free(pkey);
      throw WindowsException(hr$);
    }
    return pkey;
  }

  /// This method retrieves the data for a specific property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/propsys/nf-propsys-ipropertystore-getvalue>.
  Pointer<PROPVARIANT> getValue(Pointer<PROPERTYKEY> key) {
    final pv = loggingCalloc<PROPVARIANT>();
    final hr$ = HRESULT(_GetValueFn(ptr, key, pv));
    if (hr$.isError) {
      free(pv);
      throw WindowsException(hr$);
    }
    return pv;
  }

  /// This method sets a property value or replaces or removes an existing
  /// value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/propsys/nf-propsys-ipropertystore-setvalue>.
  @pragma('vm:prefer-inline')
  void setValue(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> propvar) {
    final hr$ = HRESULT(_SetValueFn(ptr, key, propvar));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// After a change has been made, this method saves the changes.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/propsys/nf-propsys-ipropertystore-commit>.
  @pragma('vm:prefer-inline')
  void commit() {
    final hr$ = HRESULT(_CommitFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IPropertyStore(ptr: $ptr)';
}

/// @nodoc
base class IPropertyStoreVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> cProps)>
  >
  GetCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 iProp,
        Pointer<PROPERTYKEY> pkey,
      )
    >
  >
  GetAt;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<PROPVARIANT> pv,
      )
    >
  >
  GetValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<PROPVARIANT> propvar,
      )
    >
  >
  SetValue;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Commit;
}

@internal
final class IPropertyStoreCompanion extends ComCompanion<IPropertyStore> {
  const IPropertyStoreCompanion();

  @pragma('vm:prefer-inline')
  @override
  IPropertyStore Function(VTablePointer) get fromPointer => IPropertyStore.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IPropertyStore;
}
