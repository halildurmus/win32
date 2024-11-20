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
final IID_IAppxManifestProperties = Guid.fromComponents(
  0x3faf64d,
  0xf26f,
  0x4b2c,
  Uint8List.fromList(const [0xaa, 0xf7, 0x8f, 0xe7, 0x78, 0x9b, 0x8b, 0xca]),
);

/// Provides read-only access to the properties section of a package manifest.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestproperties>.
///
/// {@category com}
class IAppxManifestProperties extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestProperties] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxManifestProperties]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestProperties(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestPropertiesVtbl>().ref;

  /// Creates a new instance of [IAppxManifestProperties] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestProperties] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestProperties.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestPropertiesVtbl _vtable;
  late final _GetBoolValueFn =
      _vtable.GetBoolValue.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<BOOL>)
      >();
  late final _GetStringValueFn =
      _vtable.GetStringValue.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<PWSTR>)
      >();

  /// Gets the value of the specified Boolean element in the properties section.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestproperties-getboolvalue>.
  bool getBoolValue(PCWSTR name) {
    final value = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_GetBoolValueFn(ptr, name, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$ != FALSE;
  }

  /// Gets the value of the specified string element in the properties section.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestproperties-getstringvalue>.
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

  @override
  String toString() => 'IAppxManifestProperties(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestPropertiesVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR name, Pointer<BOOL> value)
    >
  >
  GetBoolValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR name, Pointer<PWSTR> value)
    >
  >
  GetStringValue;
}

@internal
final class IAppxManifestPropertiesCompanion
    extends ComCompanion<IAppxManifestProperties> {
  const IAppxManifestPropertiesCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestProperties Function(VTablePointer) get fromPointer =>
      IAppxManifestProperties.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestProperties;
}
