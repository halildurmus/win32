import 'dart:ffi';

import 'package:ffi/ffi.dart';
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

typedef IFileDialog_GetOptions_Native = Int32 Function(
    Pointer obj, Pointer<Int32> pfos);
typedef IFileDialog_GetOptions_Dart = int Function(
    Pointer obj, Pointer<Int32> pfos);

typedef IFileDialog_SetOptions_Native = Int32 Function(Pointer obj, Int32 fos);
typedef IFileDialog_SetOptions_Dart = int Function(Pointer obj, int fos);

typedef IFileDialog_GetResult_Native = Int32 Function(
    Pointer obj, Pointer<IShellItem> ppsi);
typedef IFileDialog_GetResult_Dart = int Function(
    Pointer obj, Pointer<IShellItem> ppsi);

typedef IFileDialog_SetDefaultExtension_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);
typedef IFileDialog_SetDefaultExtension_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszDefaultExtension);

class IFileDialog extends Struct {
  Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);

  Pointer<IntPtr> get queryInterfacePtr => vtable.elementAt(0);
  Pointer<IntPtr> get addRefPtr => vtable.elementAt(1);
  Pointer<IntPtr> get releasePtr => vtable.elementAt(2);
  Pointer<IntPtr> get showPtr => vtable.elementAt(3);
  Pointer<IntPtr> get setFileTypesPtr => vtable.elementAt(4);
  Pointer<IntPtr> get setFileTypeIndexPtr => vtable.elementAt(5);
  Pointer<IntPtr> get getFileTypeIndexPtr => vtable.elementAt(6);
  Pointer<IntPtr> get advisePtr => vtable.elementAt(7);
  Pointer<IntPtr> get unadvisePtr => vtable.elementAt(8);
  Pointer<IntPtr> get setOptionsPtr => vtable.elementAt(9);
  Pointer<IntPtr> get getOptionsPtr => vtable.elementAt(10);
  Pointer<IntPtr> get setDefaultFolderPtr => vtable.elementAt(11);
  Pointer<IntPtr> get setFolderPtr => vtable.elementAt(12);
  Pointer<IntPtr> get getFolderPtr => vtable.elementAt(13);
  Pointer<IntPtr> get getCurrentSelectionPtr => vtable.elementAt(14);
  Pointer<IntPtr> get setFileNamePtr => vtable.elementAt(15);
  Pointer<IntPtr> get getFileNamePtr => vtable.elementAt(16);
  Pointer<IntPtr> get setTitlePtr => vtable.elementAt(17);
  Pointer<IntPtr> get setOkButtonLabelPtr => vtable.elementAt(18);
  Pointer<IntPtr> get setFileNameLabelPtr => vtable.elementAt(19);
  Pointer<IntPtr> get getResultPtr => vtable.elementAt(20);
  Pointer<IntPtr> get addPlacePtr => vtable.elementAt(21);
  Pointer<IntPtr> get setDefaultExtensionPtr => vtable.elementAt(22);
  Pointer<IntPtr> get closePtr => vtable.elementAt(23);
  Pointer<IntPtr> get setClientGuidPtr => vtable.elementAt(24);
  Pointer<IntPtr> get clearClientDataPtr => vtable.elementAt(25);
  Pointer<IntPtr> get setFilterPtr => vtable.elementAt(26);

  factory IFileDialog.allocate() =>
      allocate<IFileDialog>().ref..lpVtbl = allocate<IntPtr>();
}

class FileDialog {
  Pointer<IFileDialog> dlg;

  IFileDialog_AddRef_Dart AddRef;
  IFileDialog_Release_Dart Release;
  IFileDialog_Show_Dart Show;
  IFileDialog_GetOptions_Dart GetOptions;
  IFileDialog_SetOptions_Dart SetOptions;
  IFileDialog_GetResult_Dart GetResult;
  IFileDialog_SetDefaultExtension_Dart SetDefaultExtension;

  FileDialog() {
    dlg = IFileDialog.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_FileOpenDialog).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_IFileDialog).addressOf,
        dlg.cast());

    if (!SUCCEEDED(hr)) throw COMException(hr);

    AddRef = Pointer<IntPtr>.fromAddress(dlg.ref.addRefPtr.value)
        .cast<NativeFunction<IFileDialog_AddRef_Native>>()
        .asFunction<IFileDialog_AddRef_Dart>();

    Release = Pointer<IntPtr>.fromAddress(dlg.ref.releasePtr.value)
        .cast<NativeFunction<IFileDialog_Release_Native>>()
        .asFunction<IFileDialog_Release_Dart>();

    Show = Pointer<IntPtr>.fromAddress(dlg.ref.showPtr.value)
        .cast<NativeFunction<IFileDialog_Show_Native>>()
        .asFunction<IFileDialog_Show_Dart>();

    GetOptions = Pointer<IntPtr>.fromAddress(dlg.ref.getOptionsPtr.value)
        .cast<NativeFunction<IFileDialog_GetOptions_Native>>()
        .asFunction<IFileDialog_GetOptions_Dart>();

    SetOptions = Pointer<IntPtr>.fromAddress(dlg.ref.setOptionsPtr.value)
        .cast<NativeFunction<IFileDialog_SetOptions_Native>>()
        .asFunction<IFileDialog_SetOptions_Dart>();

    GetResult = Pointer<IntPtr>.fromAddress(dlg.ref.getResultPtr.value)
        .cast<NativeFunction<IFileDialog_GetResult_Native>>()
        .asFunction<IFileDialog_GetResult_Dart>();

    SetDefaultExtension =
        Pointer<IntPtr>.fromAddress(dlg.ref.setDefaultExtensionPtr.value)
            .cast<NativeFunction<IFileDialog_SetDefaultExtension_Native>>()
            .asFunction<IFileDialog_SetDefaultExtension_Dart>();
  }
}
