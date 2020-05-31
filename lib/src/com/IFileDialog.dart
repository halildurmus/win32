import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/src/com/IUnknown.dart';
import 'package:win32/win32.dart';

import 'IShellItem.dart';
import 'utils.dart';

class FILEOPENDIALOGOPTIONS {
  static final int FOS_OVERWRITEPROMPT = 0x2;
  static final int FOS_STRICTFILETYPES = 0x4;
  static final int FOS_NOCHANGEDIR = 0x8;
  static final int FOS_PICKFOLDERS = 0x20;
  static final int FOS_FORCEFILESYSTEM = 0x40;
  static final int FOS_ALLNONSTORAGEITEMS = 0x80;
  static final int FOS_NOVALIDATE = 0x100;
  static final int FOS_ALLOWMULTISELECT = 0x200;
  static final int FOS_PATHMUSTEXIST = 0x800;
  static final int FOS_FILEMUSTEXIST = 0x1000;
  static final int FOS_CREATEPROMPT = 0x2000;
  static final int FOS_SHAREAWARE = 0x4000;
  static final int FOS_NOREADONLYRETURN = 0x8000;
  static final int FOS_NOTESTFILECREATE = 0x10000;
  static final int FOS_HIDEMRUPLACES = 0x20000;
  static final int FOS_HIDEPINNEDPLACES = 0x40000;
  static final int FOS_NODEREFERENCELINKS = 0x100000;
  static final int FOS_OKBUTTONNEEDSINTERACTION = 0x200000;
  static final int FOS_DONTADDTORECENT = 0x2000000;
  static final int FOS_FORCESHOWHIDDEN = 0x10000000;
  static final int FOS_DEFAULTNOMINIMODE = 0x20000000;
  static final int FOS_FORCEPREVIEWPANEON = 0x40000000;
  static final int FOS_SUPPORTSTREAMABLEITEMS = 0x80000000;
}

const CLSID_FileOpenDialog = '{DC1C5A9C-E88A-4dde-A5A1-60F82A20AEF7}';
const IID_IFileDialog = '{42f85136-db7e-439c-85f1-e4075d135fc8}';
const IID_IFileOpenDialog = '{d57c7288-d4ad-4768-be02-9d969532d960}';

typedef IFileDialog_AddRef_Native = Int32 Function(Pointer obj);
typedef IFileDialog_AddRef_Dart = int Function(Pointer obj);

typedef IFileDialog_Release_Native = Int32 Function(Pointer obj);
typedef IFileDialog_Release_Dart = int Function(Pointer obj);

typedef IFileDialog_Show_Native = Int32 Function(Pointer obj, IntPtr hwndOwner);
typedef IFileDialog_Show_Dart = int Function(Pointer obj, int hwndOwner);

typedef IFileDialog_SetFileTypes_Native = Int32 Function(
    Pointer obj, Uint32 cFileTypes, Pointer rgFilterSpec);
typedef IFileDialog_SetFileTypes_Dart = int Function(
    Pointer obj, int cFileTypes, Pointer rgFilterSpec);

typedef IFileDialog_SetOptions_Native = Int32 Function(Pointer obj, Int32 fos);
typedef IFileDialog_SetOptions_Dart = int Function(Pointer obj, int fos);

typedef IFileDialog_GetOptions_Native = Int32 Function(
    Pointer obj, Pointer<Int32> pfos);
typedef IFileDialog_GetOptions_Dart = int Function(
    Pointer obj, Pointer<Int32> pfos);

typedef IFileDialog_SetFileName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszName);
typedef IFileDialog_SetFileName_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszName);

typedef IFileDialog_SetOkButtonLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszText);
typedef IFileDialog_SetOkButtonLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszText);

typedef IFileDialog_SetFileNameLabel_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszLabel);
typedef IFileDialog_SetFileNameLabel_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszLabel);

typedef IFileDialog_SetTitle_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszTitle);
typedef IFileDialog_SetTitle_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszTitle);

typedef IFileDialog_GetResult_Native = Int32 Function(
    Pointer obj, Pointer<IShellItem> ppsi);
typedef IFileDialog_GetResult_Dart = int Function(
    Pointer obj, Pointer<IShellItem> ppsi);

typedef IFileDialog_SetDefaultExtension_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);
typedef IFileDialog_SetDefaultExtension_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);

// class IFileDialog extends Struct {
//   Pointer<IntPtr> lpVtbl;

//   Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);

//   Pointer<IntPtr> get queryInterfacePtr => vtable.elementAt(0);
//   Pointer<IntPtr> get addRefPtr => vtable.elementAt(1);
//   Pointer<IntPtr> get releasePtr => vtable.elementAt(2);
//   Pointer<IntPtr> get showPtr => vtable.elementAt(3);
//   Pointer<IntPtr> get setFileTypesPtr => vtable.elementAt(4);
//   Pointer<IntPtr> get setFileTypeIndexPtr => vtable.elementAt(5);
//   Pointer<IntPtr> get getFileTypeIndexPtr => vtable.elementAt(6);
//   Pointer<IntPtr> get advisePtr => vtable.elementAt(7);
//   Pointer<IntPtr> get unadvisePtr => vtable.elementAt(8);
//   Pointer<IntPtr> get setOptionsPtr => vtable.elementAt(9);
//   Pointer<IntPtr> get getOptionsPtr => vtable.elementAt(10);
//   Pointer<IntPtr> get setDefaultFolderPtr => vtable.elementAt(11);
//   Pointer<IntPtr> get setFolderPtr => vtable.elementAt(12);
//   Pointer<IntPtr> get getFolderPtr => vtable.elementAt(13);
//   Pointer<IntPtr> get getCurrentSelectionPtr => vtable.elementAt(14);
//   Pointer<IntPtr> get setFileNamePtr => vtable.elementAt(15);
//   Pointer<IntPtr> get getFileNamePtr => vtable.elementAt(16);
//   Pointer<IntPtr> get setTitlePtr => vtable.elementAt(17);
//   Pointer<IntPtr> get setOkButtonLabelPtr => vtable.elementAt(18);
//   Pointer<IntPtr> get setFileNameLabelPtr => vtable.elementAt(19);
//   Pointer<IntPtr> get getResultPtr => vtable.elementAt(20);
//   Pointer<IntPtr> get addPlacePtr => vtable.elementAt(21);
//   Pointer<IntPtr> get setDefaultExtensionPtr => vtable.elementAt(22);
//   Pointer<IntPtr> get closePtr => vtable.elementAt(23);
//   Pointer<IntPtr> get setClientGuidPtr => vtable.elementAt(24);
//   Pointer<IntPtr> get clearClientDataPtr => vtable.elementAt(25);
//   Pointer<IntPtr> get setFilterPtr => vtable.elementAt(26);

//   factory IFileDialog.allocate() =>
//       allocate<IFileDialog>().ref..lpVtbl = allocate<IntPtr>();
// }

class IFileDialog extends IUnknown {
  Pointer<COMObject> dlg;

  IFileDialog_Show_Dart Show;
  IFileDialog_SetFileTypes_Dart SetFileTypes;
  IFileDialog_GetOptions_Dart GetOptions;
  IFileDialog_SetOptions_Dart SetOptions;
  IFileDialog_SetFileName_Dart SetFileName;
  IFileDialog_SetOkButtonLabel_Dart SetOkButtonLabel;
  IFileDialog_SetFileNameLabel_Dart SetFileNameLabel;
  IFileDialog_SetTitle_Dart SetTitle;
  IFileDialog_GetResult_Dart GetResult;
  IFileDialog_SetDefaultExtension_Dart SetDefaultExtension;

  factory IFileDialog.createOpen() {
    final obj = COMObject.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_FileOpenDialog).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_IFileDialog).addressOf,
        obj.cast());

    if (!SUCCEEDED(hr)) throw COMException(hr);

    return IFileDialog(obj);
  }

  IFileDialog(this.dlg) : super(dlg) {
    Show = dlg.ref.vtable
        .elementAt(3)
        .cast<NativeFunction<IFileDialog_Show_Native>>()
        .asFunction<IFileDialog_Show_Dart>();

    SetFileTypes = dlg.ref.vtable
        .elementAt(4)
        .cast<NativeFunction<IFileDialog_SetFileTypes_Native>>()
        .asFunction<IFileDialog_SetFileTypes_Dart>();

    SetOptions = dlg.ref.vtable
        .elementAt(9)
        .cast<NativeFunction<IFileDialog_SetOptions_Native>>()
        .asFunction<IFileDialog_SetOptions_Dart>();

    print(Pointer.fromAddress(dlg.ref.vtable.elementAt(10).address));

    GetOptions = dlg.ref.vtable
        .elementAt(10)
        .cast<NativeFunction<IFileDialog_GetOptions_Native>>()
        .asFunction<IFileDialog_GetOptions_Dart>();

    SetFileName = dlg.ref.vtable
        .elementAt(15)
        .cast<NativeFunction<IFileDialog_SetFileName_Native>>()
        .asFunction<IFileDialog_SetFileName_Dart>();

    SetTitle = dlg.ref.vtable
        .elementAt(17)
        .cast<NativeFunction<IFileDialog_SetTitle_Native>>()
        .asFunction<IFileDialog_SetTitle_Dart>();

    SetOkButtonLabel = dlg.ref.vtable
        .elementAt(18)
        .cast<NativeFunction<IFileDialog_SetOkButtonLabel_Native>>()
        .asFunction<IFileDialog_SetOkButtonLabel_Dart>();

    SetFileNameLabel = dlg.ref.vtable
        .elementAt(19)
        .cast<NativeFunction<IFileDialog_SetFileNameLabel_Native>>()
        .asFunction<IFileDialog_SetFileNameLabel_Dart>();

    GetResult = dlg.ref.vtable
        .elementAt(20)
        .cast<NativeFunction<IFileDialog_GetResult_Native>>()
        .asFunction<IFileDialog_GetResult_Dart>();

    SetDefaultExtension = dlg.ref.vtable
        .elementAt(22)
        .cast<NativeFunction<IFileDialog_SetDefaultExtension_Native>>()
        .asFunction<IFileDialog_SetDefaultExtension_Dart>();
  }
}
