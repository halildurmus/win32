// ISpObjectToken.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../media/speech/ISpDataKey.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpObjectTokenCategory.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISpObjectToken = '{14056589-E16C-11D2-BB90-00C04F8EE6C0}';

/// {@category Interface}
/// {@category com}
class ISpObjectToken extends ISpDataKey {
  // vtable begins at 15, is 10 entries long.
  ISpObjectToken(Pointer<COMObject> ptr) : super(ptr);

  int SetId(
    Pointer<Utf16> pszCategoryId,
    Pointer<Utf16> pszTokenId,
    int fCreateIfNotExist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCategoryId,
            Pointer<Utf16> pszTokenId,
            Int32 fCreateIfNotExist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCategoryId,
            Pointer<Utf16> pszTokenId,
            int fCreateIfNotExist,
          )>()(
        ptr.ref.lpVtbl,
        pszCategoryId,
        pszTokenId,
        fCreateIfNotExist,
      );

  int GetId(
    Pointer<Pointer<Utf16>> ppszCoMemTokenId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszCoMemTokenId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszCoMemTokenId,
          )>()(
        ptr.ref.lpVtbl,
        ppszCoMemTokenId,
      );

  int GetCategory(
    Pointer<Pointer<COMObject>> ppTokenCategory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTokenCategory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTokenCategory,
          )>()(
        ptr.ref.lpVtbl,
        ppTokenCategory,
      );

  int CreateInstance(
    Pointer<COMObject> pUnkOuter,
    int dwClsContext,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkOuter,
            Uint32 dwClsContext,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkOuter,
            int dwClsContext,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        pUnkOuter,
        dwClsContext,
        riid,
        ppvObject,
      );

  int GetStorageFileName(
    Pointer<GUID> clsidCaller,
    Pointer<Utf16> pszValueName,
    Pointer<Utf16> pszFileNameSpecifier,
    int nFolder,
    Pointer<Pointer<Utf16>> ppszFilePath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidCaller,
            Pointer<Utf16> pszValueName,
            Pointer<Utf16> pszFileNameSpecifier,
            Uint32 nFolder,
            Pointer<Pointer<Utf16>> ppszFilePath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidCaller,
            Pointer<Utf16> pszValueName,
            Pointer<Utf16> pszFileNameSpecifier,
            int nFolder,
            Pointer<Pointer<Utf16>> ppszFilePath,
          )>()(
        ptr.ref.lpVtbl,
        clsidCaller,
        pszValueName,
        pszFileNameSpecifier,
        nFolder,
        ppszFilePath,
      );

  int RemoveStorageFileName(
    Pointer<GUID> clsidCaller,
    Pointer<Utf16> pszKeyName,
    int fDeleteFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidCaller,
            Pointer<Utf16> pszKeyName,
            Int32 fDeleteFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidCaller,
            Pointer<Utf16> pszKeyName,
            int fDeleteFile,
          )>()(
        ptr.ref.lpVtbl,
        clsidCaller,
        pszKeyName,
        fDeleteFile,
      );

  int Remove(
    Pointer<GUID> pclsidCaller,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pclsidCaller,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pclsidCaller,
          )>()(
        ptr.ref.lpVtbl,
        pclsidCaller,
      );

  int IsUISupported(
    Pointer<Utf16> pszTypeOfUI,
    Pointer pvExtraData,
    int cbExtraData,
    Pointer<COMObject> punkObject,
    Pointer<Int32> pfSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTypeOfUI,
            Pointer pvExtraData,
            Uint32 cbExtraData,
            Pointer<COMObject> punkObject,
            Pointer<Int32> pfSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTypeOfUI,
            Pointer pvExtraData,
            int cbExtraData,
            Pointer<COMObject> punkObject,
            Pointer<Int32> pfSupported,
          )>()(
        ptr.ref.lpVtbl,
        pszTypeOfUI,
        pvExtraData,
        cbExtraData,
        punkObject,
        pfSupported,
      );

  int DisplayUI(
    int hwndParent,
    Pointer<Utf16> pszTitle,
    Pointer<Utf16> pszTypeOfUI,
    Pointer pvExtraData,
    int cbExtraData,
    Pointer<COMObject> punkObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<Utf16> pszTitle,
            Pointer<Utf16> pszTypeOfUI,
            Pointer pvExtraData,
            Uint32 cbExtraData,
            Pointer<COMObject> punkObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<Utf16> pszTitle,
            Pointer<Utf16> pszTypeOfUI,
            Pointer pvExtraData,
            int cbExtraData,
            Pointer<COMObject> punkObject,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        pszTitle,
        pszTypeOfUI,
        pvExtraData,
        cbExtraData,
        punkObject,
      );

  int MatchesAttributes(
    Pointer<Utf16> pszAttributes,
    Pointer<Int32> pfMatches,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAttributes,
            Pointer<Int32> pfMatches,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAttributes,
            Pointer<Int32> pfMatches,
          )>()(
        ptr.ref.lpVtbl,
        pszAttributes,
        pfMatches,
      );
}

/// @nodoc
const CLSID_SpObjectToken = '{EF411752-3736-4CB4-9C8C-8EF4CCB58EFE}';

/// {@category com}
class SpObjectToken extends ISpObjectToken {
  SpObjectToken(Pointer<COMObject> ptr) : super(ptr);

  factory SpObjectToken.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SpObjectToken);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISpObjectToken);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SpObjectToken(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
