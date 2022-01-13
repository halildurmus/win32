// IWMRegisteredDevice.dart

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
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/INSSBuffer.dart';

/// @nodoc
const IID_IWMRegisteredDevice = '{A4503BEC-5508-4148-97AC-BFA75760A70D}';

/// {@category Interface}
/// {@category com}
class IWMRegisteredDevice extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IWMRegisteredDevice(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceSerialNumber(
    Pointer<DRM_VAL16> pSerialNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DRM_VAL16> pSerialNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DRM_VAL16> pSerialNumber,
          )>()(
        ptr.ref.lpVtbl,
        pSerialNumber,
      );

  int GetDeviceCertificate(
    Pointer<Pointer<COMObject>> ppCertificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCertificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCertificate,
          )>()(
        ptr.ref.lpVtbl,
        ppCertificate,
      );

  int GetDeviceType(
    Pointer<Uint32> pdwType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwType,
          )>()(
        ptr.ref.lpVtbl,
        pdwType,
      );

  int GetAttributeCount(
    Pointer<Uint32> pcAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pcAttributes,
      );

  int GetAttributeByIndex(
    int dwIndex,
    Pointer<Pointer<Utf16>> pbstrName,
    Pointer<Pointer<Utf16>> pbstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<Utf16>> pbstrName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<Utf16>> pbstrName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pbstrName,
        pbstrValue,
      );

  int GetAttributeByName(
    Pointer<Utf16> bstrName,
    Pointer<Pointer<Utf16>> pbstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int SetAttributeByName(
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int Approve(
    int fApprove,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fApprove,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fApprove,
          )>()(
        ptr.ref.lpVtbl,
        fApprove,
      );

  int IsValid(
    Pointer<Int32> pfValid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfValid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfValid,
          )>()(
        ptr.ref.lpVtbl,
        pfValid,
      );

  int IsApproved(
    Pointer<Int32> pfApproved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfApproved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfApproved,
          )>()(
        ptr.ref.lpVtbl,
        pfApproved,
      );

  int IsWmdrmCompliant(
    Pointer<Int32> pfCompliant,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCompliant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCompliant,
          )>()(
        ptr.ref.lpVtbl,
        pfCompliant,
      );

  int IsOpened(
    Pointer<Int32> pfOpened,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfOpened,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfOpened,
          )>()(
        ptr.ref.lpVtbl,
        pfOpened,
      );

  int Open() => ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
