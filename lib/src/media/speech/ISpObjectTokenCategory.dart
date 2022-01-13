// ISpObjectTokenCategory.dart

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
import '../../media/speech/structs.g.dart';
import '../../media/speech/IEnumSpObjectTokens.dart';

/// @nodoc
const IID_ISpObjectTokenCategory = '{2D3D3845-39AF-4850-BBF9-40B49780011D}';

/// {@category Interface}
/// {@category com}
class ISpObjectTokenCategory extends ISpDataKey {
  // vtable begins at 15, is 6 entries long.
  ISpObjectTokenCategory(Pointer<COMObject> ptr) : super(ptr);

  int SetId(
    Pointer<Utf16> pszCategoryId,
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
            Int32 fCreateIfNotExist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCategoryId,
            int fCreateIfNotExist,
          )>()(
        ptr.ref.lpVtbl,
        pszCategoryId,
        fCreateIfNotExist,
      );

  int GetId(
    Pointer<Pointer<Utf16>> ppszCoMemCategoryId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszCoMemCategoryId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszCoMemCategoryId,
          )>()(
        ptr.ref.lpVtbl,
        ppszCoMemCategoryId,
      );

  int GetDataKey(
    int spdkl,
    Pointer<Pointer<COMObject>> ppDataKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 spdkl,
            Pointer<Pointer<COMObject>> ppDataKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int spdkl,
            Pointer<Pointer<COMObject>> ppDataKey,
          )>()(
        ptr.ref.lpVtbl,
        spdkl,
        ppDataKey,
      );

  int EnumTokens(
    Pointer<Utf16> pzsReqAttribs,
    Pointer<Utf16> pszOptAttribs,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pzsReqAttribs,
            Pointer<Utf16> pszOptAttribs,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pzsReqAttribs,
            Pointer<Utf16> pszOptAttribs,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        pzsReqAttribs,
        pszOptAttribs,
        ppEnum,
      );

  int SetDefaultTokenId(
    Pointer<Utf16> pszTokenId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTokenId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTokenId,
          )>()(
        ptr.ref.lpVtbl,
        pszTokenId,
      );

  int GetDefaultTokenId(
    Pointer<Pointer<Utf16>> ppszCoMemTokenId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
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
}

/// @nodoc
const CLSID_SpObjectTokenCategory = '{A910187F-0C7A-45AC-92CC-59EDAFB77B53}';

/// {@category com}
class SpObjectTokenCategory extends ISpObjectTokenCategory {
  SpObjectTokenCategory(Pointer<COMObject> ptr) : super(ptr);

  factory SpObjectTokenCategory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SpObjectTokenCategory);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISpObjectTokenCategory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SpObjectTokenCategory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
