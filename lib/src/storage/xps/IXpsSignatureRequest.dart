// IXpsSignatureRequest.dart

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
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../storage/xps/IXpsSignature.dart';

/// @nodoc
const IID_IXpsSignatureRequest = '{AC58950B-7208-4B2D-B2C4-951083D3B8EB}';

/// {@category Interface}
/// {@category com}
class IXpsSignatureRequest extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IXpsSignatureRequest(Pointer<COMObject> ptr) : super(ptr);

  int GetIntent(
    Pointer<Pointer<Utf16>> intent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> intent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> intent,
          )>()(
        ptr.ref.lpVtbl,
        intent,
      );

  int SetIntent(
    Pointer<Utf16> intent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> intent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> intent,
          )>()(
        ptr.ref.lpVtbl,
        intent,
      );

  int GetRequestedSigner(
    Pointer<Pointer<Utf16>> signerName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> signerName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> signerName,
          )>()(
        ptr.ref.lpVtbl,
        signerName,
      );

  int SetRequestedSigner(
    Pointer<Utf16> signerName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> signerName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> signerName,
          )>()(
        ptr.ref.lpVtbl,
        signerName,
      );

  int GetRequestSignByDate(
    Pointer<Pointer<Utf16>> dateString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> dateString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> dateString,
          )>()(
        ptr.ref.lpVtbl,
        dateString,
      );

  int SetRequestSignByDate(
    Pointer<Utf16> dateString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> dateString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> dateString,
          )>()(
        ptr.ref.lpVtbl,
        dateString,
      );

  int GetSigningLocale(
    Pointer<Pointer<Utf16>> place,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> place,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> place,
          )>()(
        ptr.ref.lpVtbl,
        place,
      );

  int SetSigningLocale(
    Pointer<Utf16> place,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> place,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> place,
          )>()(
        ptr.ref.lpVtbl,
        place,
      );

  int GetSpotLocation(
    Pointer<Int32> pageIndex,
    Pointer<Pointer<COMObject>> pagePartName,
    Pointer<Float> x,
    Pointer<Float> y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pageIndex,
            Pointer<Pointer<COMObject>> pagePartName,
            Pointer<Float> x,
            Pointer<Float> y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pageIndex,
            Pointer<Pointer<COMObject>> pagePartName,
            Pointer<Float> x,
            Pointer<Float> y,
          )>()(
        ptr.ref.lpVtbl,
        pageIndex,
        pagePartName,
        x,
        y,
      );

  int SetSpotLocation(
    int pageIndex,
    double x,
    double y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 pageIndex,
            Float x,
            Float y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pageIndex,
            double x,
            double y,
          )>()(
        ptr.ref.lpVtbl,
        pageIndex,
        x,
        y,
      );

  int GetRequestId(
    Pointer<Pointer<Utf16>> requestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> requestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> requestId,
          )>()(
        ptr.ref.lpVtbl,
        requestId,
      );

  int GetSignature(
    Pointer<Pointer<COMObject>> signature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> signature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> signature,
          )>()(
        ptr.ref.lpVtbl,
        signature,
      );
}
