// ISpPhoneConverter.dart

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

import '../../media/speech/ISpObjectWithToken.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpPhoneConverter = '{8445C581-0CAC-4A38-ABFE-9B2CE2826455}';

/// {@category Interface}
/// {@category com}
class ISpPhoneConverter extends ISpObjectWithToken {
  // vtable begins at 5, is 2 entries long.
  ISpPhoneConverter(Pointer<COMObject> ptr) : super(ptr);

  int PhoneToId(
    Pointer<Utf16> pszPhone,
    Pointer<Uint16> pId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPhone,
            Pointer<Uint16> pId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPhone,
            Pointer<Uint16> pId,
          )>()(
        ptr.ref.lpVtbl,
        pszPhone,
        pId,
      );

  int IdToPhone(
    Pointer<Uint16> pId,
    Pointer<Utf16> pszPhone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pId,
            Pointer<Utf16> pszPhone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pId,
            Pointer<Utf16> pszPhone,
          )>()(
        ptr.ref.lpVtbl,
        pId,
        pszPhone,
      );
}

/// @nodoc
const CLSID_SpPhoneConverter = '{9185F743-1143-4C28-86B5-BFF14F20E5C8}';

/// {@category com}
class SpPhoneConverter extends ISpPhoneConverter {
  SpPhoneConverter(Pointer<COMObject> ptr) : super(ptr);

  factory SpPhoneConverter.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SpPhoneConverter);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISpPhoneConverter);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SpPhoneConverter(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
