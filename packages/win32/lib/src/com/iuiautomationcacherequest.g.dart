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
import 'iuiautomationcacherequest.g.dart';
import 'iuiautomationcondition.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationCacheRequest = Guid.fromComponents(
  0xb32a92b5,
  0xbc25,
  0x4078,
  Uint8List.fromList(const [0x9c, 0x8, 0xd7, 0xee, 0x95, 0xc4, 0x8e, 0x3]),
);

/// Exposes properties and methods of a cache request.
///
/// Client applications use this interface to specify the properties and control
/// patterns to be cached when a Microsoft UI Automation element is obtained.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationcacherequest>.
///
/// {@category com}
class IUIAutomationCacheRequest extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationCacheRequest] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationCacheRequest] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationCacheRequest(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationCacheRequestVtbl>().ref;

  /// Creates a new instance of [IUIAutomationCacheRequest] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationCacheRequest] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationCacheRequest.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationCacheRequestVtbl _vtable;
  late final _AddPropertyFn =
      _vtable.AddProperty.asFunction<int Function(VTablePointer, int)>();
  late final _AddPatternFn =
      _vtable.AddPattern.asFunction<int Function(VTablePointer, int)>();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_TreeScopeFn = _vtable.get_TreeScope
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_TreeScopeFn = _vtable.put_TreeScope
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_TreeFilterFn = _vtable.get_TreeFilter
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _put_TreeFilterFn = _vtable.put_TreeFilter
      .asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _get_AutomationElementModeFn = _vtable.get_AutomationElementMode
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_AutomationElementModeFn = _vtable.put_AutomationElementMode
      .asFunction<int Function(VTablePointer, int)>();

  /// Adds a property to the cache request.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-addproperty>.
  @pragma('vm:prefer-inline')
  void addProperty(UIA_PROPERTY_ID propertyId) {
    final hr$ = HRESULT(_AddPropertyFn(ptr, propertyId));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a control pattern to the cache request.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-addpattern>.
  @pragma('vm:prefer-inline')
  void addPattern(UIA_PATTERN_ID patternId) {
    final hr$ = HRESULT(_AddPatternFn(ptr, patternId));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a copy of the cache request.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-clone>.
  IUIAutomationCacheRequest? clone() {
    final clonedRequest = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, clonedRequest));
    if (hr$.isError) {
      free(clonedRequest);
      throw WindowsException(hr$);
    }
    final result$ = clonedRequest.value;
    free(clonedRequest);
    if (result$.isNull) return null;
    return IUIAutomationCacheRequest(result$);
  }

  /// Specifies the scope of caching.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-get_treescope>.
  TreeScope get treeScope {
    final scope = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_TreeScopeFn(ptr, scope));
    if (hr$.isError) {
      free(scope);
      throw WindowsException(hr$);
    }
    final result$ = scope.value;
    free(scope);
    return TreeScope(result$);
  }

  set treeScope(TreeScope scope) {
    final hr$ = HRESULT(_put_TreeScopeFn(ptr, scope));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies the view of the UI Automation element tree that is used when
  /// caching.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-get_treefilter>.
  IUIAutomationCondition? get treeFilter {
    final filter = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_TreeFilterFn(ptr, filter));
    if (hr$.isError) {
      free(filter);
      throw WindowsException(hr$);
    }
    final result$ = filter.value;
    free(filter);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  set treeFilter(IUIAutomationCondition? filter) {
    final hr$ = HRESULT(_put_TreeFilterFn(ptr, filter?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Indicates whether returned elements contain full references to the
  /// underlying UI, or only cached information.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-get_automationelementmode>.
  AutomationElementMode get automationElementMode {
    final mode = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_AutomationElementModeFn(ptr, mode));
    if (hr$.isError) {
      free(mode);
      throw WindowsException(hr$);
    }
    final result$ = mode.value;
    free(mode);
    return AutomationElementMode(result$);
  }

  set automationElementMode(AutomationElementMode mode) {
    final hr$ = HRESULT(_put_AutomationElementModeFn(ptr, mode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationCacheRequest(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationCacheRequestVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 propertyId)>
  >
  AddProperty;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 patternId)>
  >
  AddPattern;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> clonedRequest)
    >
  >
  Clone;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> scope)>
  >
  get_TreeScope;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 scope)>
  >
  put_TreeScope;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> filter)
    >
  >
  get_TreeFilter;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer filter)>
  >
  put_TreeFilter;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> mode)>
  >
  get_AutomationElementMode;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 mode)>
  >
  put_AutomationElementMode;
}

@internal
final class IUIAutomationCacheRequestCompanion
    extends ComCompanion<IUIAutomationCacheRequest> {
  const IUIAutomationCacheRequestCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationCacheRequest Function(VTablePointer) get fromPointer =>
      IUIAutomationCacheRequest.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationCacheRequest;
}
