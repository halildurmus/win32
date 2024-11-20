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
import 'iuiautomationcacherequest.g.dart';
import 'iuiautomationcondition.g.dart';
import 'iuiautomationelement.g.dart';
import 'iuiautomationelementarray.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationElement = Guid.fromComponents(
  0xd22108aa,
  0x8ac5,
  0x49a5,
  Uint8List.fromList(const [0x83, 0x7b, 0x37, 0xbb, 0xb3, 0xd7, 0x59, 0x1e]),
);

/// Exposes methods and properties for a UI Automation element, which represents
/// a UI item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement>.
///
/// {@category com}
class IUIAutomationElement extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationElement] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationElement]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationElement(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationElementVtbl>().ref;

  /// Creates a new instance of [IUIAutomationElement] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationElement] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationElement.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationElementVtbl _vtable;
  late final _SetFocusFn =
      _vtable.SetFocus.asFunction<int Function(VTablePointer)>();
  late final _GetRuntimeIdFn =
      _vtable.GetRuntimeId.asFunction<
        int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)
      >();
  late final _FindFirstFn =
      _vtable.FindFirst.asFunction<
        int Function(VTablePointer, int, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _FindAllFn =
      _vtable.FindAll.asFunction<
        int Function(VTablePointer, int, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _FindFirstBuildCacheFn =
      _vtable.FindFirstBuildCache.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _FindAllBuildCacheFn =
      _vtable.FindAllBuildCache.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _BuildUpdatedCacheFn =
      _vtable.BuildUpdatedCache.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCurrentPropertyValueFn =
      _vtable.GetCurrentPropertyValue.asFunction<
        int Function(VTablePointer, int, Pointer<VARIANT>)
      >();
  late final _GetCurrentPropertyValueExFn =
      _vtable.GetCurrentPropertyValueEx.asFunction<
        int Function(VTablePointer, int, int, Pointer<VARIANT>)
      >();
  late final _GetCachedPropertyValueFn =
      _vtable.GetCachedPropertyValue.asFunction<
        int Function(VTablePointer, int, Pointer<VARIANT>)
      >();
  late final _GetCachedPropertyValueExFn =
      _vtable.GetCachedPropertyValueEx.asFunction<
        int Function(VTablePointer, int, int, Pointer<VARIANT>)
      >();
  late final _GetCurrentPatternAsFn =
      _vtable.GetCurrentPatternAs.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _GetCachedPatternAsFn =
      _vtable.GetCachedPatternAs.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _GetCurrentPatternFn =
      _vtable.GetCurrentPattern.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetCachedPatternFn =
      _vtable.GetCachedPattern.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetCachedParentFn =
      _vtable.GetCachedParent.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCachedChildrenFn =
      _vtable.GetCachedChildren.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _get_CurrentProcessIdFn = _vtable.get_CurrentProcessId
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentControlTypeFn = _vtable.get_CurrentControlType
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentLocalizedControlTypeFn = _vtable
      .get_CurrentLocalizedControlType
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentNameFn = _vtable.get_CurrentName
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentAcceleratorKeyFn = _vtable.get_CurrentAcceleratorKey
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentAccessKeyFn = _vtable.get_CurrentAccessKey
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentHasKeyboardFocusFn = _vtable
      .get_CurrentHasKeyboardFocus
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentIsKeyboardFocusableFn = _vtable
      .get_CurrentIsKeyboardFocusable
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentIsEnabledFn = _vtable.get_CurrentIsEnabled
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentAutomationIdFn = _vtable.get_CurrentAutomationId
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentClassNameFn = _vtable.get_CurrentClassName
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentHelpTextFn = _vtable.get_CurrentHelpText
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentCultureFn = _vtable.get_CurrentCulture
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentIsControlElementFn = _vtable
      .get_CurrentIsControlElement
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentIsContentElementFn = _vtable
      .get_CurrentIsContentElement
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentIsPasswordFn = _vtable.get_CurrentIsPassword
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentNativeWindowHandleFn = _vtable
      .get_CurrentNativeWindowHandle
      .asFunction<int Function(VTablePointer, Pointer<HWND>)>();
  late final _get_CurrentItemTypeFn = _vtable.get_CurrentItemType
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentIsOffscreenFn = _vtable.get_CurrentIsOffscreen
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentOrientationFn = _vtable.get_CurrentOrientation
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentFrameworkIdFn = _vtable.get_CurrentFrameworkId
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentIsRequiredForFormFn = _vtable
      .get_CurrentIsRequiredForForm
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentItemStatusFn = _vtable.get_CurrentItemStatus
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentBoundingRectangleFn = _vtable
      .get_CurrentBoundingRectangle
      .asFunction<int Function(VTablePointer, Pointer<RECT>)>();
  late final _get_CurrentLabeledByFn = _vtable.get_CurrentLabeledBy
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CurrentAriaRoleFn = _vtable.get_CurrentAriaRole
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentAriaPropertiesFn = _vtable.get_CurrentAriaProperties
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentIsDataValidForFormFn = _vtable
      .get_CurrentIsDataValidForForm
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentControllerForFn = _vtable.get_CurrentControllerFor
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CurrentDescribedByFn = _vtable.get_CurrentDescribedBy
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CurrentFlowsToFn = _vtable.get_CurrentFlowsTo
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CurrentProviderDescriptionFn = _vtable
      .get_CurrentProviderDescription
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedProcessIdFn = _vtable.get_CachedProcessId
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedControlTypeFn = _vtable.get_CachedControlType
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedLocalizedControlTypeFn = _vtable
      .get_CachedLocalizedControlType
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedNameFn = _vtable.get_CachedName
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedAcceleratorKeyFn = _vtable.get_CachedAcceleratorKey
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedAccessKeyFn = _vtable.get_CachedAccessKey
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedHasKeyboardFocusFn = _vtable.get_CachedHasKeyboardFocus
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedIsKeyboardFocusableFn = _vtable
      .get_CachedIsKeyboardFocusable
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedIsEnabledFn = _vtable.get_CachedIsEnabled
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedAutomationIdFn = _vtable.get_CachedAutomationId
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedClassNameFn = _vtable.get_CachedClassName
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedHelpTextFn = _vtable.get_CachedHelpText
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedCultureFn = _vtable.get_CachedCulture
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedIsControlElementFn = _vtable.get_CachedIsControlElement
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedIsContentElementFn = _vtable.get_CachedIsContentElement
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedIsPasswordFn = _vtable.get_CachedIsPassword
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedNativeWindowHandleFn = _vtable
      .get_CachedNativeWindowHandle
      .asFunction<int Function(VTablePointer, Pointer<HWND>)>();
  late final _get_CachedItemTypeFn = _vtable.get_CachedItemType
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedIsOffscreenFn = _vtable.get_CachedIsOffscreen
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedOrientationFn = _vtable.get_CachedOrientation
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedFrameworkIdFn = _vtable.get_CachedFrameworkId
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedIsRequiredForFormFn = _vtable
      .get_CachedIsRequiredForForm
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedItemStatusFn = _vtable.get_CachedItemStatus
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedBoundingRectangleFn = _vtable
      .get_CachedBoundingRectangle
      .asFunction<int Function(VTablePointer, Pointer<RECT>)>();
  late final _get_CachedLabeledByFn = _vtable.get_CachedLabeledBy
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedAriaRoleFn = _vtable.get_CachedAriaRole
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedAriaPropertiesFn = _vtable.get_CachedAriaProperties
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedIsDataValidForFormFn = _vtable
      .get_CachedIsDataValidForForm
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedControllerForFn = _vtable.get_CachedControllerFor
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedDescribedByFn = _vtable.get_CachedDescribedBy
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedFlowsToFn = _vtable.get_CachedFlowsTo
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedProviderDescriptionFn = _vtable
      .get_CachedProviderDescription
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _GetClickablePointFn =
      _vtable.GetClickablePoint.asFunction<
        int Function(VTablePointer, Pointer<POINT>, Pointer<BOOL>)
      >();

  /// Sets the keyboard focus to this UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-setfocus>.
  @pragma('vm:prefer-inline')
  void setFocus() {
    final hr$ = HRESULT(_SetFocusFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the unique identifier assigned to the UI element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getruntimeid>.
  Pointer<SAFEARRAY> getRuntimeId() {
    final runtimeId = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_GetRuntimeIdFn(ptr, runtimeId));
    if (hr$.isError) {
      free(runtimeId);
      throw WindowsException(hr$);
    }
    final result$ = runtimeId.value;
    free(runtimeId);
    return result$;
  }

  /// Retrieves the first child or descendant element that matches the specified
  /// condition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-findfirst>.
  IUIAutomationElement? findFirst(
    TreeScope scope,
    IUIAutomationCondition? condition,
  ) {
    final found = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _FindFirstFn(ptr, scope, condition?.ptr ?? nullptr, found),
    );
    if (hr$.isError) {
      free(found);
      throw WindowsException(hr$);
    }
    final result$ = found.value;
    free(found);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Returns all UI Automation elements that satisfy the specified condition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-findall>.
  IUIAutomationElementArray? findAll(
    TreeScope scope,
    IUIAutomationCondition? condition,
  ) {
    final found = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _FindAllFn(ptr, scope, condition?.ptr ?? nullptr, found),
    );
    if (hr$.isError) {
      free(found);
      throw WindowsException(hr$);
    }
    final result$ = found.value;
    free(found);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves the first child or descendant element that matches the specified
  /// condition, prefetches the requested properties and control patterns, and
  /// stores the prefetched items in the cache.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-findfirstbuildcache>.
  IUIAutomationElement? findFirstBuildCache(
    TreeScope scope,
    IUIAutomationCondition? condition,
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final found = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _FindFirstBuildCacheFn(
        ptr,
        scope,
        condition?.ptr ?? nullptr,
        cacheRequest?.ptr ?? nullptr,
        found,
      ),
    );
    if (hr$.isError) {
      free(found);
      throw WindowsException(hr$);
    }
    final result$ = found.value;
    free(found);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Returns all UI Automation elements that satisfy the specified condition,
  /// prefetches the requested properties and control patterns, and stores the
  /// prefetched items in the cache.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-findallbuildcache>.
  IUIAutomationElementArray? findAllBuildCache(
    TreeScope scope,
    IUIAutomationCondition? condition,
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final found = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _FindAllBuildCacheFn(
        ptr,
        scope,
        condition?.ptr ?? nullptr,
        cacheRequest?.ptr ?? nullptr,
        found,
      ),
    );
    if (hr$.isError) {
      free(found);
      throw WindowsException(hr$);
    }
    final result$ = found.value;
    free(found);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves a new UI Automation element with an updated cache.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-buildupdatedcache>.
  IUIAutomationElement? buildUpdatedCache(
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final updatedElement = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _BuildUpdatedCacheFn(ptr, cacheRequest?.ptr ?? nullptr, updatedElement),
    );
    if (hr$.isError) {
      free(updatedElement);
      throw WindowsException(hr$);
    }
    final result$ = updatedElement.value;
    free(updatedElement);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the current value of a property for this UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcurrentpropertyvalue>.
  Pointer<VARIANT> getCurrentPropertyValue(UIA_PROPERTY_ID propertyId) {
    final retVal = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_GetCurrentPropertyValueFn(ptr, propertyId, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    return retVal;
  }

  /// Retrieves a property value for this UI Automation element, optionally
  /// ignoring any default value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcurrentpropertyvalueex>.
  Pointer<VARIANT> getCurrentPropertyValueEx(
    UIA_PROPERTY_ID propertyId,
    bool ignoreDefaultValue,
  ) {
    final retVal = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(
      _GetCurrentPropertyValueExFn(
        ptr,
        propertyId,
        ignoreDefaultValue ? TRUE : FALSE,
        retVal,
      ),
    );
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    return retVal;
  }

  /// Retrieves a property value from the cache for this UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedpropertyvalue>.
  Pointer<VARIANT> getCachedPropertyValue(UIA_PROPERTY_ID propertyId) {
    final retVal = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_GetCachedPropertyValueFn(ptr, propertyId, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    return retVal;
  }

  /// Retrieves a property value from the cache for this UI Automation element,
  /// optionally ignoring any default value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedpropertyvalueex>.
  Pointer<VARIANT> getCachedPropertyValueEx(
    UIA_PROPERTY_ID propertyId,
    bool ignoreDefaultValue,
  ) {
    final retVal = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(
      _GetCachedPropertyValueExFn(
        ptr,
        propertyId,
        ignoreDefaultValue ? TRUE : FALSE,
        retVal,
      ),
    );
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    return retVal;
  }

  /// Retrieves the control pattern interface of the specified pattern on this
  /// UI Automation element.
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcurrentpatternas>.
  T getCurrentPatternAs<T extends IUnknown>(UIA_PATTERN_ID patternId) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final patternObject = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _GetCurrentPatternAsFn(ptr, patternId, riid.ptr, patternObject),
    );
    if (hr$.isError) {
      free(patternObject);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(patternObject.value.cast());
    free(patternObject);
    return result;
  }

  /// Retrieves the control pattern interface of the specified pattern from the
  /// cache of this UI Automation element.
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedpatternas>.
  T getCachedPatternAs<T extends IUnknown>(UIA_PATTERN_ID patternId) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final patternObject = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _GetCachedPatternAsFn(ptr, patternId, riid.ptr, patternObject),
    );
    if (hr$.isError) {
      free(patternObject);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(patternObject.value.cast());
    free(patternObject);
    return result;
  }

  /// Retrieves the IUnknown interface of the specified control pattern on this
  /// UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcurrentpattern>.
  IUnknown? getCurrentPattern(UIA_PATTERN_ID patternId) {
    final patternObject = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentPatternFn(ptr, patternId, patternObject));
    if (hr$.isError) {
      free(patternObject);
      throw WindowsException(hr$);
    }
    final result$ = patternObject.value;
    free(patternObject);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Retrieves from the cache the IUnknown interface of the specified control
  /// pattern of this UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedpattern>.
  IUnknown? getCachedPattern(UIA_PATTERN_ID patternId) {
    final patternObject = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCachedPatternFn(ptr, patternId, patternObject));
    if (hr$.isError) {
      free(patternObject);
      throw WindowsException(hr$);
    }
    final result$ = patternObject.value;
    free(patternObject);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Retrieves from the cache the parent of this UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedparent>.
  IUIAutomationElement? getCachedParent() {
    final parent = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCachedParentFn(ptr, parent));
    if (hr$.isError) {
      free(parent);
      throw WindowsException(hr$);
    }
    final result$ = parent.value;
    free(parent);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the cached child elements of this UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedchildren>.
  IUIAutomationElementArray? getCachedChildren() {
    final children = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCachedChildrenFn(ptr, children));
    if (hr$.isError) {
      free(children);
      throw WindowsException(hr$);
    }
    final result$ = children.value;
    free(children);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves the identifier of the process that hosts the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentprocessid>.
  int get currentProcessId {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentProcessIdFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the control type of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentcontroltype>.
  UIA_CONTROLTYPE_ID get currentControlType {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentControlTypeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return UIA_CONTROLTYPE_ID(result$);
  }

  /// Retrieves a localized description of the control type of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentlocalizedcontroltype>.
  BSTR get currentLocalizedControlType {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentLocalizedControlTypeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the name of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentname>.
  BSTR get currentName {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentNameFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the accelerator key for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentacceleratorkey>.
  BSTR get currentAcceleratorKey {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentAcceleratorKeyFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the access key character for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentaccesskey>.
  BSTR get currentAccessKey {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentAccessKeyFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Indicates whether the element has keyboard focus.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currenthaskeyboardfocus>.
  bool get currentHasKeyboardFocus {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentHasKeyboardFocusFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates whether the element can accept keyboard focus.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentiskeyboardfocusable>.
  bool get currentIsKeyboardFocusable {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsKeyboardFocusableFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates whether the element is enabled.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentisenabled>.
  bool get currentIsEnabled {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsEnabledFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the Microsoft UI Automation identifier of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentautomationid>.
  BSTR get currentAutomationId {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentAutomationIdFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the class name of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentclassname>.
  BSTR get currentClassName {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentClassNameFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the help text for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currenthelptext>.
  BSTR get currentHelpText {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentHelpTextFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the culture identifier for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentculture>.
  int get currentCulture {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentCultureFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Indicates whether the element is a control element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentiscontrolelement>.
  bool get currentIsControlElement {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsControlElementFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates whether the element is a content element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentiscontentelement>.
  bool get currentIsContentElement {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsContentElementFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates whether the element contains a disguised password.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentispassword>.
  bool get currentIsPassword {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsPasswordFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the window handle of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentnativewindowhandle>.
  int get currentNativeWindowHandle {
    final retVal = loggingCalloc<HWND>();
    final hr$ = HRESULT(_get_CurrentNativeWindowHandleFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a description of the type of UI item represented by the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentitemtype>.
  BSTR get currentItemType {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentItemTypeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Indicates whether the element is off-screen.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentisoffscreen>.
  bool get currentIsOffscreen {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsOffscreenFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a value that indicates the orientation of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentorientation>.
  OrientationType get currentOrientation {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentOrientationFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return OrientationType(result$);
  }

  /// Retrieves the name of the underlying UI framework.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentframeworkid>.
  BSTR get currentFrameworkId {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentFrameworkIdFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Indicates whether the element is required to be filled out on a form.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentisrequiredforform>.
  bool get currentIsRequiredForForm {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsRequiredForFormFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the description of the status of an item in an element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentitemstatus>.
  BSTR get currentItemStatus {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentItemStatusFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the coordinates of the rectangle that completely encloses the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentboundingrectangle>.
  Pointer<RECT> get currentBoundingRectangle {
    final retVal = loggingCalloc<RECT>();
    final hr$ = HRESULT(_get_CurrentBoundingRectangleFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    return retVal;
  }

  /// Retrieves the element that contains the text label for this element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentlabeledby>.
  IUIAutomationElement? get currentLabeledBy {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentLabeledByFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the Accessible Rich Internet Applications (ARIA) role of the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentariarole>.
  BSTR get currentAriaRole {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentAriaRoleFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the Accessible Rich Internet Applications (ARIA) properties of
  /// the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentariaproperties>.
  BSTR get currentAriaProperties {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentAriaPropertiesFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Indicates whether the element contains valid data for a form.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentisdatavalidforform>.
  bool get currentIsDataValidForForm {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsDataValidForFormFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves an array of elements for which this element serves as the
  /// controller.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentcontrollerfor>.
  IUIAutomationElementArray? get currentControllerFor {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentControllerForFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves an array of elements that describe this element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentdescribedby>.
  IUIAutomationElementArray? get currentDescribedBy {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentDescribedByFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves an array of elements that indicates the reading order after the
  /// current element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentflowsto>.
  IUIAutomationElementArray? get currentFlowsTo {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentFlowsToFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves a description of the provider for this element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentproviderdescription>.
  BSTR get currentProviderDescription {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentProviderDescriptionFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached ID of the process that hosts the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedprocessid>.
  int get cachedProcessId {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedProcessIdFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached value that indicates the control type of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedcontroltype>.
  UIA_CONTROLTYPE_ID get cachedControlType {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedControlTypeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return UIA_CONTROLTYPE_ID(result$);
  }

  /// Retrieves the cached localized description of the control type of the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedlocalizedcontroltype>.
  BSTR get cachedLocalizedControlType {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedLocalizedControlTypeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached name of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedname>.
  BSTR get cachedName {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedNameFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached accelerator key for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedacceleratorkey>.
  BSTR get cachedAcceleratorKey {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedAcceleratorKeyFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached access key character for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedaccesskey>.
  BSTR get cachedAccessKey {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedAccessKeyFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// A cached value that indicates whether the element has keyboard focus.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedhaskeyboardfocus>.
  bool get cachedHasKeyboardFocus {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedHasKeyboardFocusFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the element can accept
  /// keyboard focus.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachediskeyboardfocusable>.
  bool get cachedIsKeyboardFocusable {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsKeyboardFocusableFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the element is enabled.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedisenabled>.
  bool get cachedIsEnabled {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsEnabledFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the cached Microsoft UI Automation identifier of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedautomationid>.
  BSTR get cachedAutomationId {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedAutomationIdFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached class name of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedclassname>.
  BSTR get cachedClassName {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedClassNameFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached help text for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedhelptext>.
  BSTR get cachedHelpText {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedHelpTextFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached value that indicates the culture associated with the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedculture>.
  int get cachedCulture {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedCultureFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached value that indicates whether the element is a control
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachediscontrolelement>.
  bool get cachedIsControlElement {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsControlElementFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// A cached value that indicates whether the element is a content element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachediscontentelement>.
  bool get cachedIsContentElement {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsContentElementFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the element contains a
  /// disguised password.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedispassword>.
  bool get cachedIsPassword {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsPasswordFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the cached window handle of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachednativewindowhandle>.
  int get cachedNativeWindowHandle {
    final retVal = loggingCalloc<HWND>();
    final hr$ = HRESULT(_get_CachedNativeWindowHandleFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached string that describes the type of item represented by
  /// the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cacheditemtype>.
  BSTR get cachedItemType {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedItemTypeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached value that indicates whether the element is off-screen.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedisoffscreen>.
  bool get cachedIsOffscreen {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsOffscreenFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates the orientation of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedorientation>.
  OrientationType get cachedOrientation {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedOrientationFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return OrientationType(result$);
  }

  /// Retrieves the cached name of the underlying UI framework associated with
  /// the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedframeworkid>.
  BSTR get cachedFrameworkId {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedFrameworkIdFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached value that indicates whether the element is required to
  /// be filled out on a form.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedisrequiredforform>.
  bool get cachedIsRequiredForForm {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsRequiredForFormFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached description of the status of an item within an element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cacheditemstatus>.
  BSTR get cachedItemStatus {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedItemStatusFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached coordinates of the rectangle that completely encloses
  /// the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedboundingrectangle>.
  Pointer<RECT> get cachedBoundingRectangle {
    final retVal = loggingCalloc<RECT>();
    final hr$ = HRESULT(_get_CachedBoundingRectangleFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    return retVal;
  }

  /// Retrieves the cached element that contains the text label for this
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedlabeledby>.
  IUIAutomationElement? get cachedLabeledBy {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedLabeledByFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the cached Accessible Rich Internet Applications (ARIA) role of
  /// the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedariarole>.
  BSTR get cachedAriaRole {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedAriaRoleFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached Accessible Rich Internet Applications (ARIA)
  /// properties of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedariaproperties>.
  BSTR get cachedAriaProperties {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedAriaPropertiesFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached value that indicates whether the element contains valid
  /// data for the form.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedisdatavalidforform>.
  bool get cachedIsDataValidForForm {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsDataValidForFormFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached array of UI Automation elements for which this element
  /// serves as the controller.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedcontrollerfor>.
  IUIAutomationElementArray? get cachedControllerFor {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedControllerForFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves a cached array of elements that describe this element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cacheddescribedby>.
  IUIAutomationElementArray? get cachedDescribedBy {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedDescribedByFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves a cached array of elements that indicate the reading order after
  /// the current element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedflowsto>.
  IUIAutomationElementArray? get cachedFlowsTo {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedFlowsToFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves a cached description of the provider for this element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedproviderdescription>.
  BSTR get cachedProviderDescription {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedProviderDescriptionFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a point on the element that can be clicked.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getclickablepoint>.
  @pragma('vm:prefer-inline')
  void getClickablePoint(Pointer<POINT> clickable, Pointer<BOOL> gotClickable) {
    final hr$ = HRESULT(_GetClickablePointFn(ptr, clickable, gotClickable));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationElement(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationElementVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  SetFocus;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> runtimeId)
    >
  >
  GetRuntimeId;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 scope,
        VTablePointer condition,
        Pointer<VTablePointer> found,
      )
    >
  >
  FindFirst;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 scope,
        VTablePointer condition,
        Pointer<VTablePointer> found,
      )
    >
  >
  FindAll;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 scope,
        VTablePointer condition,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> found,
      )
    >
  >
  FindFirstBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 scope,
        VTablePointer condition,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> found,
      )
    >
  >
  FindAllBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> updatedElement,
      )
    >
  >
  BuildUpdatedCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 propertyId,
        Pointer<VARIANT> retVal,
      )
    >
  >
  GetCurrentPropertyValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 propertyId,
        BOOL ignoreDefaultValue,
        Pointer<VARIANT> retVal,
      )
    >
  >
  GetCurrentPropertyValueEx;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 propertyId,
        Pointer<VARIANT> retVal,
      )
    >
  >
  GetCachedPropertyValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 propertyId,
        BOOL ignoreDefaultValue,
        Pointer<VARIANT> retVal,
      )
    >
  >
  GetCachedPropertyValueEx;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 patternId,
        Pointer<GUID> riid,
        Pointer<Pointer> patternObject,
      )
    >
  >
  GetCurrentPatternAs;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 patternId,
        Pointer<GUID> riid,
        Pointer<Pointer> patternObject,
      )
    >
  >
  GetCachedPatternAs;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 patternId,
        Pointer<VTablePointer> patternObject,
      )
    >
  >
  GetCurrentPattern;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 patternId,
        Pointer<VTablePointer> patternObject,
      )
    >
  >
  GetCachedPattern;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> parent)
    >
  >
  GetCachedParent;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> children)
    >
  >
  GetCachedChildren;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentProcessId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentControlType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentLocalizedControlType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentAcceleratorKey;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentAccessKey;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentHasKeyboardFocus;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsKeyboardFocusable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsEnabled;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentAutomationId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentClassName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentHelpText;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentCulture;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsControlElement;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsContentElement;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsPassword;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<HWND> retVal)>
  >
  get_CurrentNativeWindowHandle;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentItemType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsOffscreen;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentOrientation;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentFrameworkId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsRequiredForForm;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentItemStatus;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<RECT> retVal)>
  >
  get_CurrentBoundingRectangle;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentLabeledBy;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentAriaRole;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentAriaProperties;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsDataValidForForm;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentControllerFor;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentDescribedBy;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentFlowsTo;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentProviderDescription;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedProcessId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedControlType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedLocalizedControlType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedAcceleratorKey;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedAccessKey;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedHasKeyboardFocus;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsKeyboardFocusable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsEnabled;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedAutomationId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedClassName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedHelpText;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedCulture;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsControlElement;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsContentElement;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsPassword;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<HWND> retVal)>
  >
  get_CachedNativeWindowHandle;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedItemType;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsOffscreen;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedOrientation;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedFrameworkId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsRequiredForForm;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedItemStatus;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<RECT> retVal)>
  >
  get_CachedBoundingRectangle;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedLabeledBy;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedAriaRole;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedAriaProperties;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsDataValidForForm;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedControllerFor;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedDescribedBy;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedFlowsTo;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedProviderDescription;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<POINT> clickable,
        Pointer<BOOL> gotClickable,
      )
    >
  >
  GetClickablePoint;
}

@internal
final class IUIAutomationElementCompanion
    extends ComCompanion<IUIAutomationElement> {
  const IUIAutomationElementCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationElement Function(VTablePointer) get fromPointer =>
      IUIAutomationElement.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationElement;
}
