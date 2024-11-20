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
final IID_IAppxManifestOptionalPackageInfo = Guid.fromComponents(
  0x2634847d,
  0x5b5d,
  0x4fe5,
  Uint8List.fromList(const [0xa2, 0x43, 0x0, 0x2f, 0xf9, 0x5e, 0xdc, 0x7e]),
);

/// Provides access to attribute values of the optional package information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestoptionalpackageinfo>.
///
/// {@category com}
class IAppxManifestOptionalPackageInfo extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestOptionalPackageInfo] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestOptionalPackageInfo] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestOptionalPackageInfo(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestOptionalPackageInfoVtbl>().ref;

  /// Creates a new instance of [IAppxManifestOptionalPackageInfo] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestOptionalPackageInfo] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestOptionalPackageInfo.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestOptionalPackageInfoVtbl _vtable;
  late final _GetIsOptionalPackageFn =
      _vtable.GetIsOptionalPackage.asFunction<
        int Function(VTablePointer, Pointer<BOOL>)
      >();
  late final _GetMainPackageNameFn =
      _vtable.GetMainPackageName.asFunction<
        int Function(VTablePointer, Pointer<PWSTR>)
      >();

  /// Determines whether the package is optional.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestoptionalpackageinfo-getisoptionalpackage>.
  bool getIsOptionalPackage() {
    final isOptionalPackage = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_GetIsOptionalPackageFn(ptr, isOptionalPackage));
    if (hr$.isError) {
      free(isOptionalPackage);
      throw WindowsException(hr$);
    }
    final result$ = isOptionalPackage.value;
    free(isOptionalPackage);
    return result$ != FALSE;
  }

  /// Gets the main package name from the optional package.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestoptionalpackageinfo-getmainpackagename>.
  PWSTR getMainPackageName() {
    final mainPackageName = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetMainPackageNameFn(ptr, mainPackageName));
    if (hr$.isError) {
      free(mainPackageName);
      throw WindowsException(hr$);
    }
    final result$ = mainPackageName.value;
    free(mainPackageName);
    return result$;
  }

  @override
  String toString() => 'IAppxManifestOptionalPackageInfo(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestOptionalPackageInfoVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BOOL> isOptionalPackage)
    >
  >
  GetIsOptionalPackage;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> mainPackageName)
    >
  >
  GetMainPackageName;
}

@internal
final class IAppxManifestOptionalPackageInfoCompanion
    extends ComCompanion<IAppxManifestOptionalPackageInfo> {
  const IAppxManifestOptionalPackageInfoCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestOptionalPackageInfo Function(VTablePointer) get fromPointer =>
      IAppxManifestOptionalPackageInfo.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestOptionalPackageInfo;
}
