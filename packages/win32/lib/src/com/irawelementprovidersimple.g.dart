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
import '../variant.dart';
import 'interface.g.dart';
import 'irawelementprovidersimple.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IRawElementProviderSimple = Guid.fromComponents(
  0xd6dd68d1,
  0x86fd,
  0x4332,
  Uint8List.fromList(const [0x86, 0x66, 0x9a, 0xbe, 0xde, 0xa2, 0xd2, 0x4c]),
);

/// Defines methods and properties that expose simple UI elements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/nn-uiautomationcore-irawelementprovidersimple>.
///
/// {@category com}
class IRawElementProviderSimple extends IUnknown implements ComInterface {
  /// Creates a new instance of [IRawElementProviderSimple] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IRawElementProviderSimple] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IRawElementProviderSimple(super.ptr)
    : _vtable = ptr.value.cast<IRawElementProviderSimpleVtbl>().ref;

  /// Creates a new instance of [IRawElementProviderSimple] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IRawElementProviderSimple] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IRawElementProviderSimple.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IRawElementProviderSimpleVtbl _vtable;
  late final _get_ProviderOptionsFn = _vtable.get_ProviderOptions
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetPatternProviderFn =
      _vtable.GetPatternProvider.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetPropertyValueFn =
      _vtable.GetPropertyValue.asFunction<
        int Function(VTablePointer, int, Pointer<VARIANT>)
      >();
  late final _get_HostRawElementProviderFn = _vtable.get_HostRawElementProvider
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Specifies the type of Microsoft UI Automation provider; for example,
  /// whether it is a client-side (proxy) or server-side provider.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/nf-uiautomationcore-irawelementprovidersimple-get_provideroptions>.
  ProviderOptions get providerOptions {
    final pRetVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_ProviderOptionsFn(ptr, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    return ProviderOptions(result$);
  }

  /// Retrieves a pointer to an object that provides support for a control
  /// pattern on a Microsoft UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/nf-uiautomationcore-irawelementprovidersimple-getpatternprovider>.
  IUnknown? getPatternProvider(UIA_PATTERN_ID patternId) {
    final pRetVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetPatternProviderFn(ptr, patternId, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Retrieves the value of a property supported by the Microsoft UI Automation
  /// provider.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/nf-uiautomationcore-irawelementprovidersimple-getpropertyvalue>.
  Pointer<VARIANT> getPropertyValue(UIA_PROPERTY_ID propertyId) {
    final pRetVal = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_GetPropertyValueFn(ptr, propertyId, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    return pRetVal;
  }

  /// Specifies the host provider for this element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/nf-uiautomationcore-irawelementprovidersimple-get_hostrawelementprovider>.
  IRawElementProviderSimple? get hostRawElementProvider {
    final pRetVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_HostRawElementProviderFn(ptr, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    if (result$.isNull) return null;
    return IRawElementProviderSimple(result$);
  }

  @override
  String toString() => 'IRawElementProviderSimple(ptr: $ptr)';
}

/// @nodoc
base class IRawElementProviderSimpleVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> pRetVal)>
  >
  get_ProviderOptions;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 patternId,
        Pointer<VTablePointer> pRetVal,
      )
    >
  >
  GetPatternProvider;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 propertyId,
        Pointer<VARIANT> pRetVal,
      )
    >
  >
  GetPropertyValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> pRetVal)
    >
  >
  get_HostRawElementProvider;
}

@internal
final class IRawElementProviderSimpleCompanion
    extends ComCompanion<IRawElementProviderSimple> {
  const IRawElementProviderSimpleCompanion();

  @pragma('vm:prefer-inline')
  @override
  IRawElementProviderSimple Function(VTablePointer) get fromPointer =>
      IRawElementProviderSimple.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IRawElementProviderSimple;
}
