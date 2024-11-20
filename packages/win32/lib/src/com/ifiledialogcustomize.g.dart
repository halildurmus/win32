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
import 'iunknown.g.dart';

/// @nodoc
final IID_IFileDialogCustomize = Guid.fromComponents(
  0xe6fdd21a,
  0x163f,
  0x4975,
  Uint8List.fromList(const [0x9c, 0x8c, 0xa6, 0x9f, 0x1b, 0xa3, 0x70, 0x34]),
);

/// Exposes methods that allow an application to add controls to a common file
/// dialog.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifiledialogcustomize>.
///
/// {@category com}
class IFileDialogCustomize extends IUnknown implements ComInterface {
  /// Creates a new instance of [IFileDialogCustomize] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IFileDialogCustomize]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IFileDialogCustomize(super.ptr)
    : _vtable = ptr.value.cast<IFileDialogCustomizeVtbl>().ref;

  /// Creates a new instance of [IFileDialogCustomize] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IFileDialogCustomize] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IFileDialogCustomize.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IFileDialogCustomizeVtbl _vtable;
  late final _EnableOpenDropDownFn =
      _vtable.EnableOpenDropDown.asFunction<int Function(VTablePointer, int)>();
  late final _AddMenuFn =
      _vtable.AddMenu.asFunction<int Function(VTablePointer, int, PCWSTR)>();
  late final _AddPushButtonFn = _vtable
      .AddPushButton.asFunction<int Function(VTablePointer, int, PCWSTR)>();
  late final _AddComboBoxFn =
      _vtable.AddComboBox.asFunction<int Function(VTablePointer, int)>();
  late final _AddRadioButtonListFn =
      _vtable.AddRadioButtonList.asFunction<int Function(VTablePointer, int)>();
  late final _AddCheckButtonFn =
      _vtable.AddCheckButton.asFunction<
        int Function(VTablePointer, int, PCWSTR, int)
      >();
  late final _AddEditBoxFn =
      _vtable.AddEditBox.asFunction<int Function(VTablePointer, int, PCWSTR)>();
  late final _AddSeparatorFn =
      _vtable.AddSeparator.asFunction<int Function(VTablePointer, int)>();
  late final _AddTextFn =
      _vtable.AddText.asFunction<int Function(VTablePointer, int, PCWSTR)>();
  late final _SetControlLabelFn = _vtable
      .SetControlLabel.asFunction<int Function(VTablePointer, int, PCWSTR)>();
  late final _GetControlStateFn =
      _vtable.GetControlState.asFunction<
        int Function(VTablePointer, int, Pointer<Int32>)
      >();
  late final _SetControlStateFn = _vtable
      .SetControlState.asFunction<int Function(VTablePointer, int, int)>();
  late final _GetEditBoxTextFn =
      _vtable.GetEditBoxText.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer<Uint16>>)
      >();
  late final _SetEditBoxTextFn = _vtable
      .SetEditBoxText.asFunction<int Function(VTablePointer, int, PCWSTR)>();
  late final _GetCheckButtonStateFn =
      _vtable.GetCheckButtonState.asFunction<
        int Function(VTablePointer, int, Pointer<BOOL>)
      >();
  late final _SetCheckButtonStateFn = _vtable
      .SetCheckButtonState.asFunction<int Function(VTablePointer, int, int)>();
  late final _AddControlItemFn =
      _vtable.AddControlItem.asFunction<
        int Function(VTablePointer, int, int, PCWSTR)
      >();
  late final _RemoveControlItemFn = _vtable
      .RemoveControlItem.asFunction<int Function(VTablePointer, int, int)>();
  late final _RemoveAllControlItemsFn = _vtable
      .RemoveAllControlItems.asFunction<int Function(VTablePointer, int)>();
  late final _GetControlItemStateFn =
      _vtable.GetControlItemState.asFunction<
        int Function(VTablePointer, int, int, Pointer<Int32>)
      >();
  late final _SetControlItemStateFn =
      _vtable.SetControlItemState.asFunction<
        int Function(VTablePointer, int, int, int)
      >();
  late final _GetSelectedControlItemFn =
      _vtable.GetSelectedControlItem.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>)
      >();
  late final _SetSelectedControlItemFn =
      _vtable.SetSelectedControlItem.asFunction<
        int Function(VTablePointer, int, int)
      >();
  late final _StartVisualGroupFn = _vtable
      .StartVisualGroup.asFunction<int Function(VTablePointer, int, PCWSTR)>();
  late final _EndVisualGroupFn =
      _vtable.EndVisualGroup.asFunction<int Function(VTablePointer)>();
  late final _MakeProminentFn =
      _vtable.MakeProminent.asFunction<int Function(VTablePointer, int)>();
  late final _SetControlItemTextFn =
      _vtable.SetControlItemText.asFunction<
        int Function(VTablePointer, int, int, PCWSTR)
      >();

  /// Enables a drop-down list on the Open or Save button in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-enableopendropdown>.
  @pragma('vm:prefer-inline')
  void enableOpenDropDown(int dwIDCtl) {
    final hr$ = HRESULT(_EnableOpenDropDownFn(ptr, dwIDCtl));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a menu to the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addmenu>.
  @pragma('vm:prefer-inline')
  void addMenu(int dwIDCtl, PCWSTR pszLabel) {
    final hr$ = HRESULT(_AddMenuFn(ptr, dwIDCtl, pszLabel));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a button to the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addpushbutton>.
  @pragma('vm:prefer-inline')
  void addPushButton(int dwIDCtl, PCWSTR pszLabel) {
    final hr$ = HRESULT(_AddPushButtonFn(ptr, dwIDCtl, pszLabel));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a combo box to the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addcombobox>.
  @pragma('vm:prefer-inline')
  void addComboBox(int dwIDCtl) {
    final hr$ = HRESULT(_AddComboBoxFn(ptr, dwIDCtl));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds an option button (also known as radio button) group to the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addradiobuttonlist>.
  @pragma('vm:prefer-inline')
  void addRadioButtonList(int dwIDCtl) {
    final hr$ = HRESULT(_AddRadioButtonListFn(ptr, dwIDCtl));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a check button (check box) to the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addcheckbutton>.
  @pragma('vm:prefer-inline')
  void addCheckButton(int dwIDCtl, PCWSTR pszLabel, bool bChecked) {
    final hr$ = HRESULT(
      _AddCheckButtonFn(ptr, dwIDCtl, pszLabel, bChecked ? TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds an edit box control to the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addeditbox>.
  @pragma('vm:prefer-inline')
  void addEditBox(int dwIDCtl, PCWSTR pszText) {
    final hr$ = HRESULT(_AddEditBoxFn(ptr, dwIDCtl, pszText));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a separator to the dialog, allowing a visual separation of controls.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addseparator>.
  @pragma('vm:prefer-inline')
  void addSeparator(int dwIDCtl) {
    final hr$ = HRESULT(_AddSeparatorFn(ptr, dwIDCtl));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds text content to the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addtext>.
  @pragma('vm:prefer-inline')
  void addText(int dwIDCtl, PCWSTR pszText) {
    final hr$ = HRESULT(_AddTextFn(ptr, dwIDCtl, pszText));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the text associated with a control, such as button text or an edit
  /// box label.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setcontrollabel>.
  @pragma('vm:prefer-inline')
  void setControlLabel(int dwIDCtl, PCWSTR pszLabel) {
    final hr$ = HRESULT(_SetControlLabelFn(ptr, dwIDCtl, pszLabel));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the current visibility and enabled states of a given control.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-getcontrolstate>.
  CDCONTROLSTATEF getControlState(int dwIDCtl) {
    final pdwState = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetControlStateFn(ptr, dwIDCtl, pdwState));
    if (hr$.isError) {
      free(pdwState);
      throw WindowsException(hr$);
    }
    final result$ = pdwState.value;
    free(pdwState);
    return CDCONTROLSTATEF(result$);
  }

  /// Sets the current visibility and enabled states of a given control.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setcontrolstate>.
  @pragma('vm:prefer-inline')
  void setControlState(int dwIDCtl, CDCONTROLSTATEF dwState) {
    final hr$ = HRESULT(_SetControlStateFn(ptr, dwIDCtl, dwState));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the current text in an edit box control.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-geteditboxtext>.
  Pointer<Uint16> getEditBoxText(int dwIDCtl) {
    final ppszText = loggingCalloc<Pointer<Uint16>>();
    final hr$ = HRESULT(_GetEditBoxTextFn(ptr, dwIDCtl, ppszText));
    if (hr$.isError) {
      free(ppszText);
      throw WindowsException(hr$);
    }
    final result$ = ppszText.value;
    free(ppszText);
    return result$;
  }

  /// Sets the text in an edit box control found in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-seteditboxtext>.
  @pragma('vm:prefer-inline')
  void setEditBoxText(int dwIDCtl, PCWSTR pszText) {
    final hr$ = HRESULT(_SetEditBoxTextFn(ptr, dwIDCtl, pszText));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the current state of a check button (check box) in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-getcheckbuttonstate>.
  bool getCheckButtonState(int dwIDCtl) {
    final pbChecked = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_GetCheckButtonStateFn(ptr, dwIDCtl, pbChecked));
    if (hr$.isError) {
      free(pbChecked);
      throw WindowsException(hr$);
    }
    final result$ = pbChecked.value;
    free(pbChecked);
    return result$ != FALSE;
  }

  /// Sets the state of a check button (check box) in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setcheckbuttonstate>.
  @pragma('vm:prefer-inline')
  void setCheckButtonState(int dwIDCtl, bool bChecked) {
    final hr$ = HRESULT(
      _SetCheckButtonStateFn(ptr, dwIDCtl, bChecked ? TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds an item to a container control in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addcontrolitem>.
  @pragma('vm:prefer-inline')
  void addControlItem(int dwIDCtl, int dwIDItem, PCWSTR pszLabel) {
    final hr$ = HRESULT(_AddControlItemFn(ptr, dwIDCtl, dwIDItem, pszLabel));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes an item from a container control in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-removecontrolitem>.
  @pragma('vm:prefer-inline')
  void removeControlItem(int dwIDCtl, int dwIDItem) {
    final hr$ = HRESULT(_RemoveControlItemFn(ptr, dwIDCtl, dwIDItem));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Not implemented.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-removeallcontrolitems>.
  @pragma('vm:prefer-inline')
  void removeAllControlItems(int dwIDCtl) {
    final hr$ = HRESULT(_RemoveAllControlItemsFn(ptr, dwIDCtl));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the current state of an item in a container control found in the
  /// dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-getcontrolitemstate>.
  CDCONTROLSTATEF getControlItemState(int dwIDCtl, int dwIDItem) {
    final pdwState = loggingCalloc<Int32>();
    final hr$ = HRESULT(
      _GetControlItemStateFn(ptr, dwIDCtl, dwIDItem, pdwState),
    );
    if (hr$.isError) {
      free(pdwState);
      throw WindowsException(hr$);
    }
    final result$ = pdwState.value;
    free(pdwState);
    return CDCONTROLSTATEF(result$);
  }

  /// Sets the current state of an item in a container control found in the
  /// dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setcontrolitemstate>.
  @pragma('vm:prefer-inline')
  void setControlItemState(int dwIDCtl, int dwIDItem, CDCONTROLSTATEF dwState) {
    final hr$ = HRESULT(
      _SetControlItemStateFn(ptr, dwIDCtl, dwIDItem, dwState),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a particular item from specified container controls in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-getselectedcontrolitem>.
  int getSelectedControlItem(int dwIDCtl) {
    final pdwIDItem = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetSelectedControlItemFn(ptr, dwIDCtl, pdwIDItem));
    if (hr$.isError) {
      free(pdwIDItem);
      throw WindowsException(hr$);
    }
    final result$ = pdwIDItem.value;
    free(pdwIDItem);
    return result$;
  }

  /// Sets the selected state of a particular item in an option button group or
  /// a combo box found in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setselectedcontrolitem>.
  @pragma('vm:prefer-inline')
  void setSelectedControlItem(int dwIDCtl, int dwIDItem) {
    final hr$ = HRESULT(_SetSelectedControlItemFn(ptr, dwIDCtl, dwIDItem));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Declares a visual group in the dialog.
  ///
  /// Subsequent calls to any `add` method add those elements to this group.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-startvisualgroup>.
  @pragma('vm:prefer-inline')
  void startVisualGroup(int dwIDCtl, PCWSTR pszLabel) {
    final hr$ = HRESULT(_StartVisualGroupFn(ptr, dwIDCtl, pszLabel));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Stops the addition of elements to a visual group in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-endvisualgroup>.
  @pragma('vm:prefer-inline')
  void endVisualGroup() {
    final hr$ = HRESULT(_EndVisualGroupFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Places a control in the dialog so that it stands out compared to other
  /// added controls.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-makeprominent>.
  @pragma('vm:prefer-inline')
  void makeProminent(int dwIDCtl) {
    final hr$ = HRESULT(_MakeProminentFn(ptr, dwIDCtl));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the text of a control item.
  ///
  /// For example, the text that accompanies a radio button or an item in a
  /// menu.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setcontrolitemtext>.
  @pragma('vm:prefer-inline')
  void setControlItemText(int dwIDCtl, int dwIDItem, PCWSTR pszLabel) {
    final hr$ = HRESULT(
      _SetControlItemTextFn(ptr, dwIDCtl, dwIDItem, pszLabel),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IFileDialogCustomize(ptr: $ptr)';
}

/// @nodoc
base class IFileDialogCustomizeVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwIDCtl)>
  >
  EnableOpenDropDown;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIDCtl, PCWSTR pszLabel)
    >
  >
  AddMenu;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIDCtl, PCWSTR pszLabel)
    >
  >
  AddPushButton;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwIDCtl)>
  >
  AddComboBox;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwIDCtl)>
  >
  AddRadioButtonList;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIDCtl,
        PCWSTR pszLabel,
        BOOL bChecked,
      )
    >
  >
  AddCheckButton;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIDCtl, PCWSTR pszText)
    >
  >
  AddEditBox;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwIDCtl)>
  >
  AddSeparator;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIDCtl, PCWSTR pszText)
    >
  >
  AddText;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIDCtl, PCWSTR pszLabel)
    >
  >
  SetControlLabel;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIDCtl,
        Pointer<Int32> pdwState,
      )
    >
  >
  GetControlState;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIDCtl, Int32 dwState)
    >
  >
  SetControlState;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIDCtl,
        Pointer<Pointer<Uint16>> ppszText,
      )
    >
  >
  GetEditBoxText;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIDCtl, PCWSTR pszText)
    >
  >
  SetEditBoxText;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIDCtl,
        Pointer<BOOL> pbChecked,
      )
    >
  >
  GetCheckButtonState;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIDCtl, BOOL bChecked)
    >
  >
  SetCheckButtonState;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIDCtl,
        Uint32 dwIDItem,
        PCWSTR pszLabel,
      )
    >
  >
  AddControlItem;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIDCtl, Uint32 dwIDItem)
    >
  >
  RemoveControlItem;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwIDCtl)>
  >
  RemoveAllControlItems;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIDCtl,
        Uint32 dwIDItem,
        Pointer<Int32> pdwState,
      )
    >
  >
  GetControlItemState;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIDCtl,
        Uint32 dwIDItem,
        Int32 dwState,
      )
    >
  >
  SetControlItemState;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIDCtl,
        Pointer<Uint32> pdwIDItem,
      )
    >
  >
  GetSelectedControlItem;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIDCtl, Uint32 dwIDItem)
    >
  >
  SetSelectedControlItem;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIDCtl, PCWSTR pszLabel)
    >
  >
  StartVisualGroup;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  EndVisualGroup;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwIDCtl)>
  >
  MakeProminent;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIDCtl,
        Uint32 dwIDItem,
        PCWSTR pszLabel,
      )
    >
  >
  SetControlItemText;
}

@internal
final class IFileDialogCustomizeCompanion
    extends ComCompanion<IFileDialogCustomize> {
  const IFileDialogCustomizeCompanion();

  @pragma('vm:prefer-inline')
  @override
  IFileDialogCustomize Function(VTablePointer) get fromPointer =>
      IFileDialogCustomize.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IFileDialogCustomize;
}
