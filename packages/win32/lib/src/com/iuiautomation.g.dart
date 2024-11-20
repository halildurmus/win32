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
import 'iaccessible.g.dart';
import 'interface.g.dart';
import 'iuiautomationcacherequest.g.dart';
import 'iuiautomationcondition.g.dart';
import 'iuiautomationelement.g.dart';
import 'iuiautomationeventhandler.g.dart';
import 'iuiautomationfocuschangedeventhandler.g.dart';
import 'iuiautomationpropertychangedeventhandler.g.dart';
import 'iuiautomationproxyfactory.g.dart';
import 'iuiautomationproxyfactoryentry.g.dart';
import 'iuiautomationproxyfactorymapping.g.dart';
import 'iuiautomationstructurechangedeventhandler.g.dart';
import 'iuiautomationtreewalker.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomation = Guid.fromComponents(
  0x30cbe57d,
  0xd9d0,
  0x452a,
  Uint8List.fromList(const [0xab, 0x13, 0x7a, 0xc5, 0xac, 0x48, 0x25, 0xee]),
);

/// Exposes methods that enable Microsoft UI Automation client applications to
/// discover, access, and filter UI Automation elements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomation>.
///
/// {@category com}
class IUIAutomation extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomation] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomation]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomation(super.ptr) : _vtable = ptr.value.cast<IUIAutomationVtbl>().ref;

  /// Creates a new instance of [IUIAutomation] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomation] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomation.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationVtbl _vtable;
  late final _CompareElementsFn =
      _vtable.CompareElements.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer, Pointer<BOOL>)
      >();
  late final _CompareRuntimeIdsFn =
      _vtable.CompareRuntimeIds.asFunction<
        int Function(
          VTablePointer,
          Pointer<SAFEARRAY>,
          Pointer<SAFEARRAY>,
          Pointer<BOOL>,
        )
      >();
  late final _GetRootElementFn =
      _vtable.GetRootElement.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _ElementFromHandleFn =
      _vtable.ElementFromHandle.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _ElementFromPointFn =
      _vtable.ElementFromPoint.asFunction<
        int Function(VTablePointer, POINT, Pointer<VTablePointer>)
      >();
  late final _GetFocusedElementFn =
      _vtable.GetFocusedElement.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetRootElementBuildCacheFn =
      _vtable.GetRootElementBuildCache.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _ElementFromHandleBuildCacheFn =
      _vtable.ElementFromHandleBuildCache.asFunction<
        int Function(VTablePointer, int, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _ElementFromPointBuildCacheFn =
      _vtable.ElementFromPointBuildCache.asFunction<
        int Function(
          VTablePointer,
          POINT,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _GetFocusedElementBuildCacheFn =
      _vtable.GetFocusedElementBuildCache.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateTreeWalkerFn =
      _vtable.CreateTreeWalker.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _get_ControlViewWalkerFn = _vtable.get_ControlViewWalker
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_ContentViewWalkerFn = _vtable.get_ContentViewWalker
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_RawViewWalkerFn = _vtable.get_RawViewWalker
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_RawViewConditionFn = _vtable.get_RawViewCondition
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_ControlViewConditionFn = _vtable.get_ControlViewCondition
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_ContentViewConditionFn = _vtable.get_ContentViewCondition
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _CreateCacheRequestFn =
      _vtable.CreateCacheRequest.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateTrueConditionFn =
      _vtable.CreateTrueCondition.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateFalseConditionFn =
      _vtable.CreateFalseCondition.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreatePropertyConditionFn =
      _vtable.CreatePropertyCondition.asFunction<
        int Function(VTablePointer, int, VARIANT, Pointer<VTablePointer>)
      >();
  late final _CreatePropertyConditionExFn =
      _vtable.CreatePropertyConditionEx.asFunction<
        int Function(VTablePointer, int, VARIANT, int, Pointer<VTablePointer>)
      >();
  late final _CreateAndConditionFn =
      _vtable.CreateAndCondition.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateAndConditionFromArrayFn =
      _vtable.CreateAndConditionFromArray.asFunction<
        int Function(VTablePointer, Pointer<SAFEARRAY>, Pointer<VTablePointer>)
      >();
  late final _CreateAndConditionFromNativeArrayFn =
      _vtable.CreateAndConditionFromNativeArray.asFunction<
        int Function(
          VTablePointer,
          Pointer<VTablePointer>,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateOrConditionFn =
      _vtable.CreateOrCondition.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateOrConditionFromArrayFn =
      _vtable.CreateOrConditionFromArray.asFunction<
        int Function(VTablePointer, Pointer<SAFEARRAY>, Pointer<VTablePointer>)
      >();
  late final _CreateOrConditionFromNativeArrayFn =
      _vtable.CreateOrConditionFromNativeArray.asFunction<
        int Function(
          VTablePointer,
          Pointer<VTablePointer>,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateNotConditionFn =
      _vtable.CreateNotCondition.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _AddAutomationEventHandlerFn =
      _vtable.AddAutomationEventHandler.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();
  late final _RemoveAutomationEventHandlerFn =
      _vtable.RemoveAutomationEventHandler.asFunction<
        int Function(VTablePointer, int, VTablePointer, VTablePointer)
      >();
  late final _AddPropertyChangedEventHandlerNativeArrayFn =
      _vtable.AddPropertyChangedEventHandlerNativeArray.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
          Pointer<Int32>,
          int,
        )
      >();
  late final _AddPropertyChangedEventHandlerFn =
      _vtable.AddPropertyChangedEventHandler.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
          Pointer<SAFEARRAY>,
        )
      >();
  late final _RemovePropertyChangedEventHandlerFn =
      _vtable.RemovePropertyChangedEventHandler.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();
  late final _AddStructureChangedEventHandlerFn =
      _vtable.AddStructureChangedEventHandler.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();
  late final _RemoveStructureChangedEventHandlerFn =
      _vtable.RemoveStructureChangedEventHandler.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();
  late final _AddFocusChangedEventHandlerFn =
      _vtable.AddFocusChangedEventHandler.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();
  late final _RemoveFocusChangedEventHandlerFn =
      _vtable.RemoveFocusChangedEventHandler.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _RemoveAllEventHandlersFn =
      _vtable.RemoveAllEventHandlers.asFunction<int Function(VTablePointer)>();
  late final _IntNativeArrayToSafeArrayFn =
      _vtable.IntNativeArrayToSafeArray.asFunction<
        int Function(
          VTablePointer,
          Pointer<Int32>,
          int,
          Pointer<Pointer<SAFEARRAY>>,
        )
      >();
  late final _IntSafeArrayToNativeArrayFn =
      _vtable.IntSafeArrayToNativeArray.asFunction<
        int Function(
          VTablePointer,
          Pointer<SAFEARRAY>,
          Pointer<Pointer<Int32>>,
          Pointer<Int32>,
        )
      >();
  late final _RectToVariantFn =
      _vtable.RectToVariant.asFunction<
        int Function(VTablePointer, RECT, Pointer<VARIANT>)
      >();
  late final _VariantToRectFn =
      _vtable.VariantToRect.asFunction<
        int Function(VTablePointer, VARIANT, Pointer<RECT>)
      >();
  late final _SafeArrayToRectNativeArrayFn =
      _vtable.SafeArrayToRectNativeArray.asFunction<
        int Function(
          VTablePointer,
          Pointer<SAFEARRAY>,
          Pointer<Pointer<RECT>>,
          Pointer<Int32>,
        )
      >();
  late final _CreateProxyFactoryEntryFn =
      _vtable.CreateProxyFactoryEntry.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _get_ProxyFactoryMappingFn = _vtable.get_ProxyFactoryMapping
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _GetPropertyProgrammaticNameFn =
      _vtable.GetPropertyProgrammaticName.asFunction<
        int Function(VTablePointer, int, Pointer<BSTR>)
      >();
  late final _GetPatternProgrammaticNameFn =
      _vtable.GetPatternProgrammaticName.asFunction<
        int Function(VTablePointer, int, Pointer<BSTR>)
      >();
  late final _PollForPotentialSupportedPatternsFn =
      _vtable.PollForPotentialSupportedPatterns.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<Pointer<SAFEARRAY>>,
          Pointer<Pointer<SAFEARRAY>>,
        )
      >();
  late final _PollForPotentialSupportedPropertiesFn =
      _vtable.PollForPotentialSupportedProperties.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<Pointer<SAFEARRAY>>,
          Pointer<Pointer<SAFEARRAY>>,
        )
      >();
  late final _CheckNotSupportedFn =
      _vtable.CheckNotSupported.asFunction<
        int Function(VTablePointer, VARIANT, Pointer<BOOL>)
      >();
  late final _get_ReservedNotSupportedValueFn = _vtable
      .get_ReservedNotSupportedValue
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_ReservedMixedAttributeValueFn = _vtable
      .get_ReservedMixedAttributeValue
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _ElementFromIAccessibleFn =
      _vtable.ElementFromIAccessible.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _ElementFromIAccessibleBuildCacheFn =
      _vtable.ElementFromIAccessibleBuildCache.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();

  /// Compares two UI Automation elements to determine whether they represent
  /// the same underlying UI element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-compareelements>.
  bool compareElements(IUIAutomationElement? el1, IUIAutomationElement? el2) {
    final areSame = loggingCalloc<BOOL>();
    final hr$ = HRESULT(
      _CompareElementsFn(
        ptr,
        el1?.ptr ?? nullptr,
        el2?.ptr ?? nullptr,
        areSame,
      ),
    );
    if (hr$.isError) {
      free(areSame);
      throw WindowsException(hr$);
    }
    final result$ = areSame.value;
    free(areSame);
    return result$ != FALSE;
  }

  /// Compares two integer arrays containing run-time identifiers (IDs) to
  /// determine whether their content is the same and they belong to the same UI
  /// element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-compareruntimeids>.
  bool compareRuntimeIds(
    Pointer<SAFEARRAY> runtimeId1,
    Pointer<SAFEARRAY> runtimeId2,
  ) {
    final areSame = loggingCalloc<BOOL>();
    final hr$ = HRESULT(
      _CompareRuntimeIdsFn(ptr, runtimeId1, runtimeId2, areSame),
    );
    if (hr$.isError) {
      free(areSame);
      throw WindowsException(hr$);
    }
    final result$ = areSame.value;
    free(areSame);
    return result$ != FALSE;
  }

  /// Retrieves the UI Automation element that represents the desktop.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getrootelement>.
  IUIAutomationElement? getRootElement() {
    final root = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetRootElementFn(ptr, root));
    if (hr$.isError) {
      free(root);
      throw WindowsException(hr$);
    }
    final result$ = root.value;
    free(root);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves a UI Automation element for the specified window.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfromhandle>.
  IUIAutomationElement? elementFromHandle(int hwnd) {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_ElementFromHandleFn(ptr, hwnd, element));
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the UI Automation element at the specified point on the desktop.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfrompoint>.
  IUIAutomationElement? elementFromPoint(POINT pt) {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_ElementFromPointFn(ptr, pt, element));
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the UI Automation element that has the input focus.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getfocusedelement>.
  IUIAutomationElement? getFocusedElement() {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetFocusedElementFn(ptr, element));
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the UI Automation element that represents the desktop,
  /// prefetches the requested properties and control patterns, and stores the
  /// prefetched items in the cache.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getrootelementbuildcache>.
  IUIAutomationElement? getRootElementBuildCache(
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final root = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetRootElementBuildCacheFn(ptr, cacheRequest?.ptr ?? nullptr, root),
    );
    if (hr$.isError) {
      free(root);
      throw WindowsException(hr$);
    }
    final result$ = root.value;
    free(root);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves a UI Automation element for the specified window, prefetches the
  /// requested properties and control patterns, and stores the prefetched items
  /// in the cache.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfromhandlebuildcache>.
  IUIAutomationElement? elementFromHandleBuildCache(
    int hwnd,
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _ElementFromHandleBuildCacheFn(
        ptr,
        hwnd,
        cacheRequest?.ptr ?? nullptr,
        element,
      ),
    );
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the UI Automation element at the specified point on the desktop,
  /// prefetches the requested properties and control patterns, and stores the
  /// prefetched items in the cache.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfrompointbuildcache>.
  IUIAutomationElement? elementFromPointBuildCache(
    POINT pt,
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _ElementFromPointBuildCacheFn(
        ptr,
        pt,
        cacheRequest?.ptr ?? nullptr,
        element,
      ),
    );
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the UI Automation element that has the input focus, prefetches
  /// the requested properties and control patterns, and stores the prefetched
  /// items in the cache.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getfocusedelementbuildcache>.
  IUIAutomationElement? getFocusedElementBuildCache(
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetFocusedElementBuildCacheFn(
        ptr,
        cacheRequest?.ptr ?? nullptr,
        element,
      ),
    );
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves a tree walker object that can be used to traverse the Microsoft
  /// UI Automation tree.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createtreewalker>.
  IUIAutomationTreeWalker? createTreeWalker(
    IUIAutomationCondition? pCondition,
  ) {
    final walker = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateTreeWalkerFn(ptr, pCondition?.ptr ?? nullptr, walker),
    );
    if (hr$.isError) {
      free(walker);
      throw WindowsException(hr$);
    }
    final result$ = walker.value;
    free(walker);
    if (result$.isNull) return null;
    return IUIAutomationTreeWalker(result$);
  }

  /// Retrieves an IUIAutomationTreeWalker interface used to discover control
  /// elements.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_controlviewwalker>.
  IUIAutomationTreeWalker? get controlViewWalker {
    final walker = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_ControlViewWalkerFn(ptr, walker));
    if (hr$.isError) {
      free(walker);
      throw WindowsException(hr$);
    }
    final result$ = walker.value;
    free(walker);
    if (result$.isNull) return null;
    return IUIAutomationTreeWalker(result$);
  }

  /// Retrieves an IUIAutomationTreeWalker interface used to discover content
  /// elements.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_contentviewwalker>.
  IUIAutomationTreeWalker? get contentViewWalker {
    final walker = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_ContentViewWalkerFn(ptr, walker));
    if (hr$.isError) {
      free(walker);
      throw WindowsException(hr$);
    }
    final result$ = walker.value;
    free(walker);
    if (result$.isNull) return null;
    return IUIAutomationTreeWalker(result$);
  }

  /// Retrieves a tree walker object used to traverse an unfiltered view of the
  /// Microsoft UI Automation tree.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_rawviewwalker>.
  IUIAutomationTreeWalker? get rawViewWalker {
    final walker = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_RawViewWalkerFn(ptr, walker));
    if (hr$.isError) {
      free(walker);
      throw WindowsException(hr$);
    }
    final result$ = walker.value;
    free(walker);
    if (result$.isNull) return null;
    return IUIAutomationTreeWalker(result$);
  }

  /// Retrieves a predefined IUIAutomationCondition interface that selects all
  /// UI elements in an unfiltered view.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_rawviewcondition>.
  IUIAutomationCondition? get rawViewCondition {
    final condition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_RawViewConditionFn(ptr, condition));
    if (hr$.isError) {
      free(condition);
      throw WindowsException(hr$);
    }
    final result$ = condition.value;
    free(condition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Retrieves a predefined IUIAutomationCondition interface that selects
  /// control elements.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_controlviewcondition>.
  IUIAutomationCondition? get controlViewCondition {
    final condition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_ControlViewConditionFn(ptr, condition));
    if (hr$.isError) {
      free(condition);
      throw WindowsException(hr$);
    }
    final result$ = condition.value;
    free(condition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Retrieves a predefined IUIAutomationCondition interface that selects
  /// content elements.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_contentviewcondition>.
  IUIAutomationCondition? get contentViewCondition {
    final condition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_ContentViewConditionFn(ptr, condition));
    if (hr$.isError) {
      free(condition);
      throw WindowsException(hr$);
    }
    final result$ = condition.value;
    free(condition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Creates a cache request.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createcacherequest>.
  IUIAutomationCacheRequest? createCacheRequest() {
    final cacheRequest = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateCacheRequestFn(ptr, cacheRequest));
    if (hr$.isError) {
      free(cacheRequest);
      throw WindowsException(hr$);
    }
    final result$ = cacheRequest.value;
    free(cacheRequest);
    if (result$.isNull) return null;
    return IUIAutomationCacheRequest(result$);
  }

  /// Retrieves a predefined condition that selects all elements.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createtruecondition>.
  IUIAutomationCondition? createTrueCondition() {
    final newCondition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateTrueConditionFn(ptr, newCondition));
    if (hr$.isError) {
      free(newCondition);
      throw WindowsException(hr$);
    }
    final result$ = newCondition.value;
    free(newCondition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Creates a condition that is always false.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createfalsecondition>.
  IUIAutomationCondition? createFalseCondition() {
    final newCondition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateFalseConditionFn(ptr, newCondition));
    if (hr$.isError) {
      free(newCondition);
      throw WindowsException(hr$);
    }
    final result$ = newCondition.value;
    free(newCondition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Creates a condition that selects elements that have a property with the
  /// specified value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createpropertycondition>.
  IUIAutomationCondition? createPropertyCondition(
    UIA_PROPERTY_ID propertyId,
    VARIANT value,
  ) {
    final newCondition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreatePropertyConditionFn(ptr, propertyId, value, newCondition),
    );
    if (hr$.isError) {
      free(newCondition);
      throw WindowsException(hr$);
    }
    final result$ = newCondition.value;
    free(newCondition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Creates a condition that selects elements that have a property with the
  /// specified value, using optional flags.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createpropertyconditionex>.
  IUIAutomationCondition? createPropertyConditionEx(
    UIA_PROPERTY_ID propertyId,
    VARIANT value,
    PropertyConditionFlags flags,
  ) {
    final newCondition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreatePropertyConditionExFn(ptr, propertyId, value, flags, newCondition),
    );
    if (hr$.isError) {
      free(newCondition);
      throw WindowsException(hr$);
    }
    final result$ = newCondition.value;
    free(newCondition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Creates a condition that selects elements that match both of two
  /// conditions.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createandcondition>.
  IUIAutomationCondition? createAndCondition(
    IUIAutomationCondition? condition1,
    IUIAutomationCondition? condition2,
  ) {
    final newCondition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateAndConditionFn(
        ptr,
        condition1?.ptr ?? nullptr,
        condition2?.ptr ?? nullptr,
        newCondition,
      ),
    );
    if (hr$.isError) {
      free(newCondition);
      throw WindowsException(hr$);
    }
    final result$ = newCondition.value;
    free(newCondition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Creates a condition that selects elements based on multiple conditions,
  /// all of which must be true.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createandconditionfromarray>.
  IUIAutomationCondition? createAndConditionFromArray(
    Pointer<SAFEARRAY> conditions,
  ) {
    final newCondition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateAndConditionFromArrayFn(ptr, conditions, newCondition),
    );
    if (hr$.isError) {
      free(newCondition);
      throw WindowsException(hr$);
    }
    final result$ = newCondition.value;
    free(newCondition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Creates a condition that selects elements from a native array, based on
  /// multiple conditions that must all be true.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createandconditionfromnativearray>.
  IUIAutomationCondition? createAndConditionFromNativeArray(
    Pointer<VTablePointer> conditions,
    int conditionCount,
  ) {
    final newCondition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateAndConditionFromNativeArrayFn(
        ptr,
        conditions,
        conditionCount,
        newCondition,
      ),
    );
    if (hr$.isError) {
      free(newCondition);
      throw WindowsException(hr$);
    }
    final result$ = newCondition.value;
    free(newCondition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Creates a combination of two conditions where a match exists if either of
  /// the conditions is true.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createorcondition>.
  IUIAutomationCondition? createOrCondition(
    IUIAutomationCondition? condition1,
    IUIAutomationCondition? condition2,
  ) {
    final newCondition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateOrConditionFn(
        ptr,
        condition1?.ptr ?? nullptr,
        condition2?.ptr ?? nullptr,
        newCondition,
      ),
    );
    if (hr$.isError) {
      free(newCondition);
      throw WindowsException(hr$);
    }
    final result$ = newCondition.value;
    free(newCondition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Creates a combination of two or more conditions where a match exists if
  /// any of the conditions is true.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createorconditionfromarray>.
  IUIAutomationCondition? createOrConditionFromArray(
    Pointer<SAFEARRAY> conditions,
  ) {
    final newCondition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateOrConditionFromArrayFn(ptr, conditions, newCondition),
    );
    if (hr$.isError) {
      free(newCondition);
      throw WindowsException(hr$);
    }
    final result$ = newCondition.value;
    free(newCondition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Creates a combination of two or more conditions where a match exists if
  /// any one of the conditions is true.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createorconditionfromnativearray>.
  IUIAutomationCondition? createOrConditionFromNativeArray(
    Pointer<VTablePointer> conditions,
    int conditionCount,
  ) {
    final newCondition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateOrConditionFromNativeArrayFn(
        ptr,
        conditions,
        conditionCount,
        newCondition,
      ),
    );
    if (hr$.isError) {
      free(newCondition);
      throw WindowsException(hr$);
    }
    final result$ = newCondition.value;
    free(newCondition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Creates a condition that is the negative of a specified condition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createnotcondition>.
  IUIAutomationCondition? createNotCondition(
    IUIAutomationCondition? condition,
  ) {
    final newCondition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateNotConditionFn(ptr, condition?.ptr ?? nullptr, newCondition),
    );
    if (hr$.isError) {
      free(newCondition);
      throw WindowsException(hr$);
    }
    final result$ = newCondition.value;
    free(newCondition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  /// Registers a method that handles Microsoft UI Automation events.
  ///
  /// **Note:** Before implementing an event handler, you should be familiar
  /// with the threading issues described in Understanding Threading Issues.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-addautomationeventhandler>.
  @pragma('vm:prefer-inline')
  void addAutomationEventHandler(
    UIA_EVENT_ID eventId,
    IUIAutomationElement? element,
    TreeScope scope,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddAutomationEventHandlerFn(
        ptr,
        eventId,
        element?.ptr ?? nullptr,
        scope,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes the specified UI Automation event handler.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-removeautomationeventhandler>.
  @pragma('vm:prefer-inline')
  void removeAutomationEventHandler(
    UIA_EVENT_ID eventId,
    IUIAutomationElement? element,
    IUIAutomationEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _RemoveAutomationEventHandlerFn(
        ptr,
        eventId,
        element?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers a method that handles a native array of property-changed events.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-addpropertychangedeventhandlernativearray>.
  @pragma('vm:prefer-inline')
  void addPropertyChangedEventHandlerNativeArray(
    IUIAutomationElement? element,
    TreeScope scope,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationPropertyChangedEventHandler? handler,
    Pointer<Int32> propertyArray,
    int propertyCount,
  ) {
    final hr$ = HRESULT(
      _AddPropertyChangedEventHandlerNativeArrayFn(
        ptr,
        element?.ptr ?? nullptr,
        scope,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
        propertyArray,
        propertyCount,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers a method that handles and array of property-changed events.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-addpropertychangedeventhandler>.
  @pragma('vm:prefer-inline')
  void addPropertyChangedEventHandler(
    IUIAutomationElement? element,
    TreeScope scope,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationPropertyChangedEventHandler? handler,
    Pointer<SAFEARRAY> propertyArray,
  ) {
    final hr$ = HRESULT(
      _AddPropertyChangedEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        scope,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
        propertyArray,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes a property-changed event handler.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-removepropertychangedeventhandler>.
  @pragma('vm:prefer-inline')
  void removePropertyChangedEventHandler(
    IUIAutomationElement? element,
    IUIAutomationPropertyChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _RemovePropertyChangedEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers a method that handles structure-changed events.
  ///
  /// **Note:** Before implementing an event handler, you should be familiar
  /// with the threading issues described in Understanding Threading Issues.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-addstructurechangedeventhandler>.
  @pragma('vm:prefer-inline')
  void addStructureChangedEventHandler(
    IUIAutomationElement? element,
    TreeScope scope,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationStructureChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddStructureChangedEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        scope,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes a structure-changed event handler.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-removestructurechangedeventhandler>.
  @pragma('vm:prefer-inline')
  void removeStructureChangedEventHandler(
    IUIAutomationElement? element,
    IUIAutomationStructureChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _RemoveStructureChangedEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers a method that handles focus-changed events.
  ///
  /// **Note:** Before implementing an event handler, you should be familiar
  /// with the threading issues described in Understanding Threading Issues.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-addfocuschangedeventhandler>.
  @pragma('vm:prefer-inline')
  void addFocusChangedEventHandler(
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationFocusChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddFocusChangedEventHandlerFn(
        ptr,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes a focus-changed event handler.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-removefocuschangedeventhandler>.
  @pragma('vm:prefer-inline')
  void removeFocusChangedEventHandler(
    IUIAutomationFocusChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _RemoveFocusChangedEventHandlerFn(ptr, handler?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes all registered Microsoft UI Automation event handlers.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-removealleventhandlers>.
  @pragma('vm:prefer-inline')
  void removeAllEventHandlers() {
    final hr$ = HRESULT(_RemoveAllEventHandlersFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Converts an array of integers to a SAFEARRAY.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-intnativearraytosafearray>.
  Pointer<SAFEARRAY> intNativeArrayToSafeArray(
    Pointer<Int32> array,
    int arrayCount,
  ) {
    final safeArray = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(
      _IntNativeArrayToSafeArrayFn(ptr, array, arrayCount, safeArray),
    );
    if (hr$.isError) {
      free(safeArray);
      throw WindowsException(hr$);
    }
    final result$ = safeArray.value;
    free(safeArray);
    return result$;
  }

  /// Converts a SAFEARRAY of integers to an array.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-intsafearraytonativearray>.
  @pragma('vm:prefer-inline')
  void intSafeArrayToNativeArray(
    Pointer<SAFEARRAY> intArray,
    Pointer<Pointer<Int32>> array,
    Pointer<Int32> arrayCount,
  ) {
    final hr$ = HRESULT(
      _IntSafeArrayToNativeArrayFn(ptr, intArray, array, arrayCount),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a VARIANT that contains the coordinates of a rectangle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-recttovariant>.
  Pointer<VARIANT> rectToVariant(RECT rc) {
    final var$ = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_RectToVariantFn(ptr, rc, var$));
    if (hr$.isError) {
      free(var$);
      throw WindowsException(hr$);
    }
    return var$;
  }

  /// Converts a VARIANT containing rectangle coordinates to a RECT.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-varianttorect>.
  Pointer<RECT> variantToRect(VARIANT var$) {
    final rc = loggingCalloc<RECT>();
    final hr$ = HRESULT(_VariantToRectFn(ptr, var$, rc));
    if (hr$.isError) {
      free(rc);
      throw WindowsException(hr$);
    }
    return rc;
  }

  /// Converts a SAFEARRAY containing rectangle coordinates to an array of type
  /// RECT.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-safearraytorectnativearray>.
  @pragma('vm:prefer-inline')
  void safeArrayToRectNativeArray(
    Pointer<SAFEARRAY> rects,
    Pointer<Pointer<RECT>> rectArray,
    Pointer<Int32> rectArrayCount,
  ) {
    final hr$ = HRESULT(
      _SafeArrayToRectNativeArrayFn(ptr, rects, rectArray, rectArrayCount),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a new instance of a proxy factory object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createproxyfactoryentry>.
  IUIAutomationProxyFactoryEntry? createProxyFactoryEntry(
    IUIAutomationProxyFactory? factory,
  ) {
    final factoryEntry = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateProxyFactoryEntryFn(ptr, factory?.ptr ?? nullptr, factoryEntry),
    );
    if (hr$.isError) {
      free(factoryEntry);
      throw WindowsException(hr$);
    }
    final result$ = factoryEntry.value;
    free(factoryEntry);
    if (result$.isNull) return null;
    return IUIAutomationProxyFactoryEntry(result$);
  }

  /// Retrieves an object that represents the mapping of Window classnames and
  /// associated data to individual proxy factories.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_proxyfactorymapping>.
  IUIAutomationProxyFactoryMapping? get proxyFactoryMapping {
    final factoryMapping = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_ProxyFactoryMappingFn(ptr, factoryMapping));
    if (hr$.isError) {
      free(factoryMapping);
      throw WindowsException(hr$);
    }
    final result$ = factoryMapping.value;
    free(factoryMapping);
    if (result$.isNull) return null;
    return IUIAutomationProxyFactoryMapping(result$);
  }

  /// Retrieves the registered programmatic name of a property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getpropertyprogrammaticname>.
  BSTR getPropertyProgrammaticName(UIA_PROPERTY_ID property) {
    final name = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetPropertyProgrammaticNameFn(ptr, property, name));
    if (hr$.isError) {
      free(name);
      throw WindowsException(hr$);
    }
    final result$ = name.value;
    free(name);
    return result$;
  }

  /// Retrieves the registered programmatic name of a control pattern.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getpatternprogrammaticname>.
  BSTR getPatternProgrammaticName(UIA_PATTERN_ID pattern) {
    final name = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetPatternProgrammaticNameFn(ptr, pattern, name));
    if (hr$.isError) {
      free(name);
      throw WindowsException(hr$);
    }
    final result$ = name.value;
    free(name);
    return result$;
  }

  /// Retrieves the control patterns that might be supported on a UI Automation
  /// element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-pollforpotentialsupportedpatterns>.
  @pragma('vm:prefer-inline')
  void pollForPotentialSupportedPatterns(
    IUIAutomationElement? pElement,
    Pointer<Pointer<SAFEARRAY>> patternIds,
    Pointer<Pointer<SAFEARRAY>> patternNames,
  ) {
    final hr$ = HRESULT(
      _PollForPotentialSupportedPatternsFn(
        ptr,
        pElement?.ptr ?? nullptr,
        patternIds,
        patternNames,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the properties that might be supported on a UI Automation
  /// element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-pollforpotentialsupportedproperties>.
  @pragma('vm:prefer-inline')
  void pollForPotentialSupportedProperties(
    IUIAutomationElement? pElement,
    Pointer<Pointer<SAFEARRAY>> propertyIds,
    Pointer<Pointer<SAFEARRAY>> propertyNames,
  ) {
    final hr$ = HRESULT(
      _PollForPotentialSupportedPropertiesFn(
        ptr,
        pElement?.ptr ?? nullptr,
        propertyIds,
        propertyNames,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Checks a provided VARIANT to see if it contains the Not Supported
  /// identifier.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-checknotsupported>.
  bool checkNotSupported(VARIANT value) {
    final isNotSupported = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_CheckNotSupportedFn(ptr, value, isNotSupported));
    if (hr$.isError) {
      free(isNotSupported);
      throw WindowsException(hr$);
    }
    final result$ = isNotSupported.value;
    free(isNotSupported);
    return result$ != FALSE;
  }

  /// Retrieves a static token object representing a property or text attribute
  /// that is not supported.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_reservednotsupportedvalue>.
  IUnknown? get reservedNotSupportedValue {
    final notSupportedValue = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _get_ReservedNotSupportedValueFn(ptr, notSupportedValue),
    );
    if (hr$.isError) {
      free(notSupportedValue);
      throw WindowsException(hr$);
    }
    final result$ = notSupportedValue.value;
    free(notSupportedValue);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Retrieves a static token object representing a text attribute that is a
  /// mixed attribute.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_reservedmixedattributevalue>.
  IUnknown? get reservedMixedAttributeValue {
    final mixedAttributeValue = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _get_ReservedMixedAttributeValueFn(ptr, mixedAttributeValue),
    );
    if (hr$.isError) {
      free(mixedAttributeValue);
      throw WindowsException(hr$);
    }
    final result$ = mixedAttributeValue.value;
    free(mixedAttributeValue);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Retrieves a UI Automation element for the specified accessible object from
  /// a Microsoft Active Accessibility server.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfromiaccessible>.
  IUIAutomationElement? elementFromIAccessible(
    IAccessible? accessible,
    int childId,
  ) {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _ElementFromIAccessibleFn(
        ptr,
        accessible?.ptr ?? nullptr,
        childId,
        element,
      ),
    );
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves a UI Automation element for the specified accessible object from
  /// a Microsoft Active Accessibility server, prefetches the requested
  /// properties and control patterns, and stores the prefetched items in the
  /// cache.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfromiaccessiblebuildcache>.
  IUIAutomationElement? elementFromIAccessibleBuildCache(
    IAccessible? accessible,
    int childId,
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _ElementFromIAccessibleBuildCacheFn(
        ptr,
        accessible?.ptr ?? nullptr,
        childId,
        cacheRequest?.ptr ?? nullptr,
        element,
      ),
    );
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  @override
  String toString() => 'IUIAutomation(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer el1,
        VTablePointer el2,
        Pointer<BOOL> areSame,
      )
    >
  >
  CompareElements;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<SAFEARRAY> runtimeId1,
        Pointer<SAFEARRAY> runtimeId2,
        Pointer<BOOL> areSame,
      )
    >
  >
  CompareRuntimeIds;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> root)
    >
  >
  GetRootElement;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND hwnd,
        Pointer<VTablePointer> element,
      )
    >
  >
  ElementFromHandle;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        POINT pt,
        Pointer<VTablePointer> element,
      )
    >
  >
  ElementFromPoint;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> element)
    >
  >
  GetFocusedElement;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> root,
      )
    >
  >
  GetRootElementBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND hwnd,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> element,
      )
    >
  >
  ElementFromHandleBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        POINT pt,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> element,
      )
    >
  >
  ElementFromPointBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> element,
      )
    >
  >
  GetFocusedElementBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pCondition,
        Pointer<VTablePointer> walker,
      )
    >
  >
  CreateTreeWalker;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> walker)
    >
  >
  get_ControlViewWalker;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> walker)
    >
  >
  get_ContentViewWalker;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> walker)
    >
  >
  get_RawViewWalker;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> condition)
    >
  >
  get_RawViewCondition;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> condition)
    >
  >
  get_ControlViewCondition;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> condition)
    >
  >
  get_ContentViewCondition;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> cacheRequest)
    >
  >
  CreateCacheRequest;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> newCondition)
    >
  >
  CreateTrueCondition;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> newCondition)
    >
  >
  CreateFalseCondition;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 propertyId,
        VARIANT value,
        Pointer<VTablePointer> newCondition,
      )
    >
  >
  CreatePropertyCondition;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 propertyId,
        VARIANT value,
        Int32 flags,
        Pointer<VTablePointer> newCondition,
      )
    >
  >
  CreatePropertyConditionEx;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer condition1,
        VTablePointer condition2,
        Pointer<VTablePointer> newCondition,
      )
    >
  >
  CreateAndCondition;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<SAFEARRAY> conditions,
        Pointer<VTablePointer> newCondition,
      )
    >
  >
  CreateAndConditionFromArray;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> conditions,
        Int32 conditionCount,
        Pointer<VTablePointer> newCondition,
      )
    >
  >
  CreateAndConditionFromNativeArray;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer condition1,
        VTablePointer condition2,
        Pointer<VTablePointer> newCondition,
      )
    >
  >
  CreateOrCondition;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<SAFEARRAY> conditions,
        Pointer<VTablePointer> newCondition,
      )
    >
  >
  CreateOrConditionFromArray;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> conditions,
        Int32 conditionCount,
        Pointer<VTablePointer> newCondition,
      )
    >
  >
  CreateOrConditionFromNativeArray;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer condition,
        Pointer<VTablePointer> newCondition,
      )
    >
  >
  CreateNotCondition;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 eventId,
        VTablePointer element,
        Int32 scope,
        VTablePointer cacheRequest,
        VTablePointer handler,
      )
    >
  >
  AddAutomationEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 eventId,
        VTablePointer element,
        VTablePointer handler,
      )
    >
  >
  RemoveAutomationEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Int32 scope,
        VTablePointer cacheRequest,
        VTablePointer handler,
        Pointer<Int32> propertyArray,
        Int32 propertyCount,
      )
    >
  >
  AddPropertyChangedEventHandlerNativeArray;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Int32 scope,
        VTablePointer cacheRequest,
        VTablePointer handler,
        Pointer<SAFEARRAY> propertyArray,
      )
    >
  >
  AddPropertyChangedEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer handler,
      )
    >
  >
  RemovePropertyChangedEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Int32 scope,
        VTablePointer cacheRequest,
        VTablePointer handler,
      )
    >
  >
  AddStructureChangedEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer handler,
      )
    >
  >
  RemoveStructureChangedEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer cacheRequest,
        VTablePointer handler,
      )
    >
  >
  AddFocusChangedEventHandler;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer handler)>
  >
  RemoveFocusChangedEventHandler;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  RemoveAllEventHandlers;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Int32> array,
        Int32 arrayCount,
        Pointer<Pointer<SAFEARRAY>> safeArray,
      )
    >
  >
  IntNativeArrayToSafeArray;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<SAFEARRAY> intArray,
        Pointer<Pointer<Int32>> array,
        Pointer<Int32> arrayCount,
      )
    >
  >
  IntSafeArrayToNativeArray;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, RECT rc, Pointer<VARIANT> var$)
    >
  >
  RectToVariant;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VARIANT var$, Pointer<RECT> rc)
    >
  >
  VariantToRect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<SAFEARRAY> rects,
        Pointer<Pointer<RECT>> rectArray,
        Pointer<Int32> rectArrayCount,
      )
    >
  >
  SafeArrayToRectNativeArray;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer factory,
        Pointer<VTablePointer> factoryEntry,
      )
    >
  >
  CreateProxyFactoryEntry;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> factoryMapping)
    >
  >
  get_ProxyFactoryMapping;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 property, Pointer<BSTR> name)
    >
  >
  GetPropertyProgrammaticName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 pattern, Pointer<BSTR> name)
    >
  >
  GetPatternProgrammaticName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pElement,
        Pointer<Pointer<SAFEARRAY>> patternIds,
        Pointer<Pointer<SAFEARRAY>> patternNames,
      )
    >
  >
  PollForPotentialSupportedPatterns;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pElement,
        Pointer<Pointer<SAFEARRAY>> propertyIds,
        Pointer<Pointer<SAFEARRAY>> propertyNames,
      )
    >
  >
  PollForPotentialSupportedProperties;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT value,
        Pointer<BOOL> isNotSupported,
      )
    >
  >
  CheckNotSupported;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> notSupportedValue,
      )
    >
  >
  get_ReservedNotSupportedValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> mixedAttributeValue,
      )
    >
  >
  get_ReservedMixedAttributeValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer accessible,
        Int32 childId,
        Pointer<VTablePointer> element,
      )
    >
  >
  ElementFromIAccessible;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer accessible,
        Int32 childId,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> element,
      )
    >
  >
  ElementFromIAccessibleBuildCache;
}

@internal
final class IUIAutomationCompanion extends ComCompanion<IUIAutomation> {
  const IUIAutomationCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomation Function(VTablePointer) get fromPointer => IUIAutomation.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomation;
}
