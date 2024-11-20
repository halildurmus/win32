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
import 'iaccessible.g.dart';
import 'interface.g.dart';
import 'iuiautomationelementarray.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationLegacyIAccessiblePattern = Guid.fromComponents(
  0x828055ad,
  0x355b,
  0x4435,
  Uint8List.fromList(const [0x86, 0xd5, 0x3b, 0x51, 0xc1, 0x4a, 0x9b, 0x1b]),
);

/// Exposes methods and properties that enable Microsoft UI Automation clients
/// to retrieve UI information from Microsoft Active Accessibility (MSAA)
/// servers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationlegacyiaccessiblepattern>.
///
/// {@category com}
class IUIAutomationLegacyIAccessiblePattern extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationLegacyIAccessiblePattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationLegacyIAccessiblePattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationLegacyIAccessiblePattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationLegacyIAccessiblePatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationLegacyIAccessiblePattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationLegacyIAccessiblePattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationLegacyIAccessiblePattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationLegacyIAccessiblePatternVtbl _vtable;
  late final _SelectFn =
      _vtable.Select.asFunction<int Function(VTablePointer, int)>();
  late final _DoDefaultActionFn =
      _vtable.DoDefaultAction.asFunction<int Function(VTablePointer)>();
  late final _SetValueFn =
      _vtable.SetValue.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _get_CurrentChildIdFn = _vtable.get_CurrentChildId
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentNameFn = _vtable.get_CurrentName
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentValueFn = _vtable.get_CurrentValue
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentDescriptionFn = _vtable.get_CurrentDescription
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentRoleFn = _vtable.get_CurrentRole
      .asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _get_CurrentStateFn = _vtable.get_CurrentState
      .asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _get_CurrentHelpFn = _vtable.get_CurrentHelp
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentKeyboardShortcutFn = _vtable
      .get_CurrentKeyboardShortcut
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _GetCurrentSelectionFn =
      _vtable.GetCurrentSelection.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _get_CurrentDefaultActionFn = _vtable.get_CurrentDefaultAction
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedChildIdFn = _vtable.get_CachedChildId
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedNameFn = _vtable.get_CachedName
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedValueFn = _vtable.get_CachedValue
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedDescriptionFn = _vtable.get_CachedDescription
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedRoleFn = _vtable.get_CachedRole
      .asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _get_CachedStateFn = _vtable.get_CachedState
      .asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _get_CachedHelpFn = _vtable.get_CachedHelp
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedKeyboardShortcutFn = _vtable.get_CachedKeyboardShortcut
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _GetCachedSelectionFn =
      _vtable.GetCachedSelection.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _get_CachedDefaultActionFn = _vtable.get_CachedDefaultAction
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _GetIAccessibleFn =
      _vtable.GetIAccessible.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Performs a Microsoft Active Accessibility selection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-select>.
  @pragma('vm:prefer-inline')
  void select(int flagsSelect) {
    final hr$ = HRESULT(_SelectFn(ptr, flagsSelect));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs the Microsoft Active Accessibility default action for the
  /// element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-dodefaultaction>.
  @pragma('vm:prefer-inline')
  void doDefaultAction() {
    final hr$ = HRESULT(_DoDefaultActionFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Microsoft Active Accessibility value property for the element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-setvalue>.
  @pragma('vm:prefer-inline')
  void setValue(PCWSTR szValue) {
    final hr$ = HRESULT(_SetValueFn(ptr, szValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the Microsoft Active Accessibility child identifier for the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentchildid>.
  int get currentChildId {
    final pRetVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentChildIdFn(ptr, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    return result$;
  }

  /// Retrieves the Microsoft Active Accessibility name property of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentname>.
  BSTR get currentName {
    final pszName = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentNameFn(ptr, pszName));
    if (hr$.isError) {
      free(pszName);
      throw WindowsException(hr$);
    }
    final result$ = pszName.value;
    free(pszName);
    return result$;
  }

  /// Retrieves the Microsoft Active Accessibility value property.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentvalue>.
  BSTR get currentValue {
    final pszValue = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentValueFn(ptr, pszValue));
    if (hr$.isError) {
      free(pszValue);
      throw WindowsException(hr$);
    }
    final result$ = pszValue.value;
    free(pszValue);
    return result$;
  }

  /// Retrieves the Microsoft Active Accessibility description of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentdescription>.
  BSTR get currentDescription {
    final pszDescription = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentDescriptionFn(ptr, pszDescription));
    if (hr$.isError) {
      free(pszDescription);
      throw WindowsException(hr$);
    }
    final result$ = pszDescription.value;
    free(pszDescription);
    return result$;
  }

  /// Retrieves the Microsoft Active Accessibility role identifier of the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentrole>.
  int get currentRole {
    final pdwRole = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_get_CurrentRoleFn(ptr, pdwRole));
    if (hr$.isError) {
      free(pdwRole);
      throw WindowsException(hr$);
    }
    final result$ = pdwRole.value;
    free(pdwRole);
    return result$;
  }

  /// Retrieves the Microsoft Active Accessibility state identifier for the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentstate>.
  int get currentState {
    final pdwState = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_get_CurrentStateFn(ptr, pdwState));
    if (hr$.isError) {
      free(pdwState);
      throw WindowsException(hr$);
    }
    final result$ = pdwState.value;
    free(pdwState);
    return result$;
  }

  /// Retrieves the Microsoft Active Accessibility help string for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currenthelp>.
  BSTR get currentHelp {
    final pszHelp = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentHelpFn(ptr, pszHelp));
    if (hr$.isError) {
      free(pszHelp);
      throw WindowsException(hr$);
    }
    final result$ = pszHelp.value;
    free(pszHelp);
    return result$;
  }

  /// Retrieves the Microsoft Active Accessibility keyboard shortcut property
  /// for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentkeyboardshortcut>.
  BSTR get currentKeyboardShortcut {
    final pszKeyboardShortcut = loggingCalloc<BSTR>();
    final hr$ = HRESULT(
      _get_CurrentKeyboardShortcutFn(ptr, pszKeyboardShortcut),
    );
    if (hr$.isError) {
      free(pszKeyboardShortcut);
      throw WindowsException(hr$);
    }
    final result$ = pszKeyboardShortcut.value;
    free(pszKeyboardShortcut);
    return result$;
  }

  /// Retrieves the Microsoft Active Accessibility property that identifies the
  /// selected children of this element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-getcurrentselection>.
  IUIAutomationElementArray? getCurrentSelection() {
    final pvarSelectedChildren = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentSelectionFn(ptr, pvarSelectedChildren));
    if (hr$.isError) {
      free(pvarSelectedChildren);
      throw WindowsException(hr$);
    }
    final result$ = pvarSelectedChildren.value;
    free(pvarSelectedChildren);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves the Microsoft Active Accessibility current default action for
  /// the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentdefaultaction>.
  BSTR get currentDefaultAction {
    final pszDefaultAction = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentDefaultActionFn(ptr, pszDefaultAction));
    if (hr$.isError) {
      free(pszDefaultAction);
      throw WindowsException(hr$);
    }
    final result$ = pszDefaultAction.value;
    free(pszDefaultAction);
    return result$;
  }

  /// Retrieves the cached Microsoft Active Accessibility child identifier for
  /// the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedchildid>.
  int get cachedChildId {
    final pRetVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedChildIdFn(ptr, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    return result$;
  }

  /// Retrieves the cached Microsoft Active Accessibility name property of the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedname>.
  BSTR get cachedName {
    final pszName = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedNameFn(ptr, pszName));
    if (hr$.isError) {
      free(pszName);
      throw WindowsException(hr$);
    }
    final result$ = pszName.value;
    free(pszName);
    return result$;
  }

  /// Retrieves the cached Microsoft Active Accessibility value property.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedvalue>.
  BSTR get cachedValue {
    final pszValue = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedValueFn(ptr, pszValue));
    if (hr$.isError) {
      free(pszValue);
      throw WindowsException(hr$);
    }
    final result$ = pszValue.value;
    free(pszValue);
    return result$;
  }

  /// Retrieves the cached Microsoft Active Accessibility description of the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cacheddescription>.
  BSTR get cachedDescription {
    final pszDescription = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedDescriptionFn(ptr, pszDescription));
    if (hr$.isError) {
      free(pszDescription);
      throw WindowsException(hr$);
    }
    final result$ = pszDescription.value;
    free(pszDescription);
    return result$;
  }

  /// Retrieves the cached Microsoft Active Accessibility role of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedrole>.
  int get cachedRole {
    final pdwRole = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_get_CachedRoleFn(ptr, pdwRole));
    if (hr$.isError) {
      free(pdwRole);
      throw WindowsException(hr$);
    }
    final result$ = pdwRole.value;
    free(pdwRole);
    return result$;
  }

  /// Retrieves the cached Microsoft Active Accessibility state identifier for
  /// the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedstate>.
  int get cachedState {
    final pdwState = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_get_CachedStateFn(ptr, pdwState));
    if (hr$.isError) {
      free(pdwState);
      throw WindowsException(hr$);
    }
    final result$ = pdwState.value;
    free(pdwState);
    return result$;
  }

  /// Retrieves the cached Microsoft Active Accessibility help string for the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedhelp>.
  BSTR get cachedHelp {
    final pszHelp = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedHelpFn(ptr, pszHelp));
    if (hr$.isError) {
      free(pszHelp);
      throw WindowsException(hr$);
    }
    final result$ = pszHelp.value;
    free(pszHelp);
    return result$;
  }

  /// Retrieves the cached Microsoft Active Accessibility keyboard shortcut
  /// property for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedkeyboardshortcut>.
  BSTR get cachedKeyboardShortcut {
    final pszKeyboardShortcut = loggingCalloc<BSTR>();
    final hr$ = HRESULT(
      _get_CachedKeyboardShortcutFn(ptr, pszKeyboardShortcut),
    );
    if (hr$.isError) {
      free(pszKeyboardShortcut);
      throw WindowsException(hr$);
    }
    final result$ = pszKeyboardShortcut.value;
    free(pszKeyboardShortcut);
    return result$;
  }

  /// Retrieves the cached Microsoft Active Accessibility property that
  /// identifies the selected children of this element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-getcachedselection>.
  IUIAutomationElementArray? getCachedSelection() {
    final pvarSelectedChildren = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCachedSelectionFn(ptr, pvarSelectedChildren));
    if (hr$.isError) {
      free(pvarSelectedChildren);
      throw WindowsException(hr$);
    }
    final result$ = pvarSelectedChildren.value;
    free(pvarSelectedChildren);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves the Microsoft Active Accessibility cached default action for the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cacheddefaultaction>.
  BSTR get cachedDefaultAction {
    final pszDefaultAction = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedDefaultActionFn(ptr, pszDefaultAction));
    if (hr$.isError) {
      free(pszDefaultAction);
      throw WindowsException(hr$);
    }
    final result$ = pszDefaultAction.value;
    free(pszDefaultAction);
    return result$;
  }

  /// Retrieves an IAccessible object that corresponds to the Microsoft UI
  /// Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-getiaccessible>.
  IAccessible? getIAccessible() {
    final ppAccessible = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetIAccessibleFn(ptr, ppAccessible));
    if (hr$.isError) {
      free(ppAccessible);
      throw WindowsException(hr$);
    }
    final result$ = ppAccessible.value;
    free(ppAccessible);
    if (result$.isNull) return null;
    return IAccessible(result$);
  }

  @override
  String toString() => 'IUIAutomationLegacyIAccessiblePattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationLegacyIAccessiblePatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 flagsSelect)>
  >
  Select;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  DoDefaultAction;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR szValue)>
  >
  SetValue;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> pRetVal)>
  >
  get_CurrentChildId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> pszName)>
  >
  get_CurrentName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> pszValue)>
  >
  get_CurrentValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BSTR> pszDescription)
    >
  >
  get_CurrentDescription;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pdwRole)>
  >
  get_CurrentRole;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwState)
    >
  >
  get_CurrentState;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> pszHelp)>
  >
  get_CurrentHelp;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BSTR> pszKeyboardShortcut)
    >
  >
  get_CurrentKeyboardShortcut;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> pvarSelectedChildren,
      )
    >
  >
  GetCurrentSelection;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BSTR> pszDefaultAction)
    >
  >
  get_CurrentDefaultAction;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> pRetVal)>
  >
  get_CachedChildId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> pszName)>
  >
  get_CachedName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> pszValue)>
  >
  get_CachedValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BSTR> pszDescription)
    >
  >
  get_CachedDescription;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pdwRole)>
  >
  get_CachedRole;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwState)
    >
  >
  get_CachedState;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> pszHelp)>
  >
  get_CachedHelp;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BSTR> pszKeyboardShortcut)
    >
  >
  get_CachedKeyboardShortcut;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> pvarSelectedChildren,
      )
    >
  >
  GetCachedSelection;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BSTR> pszDefaultAction)
    >
  >
  get_CachedDefaultAction;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppAccessible)
    >
  >
  GetIAccessible;
}

@internal
final class IUIAutomationLegacyIAccessiblePatternCompanion
    extends ComCompanion<IUIAutomationLegacyIAccessiblePattern> {
  const IUIAutomationLegacyIAccessiblePatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationLegacyIAccessiblePattern Function(VTablePointer)
  get fromPointer => IUIAutomationLegacyIAccessiblePattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationLegacyIAccessiblePattern;
}
