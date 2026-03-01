// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestOptionalPackageInfo = GUID.fromComponents(
  0x2634847d,
  0x5b5d,
  0x4fe5,
  .fromList(const [0xa2, 0x43, 0x0, 0x2f, 0xf9, 0x5e, 0xdc, 0x7e]),
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
  IAppxManifestOptionalPackageInfo(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestOptionalPackageInfoVtbl>().ref;

  /// Creates a new instance of [IAppxManifestOptionalPackageInfo] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestOptionalPackageInfo] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestOptionalPackageInfo.from(IUnknown interface) =>
      interface.queryInterface();

  final IAppxManifestOptionalPackageInfoVtbl _vtable;
  late final _GetIsOptionalPackageFn =
      _vtable.GetIsOptionalPackage.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();
  late final _GetMainPackageNameFn =
      _vtable.GetMainPackageName.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();

  /// Determines whether the package is optional.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestoptionalpackageinfo-getisoptionalpackage>.
  bool getIsOptionalPackage() {
    final isOptionalPackage = adaptiveCalloc<Int32>();
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
    final mainPackageName = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetMainPackageNameFn(ptr, mainPackageName));
    if (hr$.isError) {
      free(mainPackageName);
      throw WindowsException(hr$);
    }
    final result$ = mainPackageName.value;
    free(mainPackageName);
    return .new(result$);
  }

  @override
  String toString() => 'IAppxManifestOptionalPackageInfo(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestOptionalPackageInfoVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> isOptionalPackage)
    >
  >
  GetIsOptionalPackage;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> mainPackageName,
      )
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
  GUID get iid => IID_IAppxManifestOptionalPackageInfo;
}
