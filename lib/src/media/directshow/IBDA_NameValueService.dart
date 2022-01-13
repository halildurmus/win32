// IBDA_NameValueService.dart

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
const IID_IBDA_NameValueService = '{7F0B3150-7B81-4AD4-98E3-7E9097094301}';

/// {@category Interface}
/// {@category com}
class IBDA_NameValueService extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IBDA_NameValueService(Pointer<COMObject> ptr) : super(ptr);

  int GetValueNameByIndex(
    int ulIndex,
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulIndex,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulIndex,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        ulIndex,
        pbstrName,
      );

  int GetValue(
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrLanguage,
    Pointer<Pointer<Utf16>> pbstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrLanguage,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrLanguage,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        bstrLanguage,
        pbstrValue,
      );

  int SetValue(
    int ulDialogRequest,
    Pointer<Utf16> bstrLanguage,
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrValue,
    int ulReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulDialogRequest,
            Pointer<Utf16> bstrLanguage,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrValue,
            Uint32 ulReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulDialogRequest,
            Pointer<Utf16> bstrLanguage,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrValue,
            int ulReserved,
          )>()(
        ptr.ref.lpVtbl,
        ulDialogRequest,
        bstrLanguage,
        bstrName,
        bstrValue,
        ulReserved,
      );
}
