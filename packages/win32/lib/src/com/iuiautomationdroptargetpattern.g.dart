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
final IID_IUIAutomationDropTargetPattern = Guid.fromComponents(
  0x69a095f7,
  0xeee4,
  0x430e,
  Uint8List.fromList(const [0xa4, 0x6b, 0xfb, 0x73, 0xb1, 0xae, 0x39, 0xa5]),
);

/// Provides access to drag-and-drop information exposed by a Microsoft UI
/// Automation provider for an element that can be the drop target of a
/// drag-and-drop operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationdroptargetpattern>.
///
/// {@category com}
class IUIAutomationDropTargetPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationDropTargetPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationDropTargetPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationDropTargetPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationDropTargetPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationDropTargetPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationDropTargetPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationDropTargetPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationDropTargetPatternVtbl _vtable;
  late final _get_CurrentDropTargetEffectFn = _vtable
      .get_CurrentDropTargetEffect
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedDropTargetEffectFn = _vtable.get_CachedDropTargetEffect
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentDropTargetEffectsFn = _vtable
      .get_CurrentDropTargetEffects
      .asFunction<int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)>();
  late final _get_CachedDropTargetEffectsFn = _vtable
      .get_CachedDropTargetEffects
      .asFunction<int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)>();

  /// Retrieves a localized string that describes what happens when the user
  /// drops the grabbed element on this drop target.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdroptargetpattern-get_currentdroptargeteffect>.
  BSTR get currentDropTargetEffect {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentDropTargetEffectFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached localized string that describes what happens when the
  /// user drops the grabbed element on this drop target.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdroptargetpattern-get_cacheddroptargeteffect>.
  BSTR get cachedDropTargetEffect {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedDropTargetEffectFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves an array of localized strings that enumerate the full set of
  /// effects that can happen when the user drops a grabbed element on this drop
  /// target as part of a drag-and-drop operation.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdroptargetpattern-get_currentdroptargeteffects>.
  Pointer<SAFEARRAY> get currentDropTargetEffects {
    final retVal = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_get_CurrentDropTargetEffectsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached array of localized strings that enumerate the full set
  /// of effects that can happen when the user drops a grabbed element on this
  /// drop target as part of a drag-and-drop operation.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdroptargetpattern-get_cacheddroptargeteffects>.
  Pointer<SAFEARRAY> get cachedDropTargetEffects {
    final retVal = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_get_CachedDropTargetEffectsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationDropTargetPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationDropTargetPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentDropTargetEffect;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedDropTargetEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> retVal)
    >
  >
  get_CurrentDropTargetEffects;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> retVal)
    >
  >
  get_CachedDropTargetEffects;
}

@internal
final class IUIAutomationDropTargetPatternCompanion
    extends ComCompanion<IUIAutomationDropTargetPattern> {
  const IUIAutomationDropTargetPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationDropTargetPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationDropTargetPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationDropTargetPattern;
}
