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
import '../enums.g.dart';
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
import 'itypecomp.g.dart';
import 'itypeinfo.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ITypeComp = Guid.fromComponents(
  0x20403,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Provides a fast way to access information that compilers need when binding
/// to and instantiating structures and interfaces.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-itypecomp>.
///
/// {@category com}
class ITypeComp extends IUnknown implements ComInterface {
  /// Creates a new instance of [ITypeComp] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ITypeComp] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ITypeComp(super.ptr) : _vtable = ptr.value.cast<ITypeCompVtbl>().ref;

  /// Creates a new instance of [ITypeComp] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ITypeComp] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ITypeComp.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final ITypeCompVtbl _vtable;
  late final _BindFn =
      _vtable.Bind.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Int32>,
          Pointer<BINDPTR>,
        )
      >();
  late final _BindTypeFn =
      _vtable.BindType.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          int,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
        )
      >();

  /// Maps a name to a member of a type, or binds global variables and functions
  /// contained in a type library.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypecomp-bind>.
  @pragma('vm:prefer-inline')
  void bind(
    PCWSTR szName,
    int lHashVal,
    int wFlags,
    Pointer<VTablePointer> ppTInfo,
    Pointer<Int32> pDescKind,
    Pointer<BINDPTR> pBindPtr,
  ) {
    final hr$ = HRESULT(
      _BindFn(ptr, szName, lHashVal, wFlags, ppTInfo, pDescKind, pBindPtr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Binds to the type descriptions contained within a type library.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-itypecomp-bindtype>.
  @pragma('vm:prefer-inline')
  void bindType(
    PCWSTR szName,
    int lHashVal,
    Pointer<VTablePointer> ppTInfo,
    Pointer<VTablePointer> ppTComp,
  ) {
    final hr$ = HRESULT(_BindTypeFn(ptr, szName, lHashVal, ppTInfo, ppTComp));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ITypeComp(ptr: $ptr)';
}

/// @nodoc
base class ITypeCompVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR szName,
        Uint32 lHashVal,
        Uint16 wFlags,
        Pointer<VTablePointer> ppTInfo,
        Pointer<Int32> pDescKind,
        Pointer<BINDPTR> pBindPtr,
      )
    >
  >
  Bind;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR szName,
        Uint32 lHashVal,
        Pointer<VTablePointer> ppTInfo,
        Pointer<VTablePointer> ppTComp,
      )
    >
  >
  BindType;
}

@internal
final class ITypeCompCompanion extends ComCompanion<ITypeComp> {
  const ITypeCompCompanion();

  @pragma('vm:prefer-inline')
  @override
  ITypeComp Function(VTablePointer) get fromPointer => ITypeComp.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ITypeComp;
}
