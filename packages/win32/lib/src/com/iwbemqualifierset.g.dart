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
import '../variant.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IWbemQualifierSet = Guid.fromComponents(
  0xdc12a680,
  0x737f,
  0x11cf,
  Uint8List.fromList(const [0x88, 0x4d, 0x0, 0xaa, 0x0, 0x4b, 0x2e, 0x24]),
);

/// Acts as a container for the entire set of named qualifiers for a single
/// property or entire object (a class or instance).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemqualifierset>.
///
/// {@category com}
class IWbemQualifierSet extends IUnknown implements ComInterface {
  /// Creates a new instance of [IWbemQualifierSet] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWbemQualifierSet]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWbemQualifierSet(super.ptr)
    : _vtable = ptr.value.cast<IWbemQualifierSetVtbl>().ref;

  /// Creates a new instance of [IWbemQualifierSet] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWbemQualifierSet] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWbemQualifierSet.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWbemQualifierSetVtbl _vtable;
  late final _GetFn =
      _vtable.Get.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          int,
          Pointer<VARIANT>,
          Pointer<Int32>,
        )
      >();
  late final _PutFn =
      _vtable.Put.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VARIANT>, int)
      >();
  late final _DeleteFn =
      _vtable.Delete.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _GetNamesFn =
      _vtable.GetNames.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer<SAFEARRAY>>)
      >();
  late final _BeginEnumerationFn =
      _vtable.BeginEnumeration.asFunction<int Function(VTablePointer, int)>();
  late final _NextFn =
      _vtable.Next.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<BSTR>,
          Pointer<VARIANT>,
          Pointer<Int32>,
        )
      >();
  late final _EndEnumerationFn =
      _vtable.EndEnumeration.asFunction<int Function(VTablePointer)>();

  /// Gets the specified named qualifier, if found.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemqualifierset-get>.
  @pragma('vm:prefer-inline')
  void get(
    PCWSTR wszName,
    int lFlags,
    Pointer<VARIANT> pVal,
    Pointer<Int32> plFlavor,
  ) {
    final hr$ = HRESULT(_GetFn(ptr, wszName, lFlags, pVal, plFlavor));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Writes the named qualifier and value.
  ///
  /// The new qualifier overwrites the previous value of the same name. If the
  /// qualifier does not exist, it is created.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemqualifierset-put>.
  @pragma('vm:prefer-inline')
  void put(PCWSTR wszName, Pointer<VARIANT> pVal, int lFlavor) {
    final hr$ = HRESULT(_PutFn(ptr, wszName, pVal, lFlavor));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Deletes the specified qualifier by name.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemqualifierset-delete>.
  @pragma('vm:prefer-inline')
  void delete(PCWSTR wszName) {
    final hr$ = HRESULT(_DeleteFn(ptr, wszName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the names of all of the qualifiers available from the current
  /// object or property.
  ///
  /// Alternately, depending on the filter value of IFlags, this method
  /// retrieves the names of certain qualifiers.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemqualifierset-getnames>.
  Pointer<SAFEARRAY> getNames(int lFlags) {
    final pNames = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_GetNamesFn(ptr, lFlags, pNames));
    if (hr$.isError) {
      free(pNames);
      throw WindowsException(hr$);
    }
    final result$ = pNames.value;
    free(pNames);
    return result$;
  }

  /// Resets before there is an enumeration of all the qualifiers in the object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemqualifierset-beginenumeration>.
  @pragma('vm:prefer-inline')
  void beginEnumeration(int lFlags) {
    final hr$ = HRESULT(_BeginEnumerationFn(ptr, lFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the next qualifier in an enumeration that started with
  /// `IWbemQualifierSet.beginEnumeration`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemqualifierset-next>.
  @pragma('vm:prefer-inline')
  void next(
    int lFlags,
    Pointer<BSTR> pstrName,
    Pointer<VARIANT> pVal,
    Pointer<Int32> plFlavor,
  ) {
    final hr$ = HRESULT(_NextFn(ptr, lFlags, pstrName, pVal, plFlavor));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Call the `IWbemQualifierSet.endEnumeration` method when you plan to
  /// terminate enumerations initiated with `IWbemQualifierSet.beginEnumeration`
  /// and `IWbemQualifierSet.next`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemqualifierset-endenumeration>.
  @pragma('vm:prefer-inline')
  void endEnumeration() {
    final hr$ = HRESULT(_EndEnumerationFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IWbemQualifierSet(ptr: $ptr)';
}

/// @nodoc
base class IWbemQualifierSetVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszName,
        Int32 lFlags,
        Pointer<VARIANT> pVal,
        Pointer<Int32> plFlavor,
      )
    >
  >
  Get;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR wszName,
        Pointer<VARIANT> pVal,
        Int32 lFlavor,
      )
    >
  >
  Put;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR wszName)>
  >
  Delete;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Pointer<Pointer<SAFEARRAY>> pNames,
      )
    >
  >
  GetNames;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 lFlags)>
  >
  BeginEnumeration;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Pointer<BSTR> pstrName,
        Pointer<VARIANT> pVal,
        Pointer<Int32> plFlavor,
      )
    >
  >
  Next;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  EndEnumeration;
}

@internal
final class IWbemQualifierSetCompanion extends ComCompanion<IWbemQualifierSet> {
  const IWbemQualifierSetCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWbemQualifierSet Function(VTablePointer) get fromPointer =>
      IWbemQualifierSet.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWbemQualifierSet;
}
