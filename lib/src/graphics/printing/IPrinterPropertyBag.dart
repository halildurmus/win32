// IPrinterPropertyBag.dart

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
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IPrinterPropertyBag = '{FEA77364-DF95-4A23-A905-019B79A8E481}';

/// {@category Interface}
/// {@category com}
class IPrinterPropertyBag extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  IPrinterPropertyBag(Pointer<COMObject> ptr) : super(ptr);

  int GetBool(
    Pointer<Utf16> bstrName,
    Pointer<Int32> pbValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Int32> pbValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Int32> pbValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        pbValue,
      );

  int SetBool(
    Pointer<Utf16> bstrName,
    int bValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Int32 bValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            int bValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        bValue,
      );

  int GetInt32(
    Pointer<Utf16> bstrName,
    Pointer<Int32> pnValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Int32> pnValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Int32> pnValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        pnValue,
      );

  int SetInt32(
    Pointer<Utf16> bstrName,
    int nValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Int32 nValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            int nValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        nValue,
      );

  int GetString(
    Pointer<Utf16> bstrName,
    Pointer<Pointer<Utf16>> pbstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        pbstrValue,
      );

  int SetString(
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        bstrValue,
      );

  int GetBytes(
    Pointer<Utf16> bstrName,
    Pointer<Uint32> pcbValue,
    Pointer<Pointer<Uint8>> ppValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Uint32> pcbValue,
            Pointer<Pointer<Uint8>> ppValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Uint32> pcbValue,
            Pointer<Pointer<Uint8>> ppValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        pcbValue,
        ppValue,
      );

  int SetBytes(
    Pointer<Utf16> bstrName,
    int cbValue,
    Pointer<Uint8> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Uint32 cbValue,
            Pointer<Uint8> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            int cbValue,
            Pointer<Uint8> pValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        cbValue,
        pValue,
      );

  int GetReadStream(
    Pointer<Utf16> bstrName,
    Pointer<Pointer<COMObject>> ppValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        ppValue,
      );

  int GetWriteStream(
    Pointer<Utf16> bstrName,
    Pointer<Pointer<COMObject>> ppValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        ppValue,
      );
}
