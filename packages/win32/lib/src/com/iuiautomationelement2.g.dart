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
import 'iuiautomationelement.g.dart';
import 'iuiautomationelementarray.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationElement2 = Guid.fromComponents(
  0x6749c683,
  0xf70d,
  0x4487,
  Uint8List.fromList(const [0xa6, 0x98, 0x5f, 0x79, 0xd5, 0x52, 0x90, 0xd6]),
);

/// Extends the IUIAutomationElement interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement2>.
///
/// {@category com}
class IUIAutomationElement2 extends IUIAutomationElement
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationElement2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationElement2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationElement2(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationElement2Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationElement2] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationElement2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationElement2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationElement2Vtbl _vtable;
  late final _get_CurrentOptimizeForVisualContentFn = _vtable
      .get_CurrentOptimizeForVisualContent
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedOptimizeForVisualContentFn = _vtable
      .get_CachedOptimizeForVisualContent
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentLiveSettingFn = _vtable.get_CurrentLiveSetting
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedLiveSettingFn = _vtable.get_CachedLiveSetting
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentFlowsFromFn = _vtable.get_CurrentFlowsFrom
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedFlowsFromFn = _vtable.get_CachedFlowsFrom
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Indicates whether the provider exposes only elements that are visible.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_currentoptimizeforvisualcontent>.
  bool get currentOptimizeForVisualContent {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentOptimizeForVisualContentFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the provider exposes only
  /// elements that are visible.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_cachedoptimizeforvisualcontent>.
  bool get cachedOptimizeForVisualContent {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedOptimizeForVisualContentFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates the type of notifications, if any, that the element sends when
  /// the content of the element changes.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_currentlivesetting>.
  LiveSetting get currentLiveSetting {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentLiveSettingFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return LiveSetting(result$);
  }

  /// Retrieves a cached value that indicates the type of notifications, if any,
  /// that the element sends when the content of the element changes.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_cachedlivesetting>.
  LiveSetting get cachedLiveSetting {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedLiveSettingFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return LiveSetting(result$);
  }

  /// Retrieves an array of elements that indicates the reading order before the
  /// current element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_currentflowsfrom>.
  IUIAutomationElementArray? get currentFlowsFrom {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentFlowsFromFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves a cached array of elements that indicate the reading order
  /// before the current element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_cachedflowsfrom>.
  IUIAutomationElementArray? get cachedFlowsFrom {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedFlowsFromFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  @override
  String toString() => 'IUIAutomationElement2(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationElement2Vtbl extends Struct {
  external IUIAutomationElementVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentOptimizeForVisualContent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedOptimizeForVisualContent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentLiveSetting;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedLiveSetting;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentFlowsFrom;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedFlowsFrom;
}

@internal
final class IUIAutomationElement2Companion
    extends ComCompanion<IUIAutomationElement2> {
  const IUIAutomationElement2Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationElement2 Function(VTablePointer) get fromPointer =>
      IUIAutomationElement2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationElement2;
}
