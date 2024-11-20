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
import 'interface.g.dart';
import 'iuiautomationelement4.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationElement5 = Guid.fromComponents(
  0x98141c1d,
  0xd0e,
  0x4175,
  Uint8List.fromList(const [0xbb, 0xe2, 0x6b, 0xff, 0x45, 0x58, 0x42, 0xa7]),
);

/// Extends the IUIAutomationElement4 interface to provide access to current and
/// cached landmark data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement5>.
///
/// {@category com}
class IUIAutomationElement5 extends IUIAutomationElement4
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationElement5] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationElement5]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationElement5(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationElement5Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationElement5] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationElement5] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationElement5.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationElement5Vtbl _vtable;
  late final _get_CurrentLandmarkTypeFn = _vtable.get_CurrentLandmarkType
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentLocalizedLandmarkTypeFn = _vtable
      .get_CurrentLocalizedLandmarkType
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedLandmarkTypeFn = _vtable.get_CachedLandmarkType
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedLocalizedLandmarkTypeFn = _vtable
      .get_CachedLocalizedLandmarkType
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();

  /// Gets the current landmark type ID for the automation element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement5-get_currentlandmarktype>.
  UIA_LANDMARKTYPE_ID get currentLandmarkType {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentLandmarkTypeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return UIA_LANDMARKTYPE_ID(result$);
  }

  /// Gets a string containing the current localized landmark type for the
  /// automation element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement5-get_currentlocalizedlandmarktype>.
  BSTR get currentLocalizedLandmarkType {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentLocalizedLandmarkTypeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Gets the cached landmark type ID for the automation element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement5-get_cachedlandmarktype>.
  UIA_LANDMARKTYPE_ID get cachedLandmarkType {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedLandmarkTypeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return UIA_LANDMARKTYPE_ID(result$);
  }

  /// Gets a string containing the cached localized landmark type for the
  /// automation element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement5-get_cachedlocalizedlandmarktype>.
  BSTR get cachedLocalizedLandmarkType {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedLocalizedLandmarkTypeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationElement5(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationElement5Vtbl extends Struct {
  external IUIAutomationElement4Vtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentLandmarkType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentLocalizedLandmarkType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedLandmarkType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedLocalizedLandmarkType;
}

@internal
final class IUIAutomationElement5Companion
    extends ComCompanion<IUIAutomationElement5> {
  const IUIAutomationElement5Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationElement5 Function(VTablePointer) get fromPointer =>
      IUIAutomationElement5.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationElement5;
}
