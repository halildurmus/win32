// ISAXAttributes.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ISAXAttributes = '{F078ABE1-45D2-4832-91EA-4466CE2F25C9}';

/// {@category Interface}
/// {@category com}
class ISAXAttributes extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  ISAXAttributes(Pointer<COMObject> ptr) : super(ptr);

  int getLength(
    Pointer<Int32> pnLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnLength,
          )>()(
        ptr.ref.lpVtbl,
        pnLength,
      );

  int getURI(
    int nIndex,
    Pointer<Pointer<Uint16>> ppwchUri,
    Pointer<Int32> pcchUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Pointer<Uint16>> ppwchUri,
            Pointer<Int32> pcchUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Uint16>> ppwchUri,
            Pointer<Int32> pcchUri,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppwchUri,
        pcchUri,
      );

  int getLocalName(
    int nIndex,
    Pointer<Pointer<Uint16>> ppwchLocalName,
    Pointer<Int32> pcchLocalName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Pointer<Uint16>> ppwchLocalName,
            Pointer<Int32> pcchLocalName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Uint16>> ppwchLocalName,
            Pointer<Int32> pcchLocalName,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppwchLocalName,
        pcchLocalName,
      );

  int getQName(
    int nIndex,
    Pointer<Pointer<Uint16>> ppwchQName,
    Pointer<Int32> pcchQName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Pointer<Uint16>> ppwchQName,
            Pointer<Int32> pcchQName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Uint16>> ppwchQName,
            Pointer<Int32> pcchQName,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppwchQName,
        pcchQName,
      );

  int getName(
    int nIndex,
    Pointer<Pointer<Uint16>> ppwchUri,
    Pointer<Int32> pcchUri,
    Pointer<Pointer<Uint16>> ppwchLocalName,
    Pointer<Int32> pcchLocalName,
    Pointer<Pointer<Uint16>> ppwchQName,
    Pointer<Int32> pcchQName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Pointer<Uint16>> ppwchUri,
            Pointer<Int32> pcchUri,
            Pointer<Pointer<Uint16>> ppwchLocalName,
            Pointer<Int32> pcchLocalName,
            Pointer<Pointer<Uint16>> ppwchQName,
            Pointer<Int32> pcchQName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Uint16>> ppwchUri,
            Pointer<Int32> pcchUri,
            Pointer<Pointer<Uint16>> ppwchLocalName,
            Pointer<Int32> pcchLocalName,
            Pointer<Pointer<Uint16>> ppwchQName,
            Pointer<Int32> pcchQName,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppwchUri,
        pcchUri,
        ppwchLocalName,
        pcchLocalName,
        ppwchQName,
        pcchQName,
      );

  int getIndexFromName(
    Pointer<Utf16> pwchUri,
    int cchUri,
    Pointer<Utf16> pwchLocalName,
    int cchLocalName,
    Pointer<Int32> pnIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchUri,
            Int32 cchUri,
            Pointer<Utf16> pwchLocalName,
            Int32 cchLocalName,
            Pointer<Int32> pnIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchUri,
            int cchUri,
            Pointer<Utf16> pwchLocalName,
            int cchLocalName,
            Pointer<Int32> pnIndex,
          )>()(
        ptr.ref.lpVtbl,
        pwchUri,
        cchUri,
        pwchLocalName,
        cchLocalName,
        pnIndex,
      );

  int getIndexFromQName(
    Pointer<Utf16> pwchQName,
    int cchQName,
    Pointer<Int32> pnIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchQName,
            Int32 cchQName,
            Pointer<Int32> pnIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchQName,
            int cchQName,
            Pointer<Int32> pnIndex,
          )>()(
        ptr.ref.lpVtbl,
        pwchQName,
        cchQName,
        pnIndex,
      );

  int getType(
    int nIndex,
    Pointer<Pointer<Uint16>> ppwchType,
    Pointer<Int32> pcchType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Pointer<Uint16>> ppwchType,
            Pointer<Int32> pcchType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Uint16>> ppwchType,
            Pointer<Int32> pcchType,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppwchType,
        pcchType,
      );

  int getTypeFromName(
    Pointer<Utf16> pwchUri,
    int cchUri,
    Pointer<Utf16> pwchLocalName,
    int cchLocalName,
    Pointer<Pointer<Uint16>> ppwchType,
    Pointer<Int32> pcchType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchUri,
            Int32 cchUri,
            Pointer<Utf16> pwchLocalName,
            Int32 cchLocalName,
            Pointer<Pointer<Uint16>> ppwchType,
            Pointer<Int32> pcchType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchUri,
            int cchUri,
            Pointer<Utf16> pwchLocalName,
            int cchLocalName,
            Pointer<Pointer<Uint16>> ppwchType,
            Pointer<Int32> pcchType,
          )>()(
        ptr.ref.lpVtbl,
        pwchUri,
        cchUri,
        pwchLocalName,
        cchLocalName,
        ppwchType,
        pcchType,
      );

  int getTypeFromQName(
    Pointer<Utf16> pwchQName,
    int cchQName,
    Pointer<Pointer<Uint16>> ppwchType,
    Pointer<Int32> pcchType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchQName,
            Int32 cchQName,
            Pointer<Pointer<Uint16>> ppwchType,
            Pointer<Int32> pcchType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchQName,
            int cchQName,
            Pointer<Pointer<Uint16>> ppwchType,
            Pointer<Int32> pcchType,
          )>()(
        ptr.ref.lpVtbl,
        pwchQName,
        cchQName,
        ppwchType,
        pcchType,
      );

  int getValue(
    int nIndex,
    Pointer<Pointer<Uint16>> ppwchValue,
    Pointer<Int32> pcchValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Pointer<Uint16>> ppwchValue,
            Pointer<Int32> pcchValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Uint16>> ppwchValue,
            Pointer<Int32> pcchValue,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppwchValue,
        pcchValue,
      );

  int getValueFromName(
    Pointer<Utf16> pwchUri,
    int cchUri,
    Pointer<Utf16> pwchLocalName,
    int cchLocalName,
    Pointer<Pointer<Uint16>> ppwchValue,
    Pointer<Int32> pcchValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchUri,
            Int32 cchUri,
            Pointer<Utf16> pwchLocalName,
            Int32 cchLocalName,
            Pointer<Pointer<Uint16>> ppwchValue,
            Pointer<Int32> pcchValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchUri,
            int cchUri,
            Pointer<Utf16> pwchLocalName,
            int cchLocalName,
            Pointer<Pointer<Uint16>> ppwchValue,
            Pointer<Int32> pcchValue,
          )>()(
        ptr.ref.lpVtbl,
        pwchUri,
        cchUri,
        pwchLocalName,
        cchLocalName,
        ppwchValue,
        pcchValue,
      );

  int getValueFromQName(
    Pointer<Utf16> pwchQName,
    int cchQName,
    Pointer<Pointer<Uint16>> ppwchValue,
    Pointer<Int32> pcchValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchQName,
            Int32 cchQName,
            Pointer<Pointer<Uint16>> ppwchValue,
            Pointer<Int32> pcchValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchQName,
            int cchQName,
            Pointer<Pointer<Uint16>> ppwchValue,
            Pointer<Int32> pcchValue,
          )>()(
        ptr.ref.lpVtbl,
        pwchQName,
        cchQName,
        ppwchValue,
        pcchValue,
      );
}
