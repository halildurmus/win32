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
import '../variant.dart';
import 'idispatch.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAccessible = GUID.fromComponents(
  0x618736e0,
  0x3c3d,
  0x11cf,
  Uint8List.fromList(const [0x81, 0xc, 0x0, 0xaa, 0x0, 0x38, 0x9b, 0x71]),
);

/// Exposes methods and properties that make a user interface element and its
/// children accessible to client applications.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oleacc/nn-oleacc-iaccessible>.
///
/// {@category com}
class IAccessible extends IDispatch implements ComInterface {
  /// Creates a new instance of [IAccessible] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAccessible] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  IAccessible(super.ptr) : _vtable = ptr.value.cast<IAccessibleVtbl>().ref;

  /// Creates a new instance of [IAccessible] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAccessible] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAccessible.from(IUnknown interface) => interface.queryInterface();

  final IAccessibleVtbl _vtable;
  late final _get_accParentFn = _vtable.get_accParent
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_accChildCountFn = _vtable.get_accChildCount
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_accChildFn = _vtable.get_accChild
      .asFunction<
        int Function(VTablePointer, VARIANT, Pointer<VTablePointer>)
      >();
  late final _get_accNameFn = _vtable.get_accName
      .asFunction<
        int Function(VTablePointer, VARIANT, Pointer<Pointer<Utf16>>)
      >();
  late final _get_accValueFn = _vtable.get_accValue
      .asFunction<
        int Function(VTablePointer, VARIANT, Pointer<Pointer<Utf16>>)
      >();
  late final _get_accDescriptionFn = _vtable.get_accDescription
      .asFunction<
        int Function(VTablePointer, VARIANT, Pointer<Pointer<Utf16>>)
      >();
  late final _get_accRoleFn = _vtable.get_accRole
      .asFunction<int Function(VTablePointer, VARIANT, Pointer<VARIANT>)>();
  late final _get_accStateFn = _vtable.get_accState
      .asFunction<int Function(VTablePointer, VARIANT, Pointer<VARIANT>)>();
  late final _get_accHelpFn = _vtable.get_accHelp
      .asFunction<
        int Function(VTablePointer, VARIANT, Pointer<Pointer<Utf16>>)
      >();
  late final _get_accHelpTopicFn = _vtable.get_accHelpTopic
      .asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer<Utf16>>,
          VARIANT,
          Pointer<Int32>,
        )
      >();
  late final _get_accKeyboardShortcutFn = _vtable.get_accKeyboardShortcut
      .asFunction<
        int Function(VTablePointer, VARIANT, Pointer<Pointer<Utf16>>)
      >();
  late final _get_accFocusFn = _vtable.get_accFocus
      .asFunction<int Function(VTablePointer, Pointer<VARIANT>)>();
  late final _get_accSelectionFn = _vtable.get_accSelection
      .asFunction<int Function(VTablePointer, Pointer<VARIANT>)>();
  late final _get_accDefaultActionFn = _vtable.get_accDefaultAction
      .asFunction<
        int Function(VTablePointer, VARIANT, Pointer<Pointer<Utf16>>)
      >();
  late final _accSelectFn = _vtable.accSelect
      .asFunction<int Function(VTablePointer, int, VARIANT)>();
  late final _accLocationFn = _vtable.accLocation
      .asFunction<
        int Function(
          VTablePointer,
          Pointer<Int32>,
          Pointer<Int32>,
          Pointer<Int32>,
          Pointer<Int32>,
          VARIANT,
        )
      >();
  late final _accNavigateFn = _vtable.accNavigate
      .asFunction<
        int Function(VTablePointer, int, VARIANT, Pointer<VARIANT>)
      >();
  late final _accHitTestFn = _vtable.accHitTest
      .asFunction<int Function(VTablePointer, int, int, Pointer<VARIANT>)>();
  late final _accDoDefaultActionFn = _vtable.accDoDefaultAction
      .asFunction<int Function(VTablePointer, VARIANT)>();
  late final _put_accNameFn = _vtable.put_accName
      .asFunction<int Function(VTablePointer, VARIANT, Pointer<Utf16>)>();
  late final _put_accValueFn = _vtable.put_accValue
      .asFunction<int Function(VTablePointer, VARIANT, Pointer<Utf16>)>();

  /// Retrieves the IDispatch of the object's parent.
  ///
  /// All objects support this property.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_accparent>.
  IDispatch? get accParent {
    final ppdispParent = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_accParentFn(ptr, ppdispParent));
    if (hr$.isError) {
      free(ppdispParent);
      throw WindowsException(hr$);
    }
    final result$ = ppdispParent.value;
    free(ppdispParent);
    if (result$.isNull) return null;
    return IDispatch(result$);
  }

  /// Retrieves the number of children that belong to this object.
  ///
  /// All objects must support this property.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_accchildcount>.
  int get accChildCount {
    final pcountChildren = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_get_accChildCountFn(ptr, pcountChildren));
    if (hr$.isError) {
      free(pcountChildren);
      throw WindowsException(hr$);
    }
    final result$ = pcountChildren.value;
    free(pcountChildren);
    return result$;
  }

  /// Retrieves an IDispatch for the specified child, if one exists.
  ///
  /// All objects must support this property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_accchild>.
  IDispatch? accChild(VARIANT varChild) {
    final ppdispChild = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_accChildFn(ptr, varChild, ppdispChild));
    if (hr$.isError) {
      free(ppdispChild);
      throw WindowsException(hr$);
    }
    final result$ = ppdispChild.value;
    free(ppdispChild);
    if (result$.isNull) return null;
    return IDispatch(result$);
  }

  /// Retrieves the name of the specified object.
  ///
  /// All objects support this property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_accname>.
  BSTR accName(VARIANT varChild) {
    final pszName = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_accNameFn(ptr, varChild, pszName));
    if (hr$.isError) {
      free(pszName);
      throw WindowsException(hr$);
    }
    final result$ = pszName.value;
    free(pszName);
    return BSTR(result$);
  }

  /// Retrieves the value of the specified object.
  ///
  /// Not all objects have a value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_accvalue>.
  BSTR accValue(VARIANT varChild) {
    final pszValue = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_accValueFn(ptr, varChild, pszValue));
    if (hr$.isError) {
      free(pszValue);
      throw WindowsException(hr$);
    }
    final result$ = pszValue.value;
    free(pszValue);
    return BSTR(result$);
  }

  /// Retrieves a string that describes the visual appearance of the specified
  /// object.
  ///
  /// Not all objects have a description.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_accdescription>.
  BSTR accDescription(VARIANT varChild) {
    final pszDescription = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_accDescriptionFn(ptr, varChild, pszDescription));
    if (hr$.isError) {
      free(pszDescription);
      throw WindowsException(hr$);
    }
    final result$ = pszDescription.value;
    free(pszDescription);
    return BSTR(result$);
  }

  /// Retrieves information that describes the role of the specified object.
  ///
  /// All objects support this property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_accrole>.
  Pointer<VARIANT> accRole(VARIANT varChild) {
    final pvarRole = adaptiveCalloc<VARIANT>();
    final hr$ = HRESULT(_get_accRoleFn(ptr, varChild, pvarRole));
    if (hr$.isError) {
      free(pvarRole);
      throw WindowsException(hr$);
    }
    return pvarRole;
  }

  /// Retrieves the current state of the specified object.
  ///
  /// All objects support this property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_accstate>.
  Pointer<VARIANT> accState(VARIANT varChild) {
    final pvarState = adaptiveCalloc<VARIANT>();
    final hr$ = HRESULT(_get_accStateFn(ptr, varChild, pvarState));
    if (hr$.isError) {
      free(pvarState);
      throw WindowsException(hr$);
    }
    return pvarState;
  }

  /// Retrieves the Help property string of an object.
  ///
  /// Not all objects support this property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_acchelp>.
  BSTR accHelp(VARIANT varChild) {
    final pszHelp = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_accHelpFn(ptr, varChild, pszHelp));
    if (hr$.isError) {
      free(pszHelp);
      throw WindowsException(hr$);
    }
    final result$ = pszHelp.value;
    free(pszHelp);
    return BSTR(result$);
  }

  /// Retrieves the full path of the WinHelp file that is associated with the
  /// specified object; it also retrieves the identifier of the appropriate
  /// topic within that file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_acchelptopic>.
  @pragma('vm:prefer-inline')
  void accHelpTopic(
    Pointer<Pointer<Utf16>> pszHelpFile,
    VARIANT varChild,
    Pointer<Int32> pidTopic,
  ) {
    final hr$ = HRESULT(
      _get_accHelpTopicFn(ptr, pszHelpFile, varChild, pidTopic),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the specified object's shortcut key or access key, also known as
  /// the mnemonic.
  ///
  /// All objects that have a shortcut key or an access key support this
  /// property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_acckeyboardshortcut>.
  BSTR accKeyboardShortcut(VARIANT varChild) {
    final pszKeyboardShortcut = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(
      _get_accKeyboardShortcutFn(ptr, varChild, pszKeyboardShortcut),
    );
    if (hr$.isError) {
      free(pszKeyboardShortcut);
      throw WindowsException(hr$);
    }
    final result$ = pszKeyboardShortcut.value;
    free(pszKeyboardShortcut);
    return BSTR(result$);
  }

  /// Retrieves the object that has the keyboard focus.
  ///
  /// All objects that may receive the keyboard focus must support this
  /// property.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_accfocus>.
  Pointer<VARIANT> get accFocus {
    final pvarChild = adaptiveCalloc<VARIANT>();
    final hr$ = HRESULT(_get_accFocusFn(ptr, pvarChild));
    if (hr$.isError) {
      free(pvarChild);
      throw WindowsException(hr$);
    }
    return pvarChild;
  }

  /// Retrieves the selected children of this object.
  ///
  /// All objects that support selection must support this property.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_accselection>.
  Pointer<VARIANT> get accSelection {
    final pvarChildren = adaptiveCalloc<VARIANT>();
    final hr$ = HRESULT(_get_accSelectionFn(ptr, pvarChildren));
    if (hr$.isError) {
      free(pvarChildren);
      throw WindowsException(hr$);
    }
    return pvarChildren;
  }

  /// Retrieves a string that indicates the object's default action.
  ///
  /// Not all objects have a default action.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-get_accdefaultaction>.
  BSTR accDefaultAction(VARIANT varChild) {
    final pszDefaultAction = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(
      _get_accDefaultActionFn(ptr, varChild, pszDefaultAction),
    );
    if (hr$.isError) {
      free(pszDefaultAction);
      throw WindowsException(hr$);
    }
    final result$ = pszDefaultAction.value;
    free(pszDefaultAction);
    return BSTR(result$);
  }

  /// Modifies the selection or moves the keyboard focus of the specified
  /// object.
  ///
  /// All objects that support selection or receive the keyboard focus must
  /// support this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-accselect>.
  @pragma('vm:prefer-inline')
  void accSelect(int flagsSelect, VARIANT varChild) {
    final hr$ = HRESULT(_accSelectFn(ptr, flagsSelect, varChild));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the specified object's current screen location.
  ///
  /// All visual objects must support this method. Sound objects do not support
  /// this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-acclocation>.
  @pragma('vm:prefer-inline')
  void accLocation(
    Pointer<Int32> pxLeft,
    Pointer<Int32> pyTop,
    Pointer<Int32> pcxWidth,
    Pointer<Int32> pcyHeight,
    VARIANT varChild,
  ) {
    final hr$ = HRESULT(
      _accLocationFn(ptr, pxLeft, pyTop, pcxWidth, pcyHeight, varChild),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Traverses to another UI element within a container and retrieves the
  /// object.
  ///
  /// This method is optional.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-accnavigate>.
  Pointer<VARIANT> accNavigate(int navDir, VARIANT varStart) {
    final pvarEndUpAt = adaptiveCalloc<VARIANT>();
    final hr$ = HRESULT(_accNavigateFn(ptr, navDir, varStart, pvarEndUpAt));
    if (hr$.isError) {
      free(pvarEndUpAt);
      throw WindowsException(hr$);
    }
    return pvarEndUpAt;
  }

  /// Retrieves the child element or child object that is displayed at a
  /// specific point on the screen.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-acchittest>.
  Pointer<VARIANT> accHitTest(int xLeft, int yTop) {
    final pvarChild = adaptiveCalloc<VARIANT>();
    final hr$ = HRESULT(_accHitTestFn(ptr, xLeft, yTop, pvarChild));
    if (hr$.isError) {
      free(pvarChild);
      throw WindowsException(hr$);
    }
    return pvarChild;
  }

  /// Performs the specified object's default action.
  ///
  /// Not all objects have a default action.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-accdodefaultaction>.
  @pragma('vm:prefer-inline')
  void accDoDefaultAction(VARIANT varChild) {
    final hr$ = HRESULT(_accDoDefaultActionFn(ptr, varChild));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// No longer supported.
  ///
  /// Client applications should use a control-specific workaround, such as the
  /// SetWindowText function. Servers should return E_NOTIMPL.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-put_accname>.
  @pragma('vm:prefer-inline')
  void setAccName(VARIANT varChild, BSTR szName) {
    final hr$ = HRESULT(_put_accNameFn(ptr, varChild, szName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the value of the specified object.
  ///
  /// Not all objects have a value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/oleacc/nf-oleacc-iaccessible-put_accvalue>.
  @pragma('vm:prefer-inline')
  void setAccValue(VARIANT varChild, BSTR szValue) {
    final hr$ = HRESULT(_put_accValueFn(ptr, varChild, szValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAccessible(ptr: $ptr)';
}

/// @nodoc
base class IAccessibleVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppdispParent)
    >
  >
  get_accParent;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> pcountChildren)
    >
  >
  get_accChildCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT varChild,
        Pointer<VTablePointer> ppdispChild,
      )
    >
  >
  get_accChild;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT varChild,
        Pointer<Pointer<Utf16>> pszName,
      )
    >
  >
  get_accName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT varChild,
        Pointer<Pointer<Utf16>> pszValue,
      )
    >
  >
  get_accValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT varChild,
        Pointer<Pointer<Utf16>> pszDescription,
      )
    >
  >
  get_accDescription;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT varChild,
        Pointer<VARIANT> pvarRole,
      )
    >
  >
  get_accRole;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT varChild,
        Pointer<VARIANT> pvarState,
      )
    >
  >
  get_accState;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT varChild,
        Pointer<Pointer<Utf16>> pszHelp,
      )
    >
  >
  get_accHelp;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<Utf16>> pszHelpFile,
        VARIANT varChild,
        Pointer<Int32> pidTopic,
      )
    >
  >
  get_accHelpTopic;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT varChild,
        Pointer<Pointer<Utf16>> pszKeyboardShortcut,
      )
    >
  >
  get_accKeyboardShortcut;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VARIANT> pvarChild)
    >
  >
  get_accFocus;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VARIANT> pvarChildren)
    >
  >
  get_accSelection;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT varChild,
        Pointer<Pointer<Utf16>> pszDefaultAction,
      )
    >
  >
  get_accDefaultAction;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 flagsSelect, VARIANT varChild)
    >
  >
  accSelect;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Int32> pxLeft,
        Pointer<Int32> pyTop,
        Pointer<Int32> pcxWidth,
        Pointer<Int32> pcyHeight,
        VARIANT varChild,
      )
    >
  >
  accLocation;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 navDir,
        VARIANT varStart,
        Pointer<VARIANT> pvarEndUpAt,
      )
    >
  >
  accNavigate;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 xLeft,
        Int32 yTop,
        Pointer<VARIANT> pvarChild,
      )
    >
  >
  accHitTest;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VARIANT varChild)>
  >
  accDoDefaultAction;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT varChild,
        Pointer<Utf16> szName,
      )
    >
  >
  put_accName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT varChild,
        Pointer<Utf16> szValue,
      )
    >
  >
  put_accValue;
}

@internal
final class IAccessibleCompanion extends ComCompanion<IAccessible> {
  const IAccessibleCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAccessible Function(VTablePointer) get fromPointer => IAccessible.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAccessible;
}
