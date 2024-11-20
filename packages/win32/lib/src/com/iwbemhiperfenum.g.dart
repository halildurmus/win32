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
import 'iwbemobjectaccess.g.dart';

/// @nodoc
final IID_IWbemHiPerfEnum = Guid.fromComponents(
  0x2705c288,
  0x79ae,
  0x11d2,
  Uint8List.fromList(const [0xb3, 0x48, 0x0, 0x10, 0x5a, 0x1f, 0x81, 0x77]),
);

/// Used in refresher operations to provide rapid access to enumerations of
/// instance objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemhiperfenum>.
///
/// {@category com}
class IWbemHiPerfEnum extends IUnknown implements ComInterface {
  /// Creates a new instance of [IWbemHiPerfEnum] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWbemHiPerfEnum]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWbemHiPerfEnum(super.ptr)
    : _vtable = ptr.value.cast<IWbemHiPerfEnumVtbl>().ref;

  /// Creates a new instance of [IWbemHiPerfEnum] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWbemHiPerfEnum] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWbemHiPerfEnum.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWbemHiPerfEnumVtbl _vtable;
  late final _AddObjectsFn =
      _vtable.AddObjects.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          Pointer<Int32>,
          Pointer<VTablePointer>,
        )
      >();
  late final _RemoveObjectsFn =
      _vtable.RemoveObjects.asFunction<
        int Function(VTablePointer, int, int, Pointer<Int32>)
      >();
  late final _GetObjectsFn =
      _vtable.GetObjects.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _RemoveAllFn =
      _vtable.RemoveAll.asFunction<int Function(VTablePointer, int)>();

  /// Adds the supplied instance objects to the enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemhiperfenum-addobjects>.
  @pragma('vm:prefer-inline')
  void addObjects(
    int lFlags,
    int uNumObjects,
    Pointer<Int32> apIds,
    Pointer<VTablePointer> apObj,
  ) {
    final hr$ = HRESULT(_AddObjectsFn(ptr, lFlags, uNumObjects, apIds, apObj));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes objects (identified by their refresher identifiers) from a
  /// refresher.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemhiperfenum-removeobjects>.
  @pragma('vm:prefer-inline')
  void removeObjects(int lFlags, int uNumObjects, Pointer<Int32> apIds) {
    final hr$ = HRESULT(_RemoveObjectsFn(ptr, lFlags, uNumObjects, apIds));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves objects currently residing in the enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemhiperfenum-getobjects>.
  @pragma('vm:prefer-inline')
  void getObjects(
    int lFlags,
    int uNumObjects,
    Pointer<VTablePointer> apObj,
    Pointer<Uint32> puReturned,
  ) {
    final hr$ = HRESULT(
      _GetObjectsFn(ptr, lFlags, uNumObjects, apObj, puReturned),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Empties all objects from the enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemhiperfenum-removeall>.
  @pragma('vm:prefer-inline')
  void removeAll(int lFlags) {
    final hr$ = HRESULT(_RemoveAllFn(ptr, lFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IWbemHiPerfEnum(ptr: $ptr)';
}

/// @nodoc
base class IWbemHiPerfEnumVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Uint32 uNumObjects,
        Pointer<Int32> apIds,
        Pointer<VTablePointer> apObj,
      )
    >
  >
  AddObjects;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Uint32 uNumObjects,
        Pointer<Int32> apIds,
      )
    >
  >
  RemoveObjects;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Uint32 uNumObjects,
        Pointer<VTablePointer> apObj,
        Pointer<Uint32> puReturned,
      )
    >
  >
  GetObjects;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 lFlags)>
  >
  RemoveAll;
}

@internal
final class IWbemHiPerfEnumCompanion extends ComCompanion<IWbemHiPerfEnum> {
  const IWbemHiPerfEnumCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWbemHiPerfEnum Function(VTablePointer) get fromPointer =>
      IWbemHiPerfEnum.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWbemHiPerfEnum;
}
