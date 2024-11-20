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
final IID_ISupportErrorInfo = Guid.fromComponents(
  0xdf0b3d60,
  0x548f,
  0x101b,
  Uint8List.fromList(const [0x8e, 0x65, 0x8, 0x0, 0x2b, 0x2b, 0xd1, 0x19]),
);

/// Ensures that error information can be propagated up the call chain
/// correctly.
///
/// Automation objects that use the error handling interfaces must implement
/// ISupportErrorInfo.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-isupporterrorinfo>.
///
/// {@category com}
class ISupportErrorInfo extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISupportErrorInfo] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISupportErrorInfo]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISupportErrorInfo(super.ptr)
    : _vtable = ptr.value.cast<ISupportErrorInfoVtbl>().ref;

  /// Creates a new instance of [ISupportErrorInfo] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISupportErrorInfo] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISupportErrorInfo.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISupportErrorInfoVtbl _vtable;
  late final _InterfaceSupportsErrorInfoFn =
      _vtable.InterfaceSupportsErrorInfo.asFunction<
        int Function(VTablePointer, Pointer<GUID>)
      >();

  /// Indicates whether an interface supports the IErrorInfo interface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-isupporterrorinfo-interfacesupportserrorinfo>.
  @pragma('vm:prefer-inline')
  void interfaceSupportsErrorInfo(Pointer<GUID> riid) {
    final hr$ = HRESULT(_InterfaceSupportsErrorInfoFn(ptr, riid));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISupportErrorInfo(ptr: $ptr)';
}

/// @nodoc
base class ISupportErrorInfoVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> riid)>
  >
  InterfaceSupportsErrorInfo;
}

@internal
final class ISupportErrorInfoCompanion extends ComCompanion<ISupportErrorInfo> {
  const ISupportErrorInfoCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISupportErrorInfo Function(VTablePointer) get fromPointer =>
      ISupportErrorInfo.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISupportErrorInfo;
}
