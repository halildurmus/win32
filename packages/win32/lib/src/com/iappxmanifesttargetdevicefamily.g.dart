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
final IID_IAppxManifestTargetDeviceFamily = Guid.fromComponents(
  0x9091b09b,
  0xc8d5,
  0x4f31,
  Uint8List.fromList(const [0x86, 0x87, 0xa3, 0x38, 0x25, 0x9f, 0xae, 0xfb]),
);

/// Retrieves information about the target device family from the
/// AppxManifest.xml.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifesttargetdevicefamily>.
///
/// {@category com}
class IAppxManifestTargetDeviceFamily extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestTargetDeviceFamily] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestTargetDeviceFamily] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestTargetDeviceFamily(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestTargetDeviceFamilyVtbl>().ref;

  /// Creates a new instance of [IAppxManifestTargetDeviceFamily] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestTargetDeviceFamily] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestTargetDeviceFamily.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestTargetDeviceFamilyVtbl _vtable;
  late final _GetNameFn =
      _vtable.GetName.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetMinVersionFn = _vtable
      .GetMinVersion.asFunction<int Function(VTablePointer, Pointer<Uint64>)>();
  late final _GetMaxVersionTestedFn =
      _vtable.GetMaxVersionTested.asFunction<
        int Function(VTablePointer, Pointer<Uint64>)
      >();

  /// Gets the name of the target device family from the AppxManifest.xml..
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifesttargetdevicefamily-getname>.
  PWSTR getName() {
    final name = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetNameFn(ptr, name));
    if (hr$.isError) {
      free(name);
      throw WindowsException(hr$);
    }
    final result$ = name.value;
    free(name);
    return result$;
  }

  /// Gets the minimum version of the target device family from the
  /// AppxManifest.xml.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifesttargetdevicefamily-getminversion>.
  int getMinVersion() {
    final minVersion = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_GetMinVersionFn(ptr, minVersion));
    if (hr$.isError) {
      free(minVersion);
      throw WindowsException(hr$);
    }
    final result$ = minVersion.value;
    free(minVersion);
    return result$;
  }

  /// Gets the maximum version tested from the AppxManifest.xml.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifesttargetdevicefamily-getmaxversiontested>.
  int getMaxVersionTested() {
    final maxVersionTested = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_GetMaxVersionTestedFn(ptr, maxVersionTested));
    if (hr$.isError) {
      free(maxVersionTested);
      throw WindowsException(hr$);
    }
    final result$ = maxVersionTested.value;
    free(maxVersionTested);
    return result$;
  }

  @override
  String toString() => 'IAppxManifestTargetDeviceFamily(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestTargetDeviceFamilyVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> name)>
  >
  GetName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint64> minVersion)
    >
  >
  GetMinVersion;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint64> maxVersionTested)
    >
  >
  GetMaxVersionTested;
}

@internal
final class IAppxManifestTargetDeviceFamilyCompanion
    extends ComCompanion<IAppxManifestTargetDeviceFamily> {
  const IAppxManifestTargetDeviceFamilyCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestTargetDeviceFamily Function(VTablePointer) get fromPointer =>
      IAppxManifestTargetDeviceFamily.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestTargetDeviceFamily;
}
