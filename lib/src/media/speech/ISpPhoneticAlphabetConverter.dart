// ISpPhoneticAlphabetConverter.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpPhoneticAlphabetConverter =
    '{133ADCD4-19B4-4020-9FDC-842E78253B17}';

/// {@category Interface}
/// {@category com}
class ISpPhoneticAlphabetConverter extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISpPhoneticAlphabetConverter(Pointer<COMObject> ptr) : super(ptr);

  int GetLangId(
    Pointer<Uint16> pLangID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pLangID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pLangID,
          )>()(
        ptr.ref.lpVtbl,
        pLangID,
      );

  int SetLangId(
    int LangID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 LangID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int LangID,
          )>()(
        ptr.ref.lpVtbl,
        LangID,
      );

  int SAPI2UPS(
    Pointer<Uint16> pszSAPIId,
    Pointer<Uint16> pszUPSId,
    int cMaxLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pszSAPIId,
            Pointer<Uint16> pszUPSId,
            Uint32 cMaxLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pszSAPIId,
            Pointer<Uint16> pszUPSId,
            int cMaxLength,
          )>()(
        ptr.ref.lpVtbl,
        pszSAPIId,
        pszUPSId,
        cMaxLength,
      );

  int UPS2SAPI(
    Pointer<Uint16> pszUPSId,
    Pointer<Uint16> pszSAPIId,
    int cMaxLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pszUPSId,
            Pointer<Uint16> pszSAPIId,
            Uint32 cMaxLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pszUPSId,
            Pointer<Uint16> pszSAPIId,
            int cMaxLength,
          )>()(
        ptr.ref.lpVtbl,
        pszUPSId,
        pszSAPIId,
        cMaxLength,
      );

  int GetMaxConvertLength(
    int cSrcLength,
    int bSAPI2UPS,
    Pointer<Uint32> pcMaxDestLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cSrcLength,
            Int32 bSAPI2UPS,
            Pointer<Uint32> pcMaxDestLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cSrcLength,
            int bSAPI2UPS,
            Pointer<Uint32> pcMaxDestLength,
          )>()(
        ptr.ref.lpVtbl,
        cSrcLength,
        bSAPI2UPS,
        pcMaxDestLength,
      );
}

/// @nodoc
const CLSID_SpPhoneticAlphabetConverter =
    '{4F414126-DFE3-4629-99EE-797978317EAD}';

/// {@category com}
class SpPhoneticAlphabetConverter extends ISpPhoneticAlphabetConverter {
  SpPhoneticAlphabetConverter(Pointer<COMObject> ptr) : super(ptr);

  factory SpPhoneticAlphabetConverter.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_SpPhoneticAlphabetConverter);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISpPhoneticAlphabetConverter);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SpPhoneticAlphabetConverter(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
