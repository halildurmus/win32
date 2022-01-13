// IWiaLogEx.dart

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
const IID_IWiaLogEx = '{AF1F22AC-7A40-4787-B421-AEB47A1FBD0B}';

/// {@category Interface}
/// {@category com}
class IWiaLogEx extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWiaLogEx(Pointer<COMObject> ptr) : super(ptr);

  int InitializeLogEx(
    Pointer<Uint8> hInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> hInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> hInstance,
          )>()(
        ptr.ref.lpVtbl,
        hInstance,
      );

  int hResult(
    int hResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResult,
          )>()(
        ptr.ref.lpVtbl,
        hResult,
      );

  int Log(
    int lFlags,
    int lResID,
    int lDetail,
    Pointer<Utf16> bstrText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Int32 lResID,
            Int32 lDetail,
            Pointer<Utf16> bstrText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            int lResID,
            int lDetail,
            Pointer<Utf16> bstrText,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        lResID,
        lDetail,
        bstrText,
      );

  int hResultEx(
    int lMethodId,
    int hResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMethodId,
            Int32 hResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMethodId,
            int hResult,
          )>()(
        ptr.ref.lpVtbl,
        lMethodId,
        hResult,
      );

  int LogEx(
    int lMethodId,
    int lFlags,
    int lResID,
    int lDetail,
    Pointer<Utf16> bstrText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMethodId,
            Int32 lFlags,
            Int32 lResID,
            Int32 lDetail,
            Pointer<Utf16> bstrText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMethodId,
            int lFlags,
            int lResID,
            int lDetail,
            Pointer<Utf16> bstrText,
          )>()(
        ptr.ref.lpVtbl,
        lMethodId,
        lFlags,
        lResID,
        lDetail,
        bstrText,
      );
}
