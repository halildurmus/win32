// IWMDRMTranscryptor.dart

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
import '../../media/windowsmediaformat/INSSBuffer.dart';
import '../../media/windowsmediaformat/IWMStatusCallback.dart';

/// @nodoc
const IID_IWMDRMTranscryptor = '{69059850-6E6F-4BB2-806F-71863DDFC471}';

/// {@category Interface}
/// {@category com}
class IWMDRMTranscryptor extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWMDRMTranscryptor(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> bstrFileName,
    Pointer<Uint8> pbLicenseRequestMsg,
    int cbLicenseRequestMsg,
    Pointer<Pointer<COMObject>> ppLicenseResponseMsg,
    Pointer<COMObject> pCallback,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrFileName,
            Pointer<Uint8> pbLicenseRequestMsg,
            Uint32 cbLicenseRequestMsg,
            Pointer<Pointer<COMObject>> ppLicenseResponseMsg,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrFileName,
            Pointer<Uint8> pbLicenseRequestMsg,
            int cbLicenseRequestMsg,
            Pointer<Pointer<COMObject>> ppLicenseResponseMsg,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        bstrFileName,
        pbLicenseRequestMsg,
        cbLicenseRequestMsg,
        ppLicenseResponseMsg,
        pCallback,
        pvContext,
      );

  int Seek(
    int hnsTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 hnsTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsTime,
          )>()(
        ptr.ref.lpVtbl,
        hnsTime,
      );

  int Read(
    Pointer<Uint8> pbData,
    Pointer<Uint32> pcbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbData,
            Pointer<Uint32> pcbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbData,
            Pointer<Uint32> pcbData,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
        pcbData,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
