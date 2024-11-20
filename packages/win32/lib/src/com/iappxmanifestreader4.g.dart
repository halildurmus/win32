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
import 'iappxmanifestoptionalpackageinfo.g.dart';
import 'iappxmanifestreader3.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestReader4 = Guid.fromComponents(
  0x4579bb7c,
  0x741d,
  0x4161,
  Uint8List.fromList(const [0xb5, 0xa1, 0x47, 0xbd, 0x3b, 0x78, 0xad, 0x9b]),
);

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/mt796948(v=vs.85)>.
///
/// {@category com}
class IAppxManifestReader4 extends IAppxManifestReader3
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestReader4] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxManifestReader4]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestReader4(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestReader4Vtbl>().ref;

  /// Creates a new instance of [IAppxManifestReader4] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestReader4] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestReader4.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestReader4Vtbl _vtable;
  late final _GetOptionalPackageInfoFn =
      _vtable.GetOptionalPackageInfo.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Throws a [WindowsException] on failure.
  IAppxManifestOptionalPackageInfo? getOptionalPackageInfo() {
    final optionalPackageInfo = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetOptionalPackageInfoFn(ptr, optionalPackageInfo));
    if (hr$.isError) {
      free(optionalPackageInfo);
      throw WindowsException(hr$);
    }
    final result$ = optionalPackageInfo.value;
    free(optionalPackageInfo);
    if (result$.isNull) return null;
    return IAppxManifestOptionalPackageInfo(result$);
  }

  @override
  String toString() => 'IAppxManifestReader4(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestReader4Vtbl extends Struct {
  external IAppxManifestReader3Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> optionalPackageInfo,
      )
    >
  >
  GetOptionalPackageInfo;
}

@internal
final class IAppxManifestReader4Companion
    extends ComCompanion<IAppxManifestReader4> {
  const IAppxManifestReader4Companion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestReader4 Function(VTablePointer) get fromPointer =>
      IAppxManifestReader4.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestReader4;
}
