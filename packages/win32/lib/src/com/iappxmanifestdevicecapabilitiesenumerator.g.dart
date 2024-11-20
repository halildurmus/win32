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
final IID_IAppxManifestDeviceCapabilitiesEnumerator = GUID.fromComponents(
  0x30204541,
  0x427b,
  0x4a1c,
  Uint8List.fromList(const [0xba, 0xcf, 0x65, 0x5b, 0xf4, 0x63, 0xa5, 0x40]),
);

/// Enumerates the device capabilities defined in the package manifest.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestdevicecapabilitiesenumerator>.
///
/// {@category com}
class IAppxManifestDeviceCapabilitiesEnumerator extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestDeviceCapabilitiesEnumerator] from
  /// a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestDeviceCapabilitiesEnumerator] interface. The [ptr] must not
  /// be [nullptr]; otherwise, an assertion error is thrown.
  IAppxManifestDeviceCapabilitiesEnumerator(super.ptr)
    : _vtable = ptr.value
          .cast<IAppxManifestDeviceCapabilitiesEnumeratorVtbl>()
          .ref;

  /// Creates a new instance of [IAppxManifestDeviceCapabilitiesEnumerator] from
  /// an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestDeviceCapabilitiesEnumerator] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestDeviceCapabilitiesEnumerator.from(IUnknown interface) =>
      interface.queryInterface();

  final IAppxManifestDeviceCapabilitiesEnumeratorVtbl _vtable;
  late final _GetCurrentFn =
      _vtable.GetCurrent.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetHasCurrentFn = _vtable
      .GetHasCurrent.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _MoveNextFn = _vtable
      .MoveNext.asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Gets the device capability at the current position of the enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestdevicecapabilitiesenumerator-getcurrent>.
  PWSTR getCurrent() {
    final deviceCapability = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetCurrentFn(ptr, deviceCapability));
    if (hr$.isError) {
      free(deviceCapability);
      throw WindowsException(hr$);
    }
    final result$ = deviceCapability.value;
    free(deviceCapability);
    return PWSTR(result$);
  }

  /// Determines whether there is a device capability at the current position of
  /// the enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestdevicecapabilitiesenumerator-gethascurrent>.
  bool getHasCurrent() {
    final hasCurrent = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_GetHasCurrentFn(ptr, hasCurrent));
    if (hr$.isError) {
      free(hasCurrent);
      throw WindowsException(hr$);
    }
    final result$ = hasCurrent.value;
    free(hasCurrent);
    return result$ != FALSE;
  }

  /// Advances the position of the enumerator to the next device capability.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestdevicecapabilitiesenumerator-movenext>.
  bool moveNext() {
    final hasNext = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_MoveNextFn(ptr, hasNext));
    if (hr$.isError) {
      free(hasNext);
      throw WindowsException(hr$);
    }
    final result$ = hasNext.value;
    free(hasNext);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IAppxManifestDeviceCapabilitiesEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestDeviceCapabilitiesEnumeratorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> deviceCapability,
      )
    >
  >
  GetCurrent;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> hasCurrent)
    >
  >
  GetHasCurrent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> hasNext)>
  >
  MoveNext;
}

@internal
final class IAppxManifestDeviceCapabilitiesEnumeratorCompanion
    extends ComCompanion<IAppxManifestDeviceCapabilitiesEnumerator> {
  const IAppxManifestDeviceCapabilitiesEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestDeviceCapabilitiesEnumerator Function(VTablePointer)
  get fromPointer => IAppxManifestDeviceCapabilitiesEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAppxManifestDeviceCapabilitiesEnumerator;
}
