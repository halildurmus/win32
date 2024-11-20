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
import 'ifiledialogevents.g.dart';
import 'imodalwindow.g.dart';
import 'interface.g.dart';
import 'ishellitem.g.dart';
import 'ishellitemfilter.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IFileDialog = Guid.fromComponents(
  0x42f85136,
  0xdb7e,
  0x439c,
  Uint8List.fromList(const [0x85, 0xf1, 0xe4, 0x7, 0x5d, 0x13, 0x5f, 0xc8]),
);

/// Exposes methods that initialize, show, and get results from the common file
/// dialog.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifiledialog>.
///
/// {@category com}
class IFileDialog extends IModalWindow implements ComInterface {
  /// Creates a new instance of [IFileDialog] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IFileDialog] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IFileDialog(super.ptr) : _vtable = ptr.value.cast<IFileDialogVtbl>().ref;

  /// Creates a new instance of [IFileDialog] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IFileDialog] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IFileDialog.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IFileDialogVtbl _vtable;
  late final _SetFileTypesFn =
      _vtable.SetFileTypes.asFunction<
        int Function(VTablePointer, int, Pointer<COMDLG_FILTERSPEC>)
      >();
  late final _SetFileTypeIndexFn =
      _vtable.SetFileTypeIndex.asFunction<int Function(VTablePointer, int)>();
  late final _GetFileTypeIndexFn =
      _vtable.GetFileTypeIndex.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _AdviseFn =
      _vtable.Advise.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<Uint32>)
      >();
  late final _UnadviseFn =
      _vtable.Unadvise.asFunction<int Function(VTablePointer, int)>();
  late final _SetOptionsFn =
      _vtable.SetOptions.asFunction<int Function(VTablePointer, int)>();
  late final _GetOptionsFn = _vtable
      .GetOptions.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _SetDefaultFolderFn =
      _vtable.SetDefaultFolder.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetFolderFn = _vtable
      .SetFolder.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _GetFolderFn =
      _vtable.GetFolder.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCurrentSelectionFn =
      _vtable.GetCurrentSelection.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _SetFileNameFn =
      _vtable.SetFileName.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _GetFileNameFn = _vtable
      .GetFileName.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _SetTitleFn =
      _vtable.SetTitle.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _SetOkButtonLabelFn = _vtable
      .SetOkButtonLabel.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _SetFileNameLabelFn = _vtable
      .SetFileNameLabel.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _GetResultFn =
      _vtable.GetResult.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _AddPlaceFn = _vtable
      .AddPlace.asFunction<int Function(VTablePointer, VTablePointer, int)>();
  late final _SetDefaultExtensionFn = _vtable
      .SetDefaultExtension.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _CloseFn =
      _vtable.Close.asFunction<int Function(VTablePointer, int)>();
  late final _SetClientGuidFn = _vtable
      .SetClientGuid.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _ClearClientDataFn =
      _vtable.ClearClientData.asFunction<int Function(VTablePointer)>();
  late final _SetFilterFn = _vtable
      .SetFilter.asFunction<int Function(VTablePointer, VTablePointer)>();

  /// Sets the file types that the dialog can open or save.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfiletypes>.
  @pragma('vm:prefer-inline')
  void setFileTypes(int cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec) {
    final hr$ = HRESULT(_SetFileTypesFn(ptr, cFileTypes, rgFilterSpec));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the file type that appears as selected in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfiletypeindex>.
  @pragma('vm:prefer-inline')
  void setFileTypeIndex(int iFileType) {
    final hr$ = HRESULT(_SetFileTypeIndexFn(ptr, iFileType));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the currently selected file type.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getfiletypeindex>.
  int getFileTypeIndex() {
    final piFileType = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetFileTypeIndexFn(ptr, piFileType));
    if (hr$.isError) {
      free(piFileType);
      throw WindowsException(hr$);
    }
    final result$ = piFileType.value;
    free(piFileType);
    return result$;
  }

  /// Assigns an event handler that listens for events coming from the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-advise>.
  int advise(IFileDialogEvents? pfde) {
    final pdwCookie = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_AdviseFn(ptr, pfde?.ptr ?? nullptr, pdwCookie));
    if (hr$.isError) {
      free(pdwCookie);
      throw WindowsException(hr$);
    }
    final result$ = pdwCookie.value;
    free(pdwCookie);
    return result$;
  }

  /// Removes an event handler that was attached through the
  /// `IFileDialog.advise` method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-unadvise>.
  @pragma('vm:prefer-inline')
  void unadvise(int dwCookie) {
    final hr$ = HRESULT(_UnadviseFn(ptr, dwCookie));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets flags to control the behavior of the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setoptions>.
  @pragma('vm:prefer-inline')
  void setOptions(FILEOPENDIALOGOPTIONS fos) {
    final hr$ = HRESULT(_SetOptionsFn(ptr, fos));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the current flags that are set to control dialog behavior.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getoptions>.
  FILEOPENDIALOGOPTIONS getOptions() {
    final pfos = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetOptionsFn(ptr, pfos));
    if (hr$.isError) {
      free(pfos);
      throw WindowsException(hr$);
    }
    final result$ = pfos.value;
    free(pfos);
    return FILEOPENDIALOGOPTIONS(result$);
  }

  /// Sets the folder used as a default if there is not a recently used folder
  /// value available.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setdefaultfolder>.
  @pragma('vm:prefer-inline')
  void setDefaultFolder(IShellItem? psi) {
    final hr$ = HRESULT(_SetDefaultFolderFn(ptr, psi?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets a folder that is always selected when the dialog is opened,
  /// regardless of previous user action.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfolder>.
  @pragma('vm:prefer-inline')
  void setFolder(IShellItem? psi) {
    final hr$ = HRESULT(_SetFolderFn(ptr, psi?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets either the folder currently selected in the dialog, or, if the dialog
  /// is not currently displayed, the folder that is to be selected when the
  /// dialog is opened.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getfolder>.
  IShellItem? getFolder() {
    final ppsi = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetFolderFn(ptr, ppsi));
    if (hr$.isError) {
      free(ppsi);
      throw WindowsException(hr$);
    }
    final result$ = ppsi.value;
    free(ppsi);
    if (result$.isNull) return null;
    return IShellItem(result$);
  }

  /// Gets the user's current selection in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getcurrentselection>.
  IShellItem? getCurrentSelection() {
    final ppsi = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentSelectionFn(ptr, ppsi));
    if (hr$.isError) {
      free(ppsi);
      throw WindowsException(hr$);
    }
    final result$ = ppsi.value;
    free(ppsi);
    if (result$.isNull) return null;
    return IShellItem(result$);
  }

  /// Sets the file name that appears in the File name edit box when that dialog
  /// box is opened.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfilename>.
  @pragma('vm:prefer-inline')
  void setFileName(PCWSTR pszName) {
    final hr$ = HRESULT(_SetFileNameFn(ptr, pszName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the text currently entered in the dialog's File name edit box.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getfilename>.
  PWSTR getFileName() {
    final pszName = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetFileNameFn(ptr, pszName));
    if (hr$.isError) {
      free(pszName);
      throw WindowsException(hr$);
    }
    final result$ = pszName.value;
    free(pszName);
    return result$;
  }

  /// Sets the title of the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-settitle>.
  @pragma('vm:prefer-inline')
  void setTitle(PCWSTR pszTitle) {
    final hr$ = HRESULT(_SetTitleFn(ptr, pszTitle));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the text of the Open or Save button.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setokbuttonlabel>.
  @pragma('vm:prefer-inline')
  void setOkButtonLabel(PCWSTR pszText) {
    final hr$ = HRESULT(_SetOkButtonLabelFn(ptr, pszText));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the text of the label next to the file name edit box.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfilenamelabel>.
  @pragma('vm:prefer-inline')
  void setFileNameLabel(PCWSTR pszLabel) {
    final hr$ = HRESULT(_SetFileNameLabelFn(ptr, pszLabel));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the choice that the user made in the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getresult>.
  IShellItem? getResult() {
    final ppsi = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetResultFn(ptr, ppsi));
    if (hr$.isError) {
      free(ppsi);
      throw WindowsException(hr$);
    }
    final result$ = ppsi.value;
    free(ppsi);
    if (result$.isNull) return null;
    return IShellItem(result$);
  }

  /// Adds a folder to the list of places available for the user to open or save
  /// items.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-addplace>.
  @pragma('vm:prefer-inline')
  void addPlace(IShellItem? psi, FDAP fdap) {
    final hr$ = HRESULT(_AddPlaceFn(ptr, psi?.ptr ?? nullptr, fdap));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the default extension to be added to file names.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setdefaultextension>.
  @pragma('vm:prefer-inline')
  void setDefaultExtension(PCWSTR pszDefaultExtension) {
    final hr$ = HRESULT(_SetDefaultExtensionFn(ptr, pszDefaultExtension));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Closes the dialog.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-close>.
  @pragma('vm:prefer-inline')
  void close(HRESULT hr) {
    final hr$ = HRESULT(_CloseFn(ptr, hr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Enables a calling application to associate a GUID with a dialog's
  /// persisted state.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setclientguid>.
  @pragma('vm:prefer-inline')
  void setClientGuid(Pointer<GUID> guid) {
    final hr$ = HRESULT(_SetClientGuidFn(ptr, guid));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Instructs the dialog to clear all persisted state information.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-clearclientdata>.
  @pragma('vm:prefer-inline')
  void clearClientData() {
    final hr$ = HRESULT(_ClearClientDataFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// SetFilter is no longer available for use as of Windows 7.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfilter>.
  @pragma('vm:prefer-inline')
  void setFilter(IShellItemFilter? pFilter) {
    final hr$ = HRESULT(_SetFilterFn(ptr, pFilter?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IFileDialog(ptr: $ptr)';
}

/// @nodoc
base class IFileDialogVtbl extends Struct {
  external IModalWindowVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 cFileTypes,
        Pointer<COMDLG_FILTERSPEC> rgFilterSpec,
      )
    >
  >
  SetFileTypes;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 iFileType)>
  >
  SetFileTypeIndex;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> piFileType)
    >
  >
  GetFileTypeIndex;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pfde,
        Pointer<Uint32> pdwCookie,
      )
    >
  >
  Advise;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwCookie)>
  >
  Unadvise;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 fos)>
  >
  SetOptions;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pfos)>
  >
  GetOptions;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer psi)>
  >
  SetDefaultFolder;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer psi)>
  >
  SetFolder;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppsi)
    >
  >
  GetFolder;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppsi)
    >
  >
  GetCurrentSelection;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszName)>
  >
  SetFileName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> pszName)>
  >
  GetFileName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszTitle)>
  >
  SetTitle;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszText)>
  >
  SetOkButtonLabel;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszLabel)>
  >
  SetFileNameLabel;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppsi)
    >
  >
  GetResult;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer psi, Int32 fdap)
    >
  >
  AddPlace;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR pszDefaultExtension)
    >
  >
  SetDefaultExtension;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 hr)>
  >
  Close;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> guid)>
  >
  SetClientGuid;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  ClearClientData;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pFilter)>
  >
  SetFilter;
}

@internal
final class IFileDialogCompanion extends ComCompanion<IFileDialog> {
  const IFileDialogCompanion();

  @pragma('vm:prefer-inline')
  @override
  IFileDialog Function(VTablePointer) get fromPointer => IFileDialog.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IFileDialog;
}
