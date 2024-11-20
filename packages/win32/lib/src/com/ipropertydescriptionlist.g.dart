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
import 'iunknown.g.dart';

/// @nodoc
final IID_IPropertyDescriptionList = Guid.fromComponents(
  0x1f9fc1d0,
  0xc39b,
  0x4b26,
  Uint8List.fromList(const [0x81, 0x7f, 0x1, 0x19, 0x67, 0xd3, 0x44, 0xe]),
);

/// Exposes methods that extract information from a collection of property
/// descriptions presented as a list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/propsys/nn-propsys-ipropertydescriptionlist>.
///
/// {@category com}
class IPropertyDescriptionList extends IUnknown implements ComInterface {
  /// Creates a new instance of [IPropertyDescriptionList] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IPropertyDescriptionList] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IPropertyDescriptionList(super.ptr)
    : _vtable = ptr.value.cast<IPropertyDescriptionListVtbl>().ref;

  /// Creates a new instance of [IPropertyDescriptionList] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IPropertyDescriptionList] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IPropertyDescriptionList.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IPropertyDescriptionListVtbl _vtable;
  late final _GetCountFn = _vtable
      .GetCount.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetAtFn =
      _vtable.GetAt.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>, Pointer<Pointer>)
      >();

  /// Gets the number of properties included in the property list.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/propsys/nf-propsys-ipropertydescriptionlist-getcount>.
  int getCount() {
    final pcElem = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetCountFn(ptr, pcElem));
    if (hr$.isError) {
      free(pcElem);
      throw WindowsException(hr$);
    }
    final result$ = pcElem.value;
    free(pcElem);
    return result$;
  }

  /// Gets the property description at the specified index in a property
  /// description list.
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
  /// <https://learn.microsoft.com/windows/win32/api/propsys/nf-propsys-ipropertydescriptionlist-getat>.
  T getAt<T extends IUnknown>(int iElem) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(_GetAtFn(ptr, iElem, riid.ptr, ppv));
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  @override
  String toString() => 'IPropertyDescriptionList(ptr: $ptr)';
}

/// @nodoc
base class IPropertyDescriptionListVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pcElem)>
  >
  GetCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 iElem,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  GetAt;
}

@internal
final class IPropertyDescriptionListCompanion
    extends ComCompanion<IPropertyDescriptionList> {
  const IPropertyDescriptionListCompanion();

  @pragma('vm:prefer-inline')
  @override
  IPropertyDescriptionList Function(VTablePointer) get fromPointer =>
      IPropertyDescriptionList.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IPropertyDescriptionList;
}
