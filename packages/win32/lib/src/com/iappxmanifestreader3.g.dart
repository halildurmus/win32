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
import 'iappxmanifestcapabilitiesenumerator.g.dart';
import 'iappxmanifestreader2.g.dart';
import 'iappxmanifesttargetdevicefamiliesenumerator.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestReader3 = Guid.fromComponents(
  0xc43825ab,
  0x69b7,
  0x400a,
  Uint8List.fromList(const [0x97, 0x9, 0xcc, 0x37, 0xf5, 0xa7, 0x2d, 0x24]),
);

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/mt796945(v=vs.85)>.
///
/// {@category com}
class IAppxManifestReader3 extends IAppxManifestReader2
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestReader3] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxManifestReader3]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestReader3(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestReader3Vtbl>().ref;

  /// Creates a new instance of [IAppxManifestReader3] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestReader3] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestReader3.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestReader3Vtbl _vtable;
  late final _GetCapabilitiesByCapabilityClassFn =
      _vtable.GetCapabilitiesByCapabilityClass.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetTargetDeviceFamiliesFn =
      _vtable.GetTargetDeviceFamilies.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Throws a [WindowsException] on failure.
  IAppxManifestCapabilitiesEnumerator? getCapabilitiesByCapabilityClass(
    APPX_CAPABILITY_CLASS_TYPE capabilityClass,
  ) {
    final capabilities = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetCapabilitiesByCapabilityClassFn(ptr, capabilityClass, capabilities),
    );
    if (hr$.isError) {
      free(capabilities);
      throw WindowsException(hr$);
    }
    final result$ = capabilities.value;
    free(capabilities);
    if (result$.isNull) return null;
    return IAppxManifestCapabilitiesEnumerator(result$);
  }

  /// Throws a [WindowsException] on failure.
  IAppxManifestTargetDeviceFamiliesEnumerator? getTargetDeviceFamilies() {
    final targetDeviceFamilies = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetTargetDeviceFamiliesFn(ptr, targetDeviceFamilies));
    if (hr$.isError) {
      free(targetDeviceFamilies);
      throw WindowsException(hr$);
    }
    final result$ = targetDeviceFamilies.value;
    free(targetDeviceFamilies);
    if (result$.isNull) return null;
    return IAppxManifestTargetDeviceFamiliesEnumerator(result$);
  }

  @override
  String toString() => 'IAppxManifestReader3(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestReader3Vtbl extends Struct {
  external IAppxManifestReader2Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 capabilityClass,
        Pointer<VTablePointer> capabilities,
      )
    >
  >
  GetCapabilitiesByCapabilityClass;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> targetDeviceFamilies,
      )
    >
  >
  GetTargetDeviceFamilies;
}

@internal
final class IAppxManifestReader3Companion
    extends ComCompanion<IAppxManifestReader3> {
  const IAppxManifestReader3Companion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestReader3 Function(VTablePointer) get fromPointer =>
      IAppxManifestReader3.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestReader3;
}
