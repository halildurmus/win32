// IAccDictionary.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IAccDictionary = '{1DC4CB5F-D737-474D-ADE9-5CCFC9BC1CC9}';

/// {@category Interface}
/// {@category com}
class IAccDictionary extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAccDictionary(Pointer<COMObject> ptr) : super(ptr);

  int GetLocalizedString(
    Pointer<GUID> Term,
    int lcid,
    Pointer<Pointer<Utf16>> pResult,
    Pointer<Uint32> plcid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Term,
            Uint32 lcid,
            Pointer<Pointer<Utf16>> pResult,
            Pointer<Uint32> plcid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Term,
            int lcid,
            Pointer<Pointer<Utf16>> pResult,
            Pointer<Uint32> plcid,
          )>()(
        ptr.ref.lpVtbl,
        Term,
        lcid,
        pResult,
        plcid,
      );

  int GetParentTerm(
    Pointer<GUID> Term,
    Pointer<GUID> pParentTerm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Term,
            Pointer<GUID> pParentTerm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Term,
            Pointer<GUID> pParentTerm,
          )>()(
        ptr.ref.lpVtbl,
        Term,
        pParentTerm,
      );

  int GetMnemonicString(
    Pointer<GUID> Term,
    Pointer<Pointer<Utf16>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Term,
            Pointer<Pointer<Utf16>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Term,
            Pointer<Pointer<Utf16>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        Term,
        pResult,
      );

  int LookupMnemonicTerm(
    Pointer<Utf16> bstrMnemonic,
    Pointer<GUID> pTerm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrMnemonic,
            Pointer<GUID> pTerm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrMnemonic,
            Pointer<GUID> pTerm,
          )>()(
        ptr.ref.lpVtbl,
        bstrMnemonic,
        pTerm,
      );

  int ConvertValueToString(
    Pointer<GUID> Term,
    int lcid,
    VARIANT varValue,
    Pointer<Pointer<Utf16>> pbstrResult,
    Pointer<Uint32> plcid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Term,
            Uint32 lcid,
            VARIANT varValue,
            Pointer<Pointer<Utf16>> pbstrResult,
            Pointer<Uint32> plcid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Term,
            int lcid,
            VARIANT varValue,
            Pointer<Pointer<Utf16>> pbstrResult,
            Pointer<Uint32> plcid,
          )>()(
        ptr.ref.lpVtbl,
        Term,
        lcid,
        varValue,
        pbstrResult,
        plcid,
      );
}

/// @nodoc
const CLSID_AccDictionary = '{6572EE16-5FE5-4331-BB6D-76A49C56E423}';

/// {@category com}
class AccDictionary extends IAccDictionary {
  AccDictionary(Pointer<COMObject> ptr) : super(ptr);

  factory AccDictionary.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AccDictionary);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAccDictionary);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AccDictionary(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
