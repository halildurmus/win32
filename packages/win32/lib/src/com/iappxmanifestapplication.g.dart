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
final IID_IAppxManifestApplication = Guid.fromComponents(
  0x5da89bf4,
  0x3773,
  0x46be,
  Uint8List.fromList(const [0xb6, 0x50, 0x7e, 0x74, 0x48, 0x63, 0xb7, 0xe8]),
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
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestApplication(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestApplicationVtbl>().ref;

  /// Creates a new instance of [IAppxManifestApplication] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestApplication] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestApplication.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestApplicationVtbl _vtable;
  late final _GetStringValueFn =
      _vtable.GetStringValue.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<PWSTR>)
      >();
  late final _GetAppUserModelIdFn =
      _vtable.GetAppUserModelId.asFunction<
        int Function(VTablePointer, Pointer<PWSTR>)
      >();

  /// Gets the value of a string element in the application metadata section of
  /// the manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestapplication-getstringvalue>.
  PWSTR getStringValue(PCWSTR name) {
    final value = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetStringValueFn(ptr, name, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  /// Gets the application user model identifier.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestapplication-getappusermodelid>.
  PWSTR getAppUserModelId() {
    final appUserModelId = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetAppUserModelIdFn(ptr, appUserModelId));
    if (hr$.isError) {
      free(appUserModelId);
      throw WindowsException(hr$);
    }
    final result$ = appUserModelId.value;
    free(appUserModelId);
    return result$;
  }

  @override
  String toString() => 'IAppxManifestApplication(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestApplicationVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR name, Pointer<PWSTR> value)
    >
  >
  GetStringValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> appUserModelId)
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
  Guid get iid => IID_IAppxManifestApplication;
}
