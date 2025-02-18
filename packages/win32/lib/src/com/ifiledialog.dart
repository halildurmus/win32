// ifiledialog.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'imodalwindow.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IFileDialog = '{42f85136-db7e-439c-85f1-e4075d135fc8}';

/// Exposes methods that initialize, show, and get results from the common
/// file dialog.
///
/// {@category com}
class IFileDialog extends IModalWindow {
  // vtable begins at 4, is 23 entries long.
  IFileDialog(super.ptr);

  factory IFileDialog.from(IUnknown interface) =>
      IFileDialog(interface.toInterface(IID_IFileDialog));

  int setFileTypes(int cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec) =>
      (ptr.ref.vtable + 4)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Uint32 cFileTypes,
                  Pointer<COMDLG_FILTERSPEC> rgFilterSpec,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int cFileTypes,
              Pointer<COMDLG_FILTERSPEC> rgFilterSpec,
            )
          >()(ptr.ref.lpVtbl, cFileTypes, rgFilterSpec);

  int setFileTypeIndex(int iFileType) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Uint32 iFileType)>>
      >()
      .value
      .asFunction<int Function(Pointer, int iFileType)>()(
    ptr.ref.lpVtbl,
    iFileType,
  );

  int getFileTypeIndex(Pointer<Uint32> piFileType) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> piFileType)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> piFileType)>()(
    ptr.ref.lpVtbl,
    piFileType,
  );

  int advise(Pointer<COMObject> pfde, Pointer<Uint32> pdwCookie) =>
      (ptr.ref.vtable + 7)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<COMObject> pfde,
                  Pointer<Uint32> pdwCookie,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<COMObject> pfde,
              Pointer<Uint32> pdwCookie,
            )
          >()(ptr.ref.lpVtbl, pfde, pdwCookie);

  int unadvise(int dwCookie) => (ptr.ref.vtable + 8)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwCookie)>>>()
      .value
      .asFunction<int Function(Pointer, int dwCookie)>()(
    ptr.ref.lpVtbl,
    dwCookie,
  );

  int setOptions(int fos) => (ptr.ref.vtable + 9)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 fos)>>>()
      .value
      .asFunction<int Function(Pointer, int fos)>()(ptr.ref.lpVtbl, fos);

  int getOptions(Pointer<Uint32> pfos) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pfos)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pfos)>()(
    ptr.ref.lpVtbl,
    pfos,
  );

  int setDefaultFolder(Pointer<COMObject> psi) => (ptr.ref.vtable + 11)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<COMObject> psi)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> psi)>()(
    ptr.ref.lpVtbl,
    psi,
  );

  int setFolder(Pointer<COMObject> psi) => (ptr.ref.vtable + 12)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<COMObject> psi)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> psi)>()(
    ptr.ref.lpVtbl,
    psi,
  );

  int getFolder(Pointer<Pointer<COMObject>> ppsi) => (ptr.ref.vtable + 13)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppsi)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>()(
    ptr.ref.lpVtbl,
    ppsi,
  );

  int getCurrentSelection(Pointer<Pointer<COMObject>> ppsi) => (ptr.ref.vtable +
          14)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppsi)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>()(
    ptr.ref.lpVtbl,
    ppsi,
  );

  int setFileName(Pointer<Utf16> pszName) => (ptr.ref.vtable + 15)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszName)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> pszName)>()(
    ptr.ref.lpVtbl,
    pszName,
  );

  int getFileName(Pointer<Pointer<Utf16>> pszName) => (ptr.ref.vtable + 16)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<Utf16>> pszName)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pszName)>()(
    ptr.ref.lpVtbl,
    pszName,
  );

  int setTitle(Pointer<Utf16> pszTitle) => (ptr.ref.vtable + 17)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszTitle)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> pszTitle)>()(
    ptr.ref.lpVtbl,
    pszTitle,
  );

  int setOkButtonLabel(Pointer<Utf16> pszText) => (ptr.ref.vtable + 18)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszText)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> pszText)>()(
    ptr.ref.lpVtbl,
    pszText,
  );

  int setFileNameLabel(Pointer<Utf16> pszLabel) => (ptr.ref.vtable + 19)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszLabel)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> pszLabel)>()(
    ptr.ref.lpVtbl,
    pszLabel,
  );

  int getResult(Pointer<Pointer<COMObject>> ppsi) => (ptr.ref.vtable + 20)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppsi)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>()(
    ptr.ref.lpVtbl,
    ppsi,
  );

  int addPlace(Pointer<COMObject> psi, int fdap) => (ptr.ref.vtable + 21)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<COMObject> psi, Int32 fdap)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> psi, int fdap)>()(
    ptr.ref.lpVtbl,
    psi,
    fdap,
  );

  int setDefaultExtension(
    Pointer<Utf16> pszDefaultExtension,
  ) => (ptr.ref.vtable + 22)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Utf16> pszDefaultExtension)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> pszDefaultExtension)>()(
    ptr.ref.lpVtbl,
    pszDefaultExtension,
  );

  int close(int hr) => (ptr.ref.vtable + 23)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 hr)>>>()
      .value
      .asFunction<int Function(Pointer, int hr)>()(ptr.ref.lpVtbl, hr);

  int setClientGuid(Pointer<GUID> guid) => (ptr.ref.vtable + 24)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> guid)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> guid)>()(
    ptr.ref.lpVtbl,
    guid,
  );

  int clearClientData() => (ptr.ref.vtable + 25)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int setFilter(Pointer<COMObject> pFilter) => (ptr.ref.vtable + 26)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pFilter)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> pFilter)>()(
    ptr.ref.lpVtbl,
    pFilter,
  );
}
