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
import 'itypeinfo.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IProvideClassInfo = Guid.fromComponents(
  0xb196b283,
  0xbab4,
  0x101a,
  Uint8List.fromList(const [0xb6, 0x9c, 0x0, 0xaa, 0x0, 0x34, 0x1d, 0x7]),
);

/// Provides access to the type information for an object's coclass entry in its
/// type library.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ocidl/nn-ocidl-iprovideclassinfo>.
///
/// {@category com}
class IProvideClassInfo extends IUnknown implements ComInterface {
  /// Creates a new instance of [IProvideClassInfo] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IProvideClassInfo]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IProvideClassInfo(super.ptr)
    : _vtable = ptr.value.cast<IProvideClassInfoVtbl>().ref;

  /// Creates a new instance of [IProvideClassInfo] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IProvideClassInfo] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IProvideClassInfo.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IProvideClassInfoVtbl _vtable;
  late final _GetClassInfoFn =
      _vtable.GetClassInfo.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Retrieves a pointer to the ITypeInfo interface for the object's type
  /// information.
  ///
  /// The type information for an object corresponds to the object's coclass
  /// entry in a type library.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iprovideclassinfo-getclassinfo>.
  ITypeInfo? getClassInfo() {
    final ppTI = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetClassInfoFn(ptr, ppTI));
    if (hr$.isError) {
      free(ppTI);
      throw WindowsException(hr$);
    }
    final result$ = ppTI.value;
    free(ppTI);
    if (result$.isNull) return null;
    return ITypeInfo(result$);
  }

  @override
  String toString() => 'IProvideClassInfo(ptr: $ptr)';
}

/// @nodoc
base class IProvideClassInfoVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppTI)
    >
  >
  GetClassInfo;
}

@internal
final class IProvideClassInfoCompanion extends ComCompanion<IProvideClassInfo> {
  const IProvideClassInfoCompanion();

  @pragma('vm:prefer-inline')
  @override
  IProvideClassInfo Function(VTablePointer) get fromPointer =>
      IProvideClassInfo.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IProvideClassInfo;
}
