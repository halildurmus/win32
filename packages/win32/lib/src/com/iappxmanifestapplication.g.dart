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
final IID_IAppxManifestApplication = GUID.fromComponents(
  0x5da89bf4,
  0x3773,
  0x46be,
  .fromList(const [0xb6, 0x50, 0x7e, 0x74, 0x48, 0x63, 0xb7, 0xe8]),
);

/// Provides access to attribute values of the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestapplication>.
///
/// {@category com}
class IAppxManifestApplication extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestApplication] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestApplication] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IAppxManifestApplication(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestApplicationVtbl>().ref;

  /// Creates a new instance of [IAppxManifestApplication] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestApplication] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestApplication.from(IUnknown interface) =>
      interface.queryInterface();

  final IAppxManifestApplicationVtbl _vtable;
  late final _GetStringValueFn =
      _vtable.GetStringValue.asFunction<
        int Function(VTablePointer, Pointer<Utf16>, Pointer<Pointer<Utf16>>)
      >();
  late final _GetAppUserModelIdFn =
      _vtable.GetAppUserModelId.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();

  /// Gets the value of a string element in the application metadata section of
  /// the manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestapplication-getstringvalue>.
  PWSTR getStringValue(PCWSTR name) {
    final value = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetStringValueFn(ptr, name, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return .new(result$);
  }

  /// Gets the application user model identifier.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestapplication-getappusermodelid>.
  PWSTR getAppUserModelId() {
    final appUserModelId = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetAppUserModelIdFn(ptr, appUserModelId));
    if (hr$.isError) {
      free(appUserModelId);
      throw WindowsException(hr$);
    }
    final result$ = appUserModelId.value;
    free(appUserModelId);
    return .new(result$);
  }

  @override
  String toString() => 'IAppxManifestApplication(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestApplicationVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> name,
        Pointer<Pointer<Utf16>> value,
      )
    >
  >
  GetStringValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> appUserModelId,
      )
    >
  >
  GetAppUserModelId;
}

@internal
final class IAppxManifestApplicationCompanion
    extends ComCompanion<IAppxManifestApplication> {
  const IAppxManifestApplicationCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestApplication Function(VTablePointer) get fromPointer =>
      IAppxManifestApplication.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAppxManifestApplication;
}
