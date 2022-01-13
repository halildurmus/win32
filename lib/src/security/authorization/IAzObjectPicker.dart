// IAzObjectPicker.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IAzObjectPicker = '{63130A48-699A-42D8-BF01-C62AC3FB79F9}';

/// {@category Interface}
/// {@category com}
class IAzObjectPicker extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IAzObjectPicker(Pointer<COMObject> ptr) : super(ptr);

  int GetPrincipals(
    int hParentWnd,
    Pointer<Utf16> bstrTitle,
    Pointer<VARIANT> pvSidTypes,
    Pointer<VARIANT> pvNames,
    Pointer<VARIANT> pvSids,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hParentWnd,
            Pointer<Utf16> bstrTitle,
            Pointer<VARIANT> pvSidTypes,
            Pointer<VARIANT> pvNames,
            Pointer<VARIANT> pvSids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hParentWnd,
            Pointer<Utf16> bstrTitle,
            Pointer<VARIANT> pvSidTypes,
            Pointer<VARIANT> pvNames,
            Pointer<VARIANT> pvSids,
          )>()(
        ptr.ref.lpVtbl,
        hParentWnd,
        bstrTitle,
        pvSidTypes,
        pvNames,
        pvSids,
      );

  Pointer<Utf16> get Name {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
