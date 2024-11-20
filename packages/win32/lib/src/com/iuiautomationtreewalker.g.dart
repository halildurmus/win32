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
import 'iuiautomationcacherequest.g.dart';
import 'iuiautomationcondition.g.dart';
import 'iuiautomationelement.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTreeWalker = Guid.fromComponents(
  0x4042c624,
  0x389c,
  0x4afc,
  Uint8List.fromList(const [0xa6, 0x30, 0x9d, 0xf8, 0x54, 0xa5, 0x41, 0xfc]),
);

/// Exposes properties and methods that UI Automation client applications use to
/// view and navigate the UI Automation elements on the desktop.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtreewalker>.
///
/// {@category com}
class IUIAutomationTreeWalker extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationTreeWalker] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationTreeWalker]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTreeWalker(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTreeWalkerVtbl>().ref;

  /// Creates a new instance of [IUIAutomationTreeWalker] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTreeWalker] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTreeWalker.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTreeWalkerVtbl _vtable;
  late final _GetParentElementFn =
      _vtable.GetParentElement.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetFirstChildElementFn =
      _vtable.GetFirstChildElement.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetLastChildElementFn =
      _vtable.GetLastChildElement.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetNextSiblingElementFn =
      _vtable.GetNextSiblingElement.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetPreviousSiblingElementFn =
      _vtable.GetPreviousSiblingElement.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _NormalizeElementFn =
      _vtable.NormalizeElement.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetParentElementBuildCacheFn =
      _vtable.GetParentElementBuildCache.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _GetFirstChildElementBuildCacheFn =
      _vtable.GetFirstChildElementBuildCache.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _GetLastChildElementBuildCacheFn =
      _vtable.GetLastChildElementBuildCache.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _GetNextSiblingElementBuildCacheFn =
      _vtable.GetNextSiblingElementBuildCache.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _GetPreviousSiblingElementBuildCacheFn =
      _vtable.GetPreviousSiblingElementBuildCache.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _NormalizeElementBuildCacheFn =
      _vtable.NormalizeElementBuildCache.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _get_ConditionFn = _vtable.get_Condition
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Retrieves the parent element of the specified UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getparentelement>.
  IUIAutomationElement? getParentElement(IUIAutomationElement? element) {
    final parent = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetParentElementFn(ptr, element?.ptr ?? nullptr, parent),
    );
    if (hr$.isError) {
      free(parent);
      throw WindowsException(hr$);
    }
    final result$ = parent.value;
    free(parent);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the first child element of the specified UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getfirstchildelement>.
  IUIAutomationElement? getFirstChildElement(IUIAutomationElement? element) {
    final first = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetFirstChildElementFn(ptr, element?.ptr ?? nullptr, first),
    );
    if (hr$.isError) {
      free(first);
      throw WindowsException(hr$);
    }
    final result$ = first.value;
    free(first);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the last child element of the specified UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getlastchildelement>.
  IUIAutomationElement? getLastChildElement(IUIAutomationElement? element) {
    final last = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetLastChildElementFn(ptr, element?.ptr ?? nullptr, last),
    );
    if (hr$.isError) {
      free(last);
      throw WindowsException(hr$);
    }
    final result$ = last.value;
    free(last);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the next sibling element of the specified UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getnextsiblingelement>.
  IUIAutomationElement? getNextSiblingElement(IUIAutomationElement? element) {
    final next = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetNextSiblingElementFn(ptr, element?.ptr ?? nullptr, next),
    );
    if (hr$.isError) {
      free(next);
      throw WindowsException(hr$);
    }
    final result$ = next.value;
    free(next);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the previous sibling element of the specified UI Automation
  /// element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getprevioussiblingelement>.
  IUIAutomationElement? getPreviousSiblingElement(
    IUIAutomationElement? element,
  ) {
    final previous = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetPreviousSiblingElementFn(ptr, element?.ptr ?? nullptr, previous),
    );
    if (hr$.isError) {
      free(previous);
      throw WindowsException(hr$);
    }
    final result$ = previous.value;
    free(previous);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the ancestor element nearest to the specified Microsoft UI
  /// Automation element in the tree view.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-normalizeelement>.
  IUIAutomationElement? normalizeElement(IUIAutomationElement? element) {
    final normalized = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _NormalizeElementFn(ptr, element?.ptr ?? nullptr, normalized),
    );
    if (hr$.isError) {
      free(normalized);
      throw WindowsException(hr$);
    }
    final result$ = normalized.value;
    free(normalized);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the parent element of the specified UI Automation element, and
  /// caches properties and control patterns.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getparentelementbuildcache>.
  IUIAutomationElement? getParentElementBuildCache(
    IUIAutomationElement? element,
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final parent = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetParentElementBuildCacheFn(
        ptr,
        element?.ptr ?? nullptr,
        cacheRequest?.ptr ?? nullptr,
        parent,
      ),
    );
    if (hr$.isError) {
      free(parent);
      throw WindowsException(hr$);
    }
    final result$ = parent.value;
    free(parent);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the first child element of the specified UI Automation element,
  /// and caches properties and control patterns.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getfirstchildelementbuildcache>.
  IUIAutomationElement? getFirstChildElementBuildCache(
    IUIAutomationElement? element,
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final first = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetFirstChildElementBuildCacheFn(
        ptr,
        element?.ptr ?? nullptr,
        cacheRequest?.ptr ?? nullptr,
        first,
      ),
    );
    if (hr$.isError) {
      free(first);
      throw WindowsException(hr$);
    }
    final result$ = first.value;
    free(first);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the last child element of the specified UI Automation element,
  /// and caches properties and control patterns.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getlastchildelementbuildcache>.
  IUIAutomationElement? getLastChildElementBuildCache(
    IUIAutomationElement? element,
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final last = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetLastChildElementBuildCacheFn(
        ptr,
        element?.ptr ?? nullptr,
        cacheRequest?.ptr ?? nullptr,
        last,
      ),
    );
    if (hr$.isError) {
      free(last);
      throw WindowsException(hr$);
    }
    final result$ = last.value;
    free(last);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the next sibling element of the specified UI Automation element,
  /// and caches properties and control patterns.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getnextsiblingelementbuildcache>.
  IUIAutomationElement? getNextSiblingElementBuildCache(
    IUIAutomationElement? element,
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final next = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetNextSiblingElementBuildCacheFn(
        ptr,
        element?.ptr ?? nullptr,
        cacheRequest?.ptr ?? nullptr,
        next,
      ),
    );
    if (hr$.isError) {
      free(next);
      throw WindowsException(hr$);
    }
    final result$ = next.value;
    free(next);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the previous sibling element of the specified UI Automation
  /// element, and caches properties and control patterns.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getprevioussiblingelementbuildcache>.
  IUIAutomationElement? getPreviousSiblingElementBuildCache(
    IUIAutomationElement? element,
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final previous = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetPreviousSiblingElementBuildCacheFn(
        ptr,
        element?.ptr ?? nullptr,
        cacheRequest?.ptr ?? nullptr,
        previous,
      ),
    );
    if (hr$.isError) {
      free(previous);
      throw WindowsException(hr$);
    }
    final result$ = previous.value;
    free(previous);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the ancestor element nearest to the specified Microsoft UI
  /// Automation element in the tree view, prefetches the requested properties
  /// and control patterns, and stores the prefetched items in the cache.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-normalizeelementbuildcache>.
  IUIAutomationElement? normalizeElementBuildCache(
    IUIAutomationElement? element,
    IUIAutomationCacheRequest? cacheRequest,
  ) {
    final normalized = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _NormalizeElementBuildCacheFn(
        ptr,
        element?.ptr ?? nullptr,
        cacheRequest?.ptr ?? nullptr,
        normalized,
      ),
    );
    if (hr$.isError) {
      free(normalized);
      throw WindowsException(hr$);
    }
    final result$ = normalized.value;
    free(normalized);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the condition that defines the view of the UI Automation tree.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-get_condition>.
  IUIAutomationCondition? get condition {
    final condition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_ConditionFn(ptr, condition));
    if (hr$.isError) {
      free(condition);
      throw WindowsException(hr$);
    }
    final result$ = condition.value;
    free(condition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  @override
  String toString() => 'IUIAutomationTreeWalker(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTreeWalkerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Pointer<VTablePointer> parent,
      )
    >
  >
  GetParentElement;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Pointer<VTablePointer> first,
      )
    >
  >
  GetFirstChildElement;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Pointer<VTablePointer> last,
      )
    >
  >
  GetLastChildElement;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Pointer<VTablePointer> next,
      )
    >
  >
  GetNextSiblingElement;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Pointer<VTablePointer> previous,
      )
    >
  >
  GetPreviousSiblingElement;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Pointer<VTablePointer> normalized,
      )
    >
  >
  NormalizeElement;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> parent,
      )
    >
  >
  GetParentElementBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> first,
      )
    >
  >
  GetFirstChildElementBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> last,
      )
    >
  >
  GetLastChildElementBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> next,
      )
    >
  >
  GetNextSiblingElementBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> previous,
      )
    >
  >
  GetPreviousSiblingElementBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer cacheRequest,
        Pointer<VTablePointer> normalized,
      )
    >
  >
  NormalizeElementBuildCache;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> condition)
    >
  >
  get_Condition;
}

@internal
final class IUIAutomationTreeWalkerCompanion
    extends ComCompanion<IUIAutomationTreeWalker> {
  const IUIAutomationTreeWalkerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTreeWalker Function(VTablePointer) get fromPointer =>
      IUIAutomationTreeWalker.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTreeWalker;
}
