// IWMStreamConfig.dart

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
const IID_IWMStreamConfig = '{96406BDC-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMStreamConfig extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IWMStreamConfig(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamType(
    Pointer<GUID> pguidStreamType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidStreamType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidStreamType,
          )>()(
        ptr.ref.lpVtbl,
        pguidStreamType,
      );

  int GetStreamNumber(
    Pointer<Uint16> pwStreamNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwStreamNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwStreamNum,
          )>()(
        ptr.ref.lpVtbl,
        pwStreamNum,
      );

  int SetStreamNumber(
    int wStreamNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
      );

  int GetStreamName(
    Pointer<Utf16> pwszStreamName,
    Pointer<Uint16> pcchStreamName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszStreamName,
            Pointer<Uint16> pcchStreamName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszStreamName,
            Pointer<Uint16> pcchStreamName,
          )>()(
        ptr.ref.lpVtbl,
        pwszStreamName,
        pcchStreamName,
      );

  int SetStreamName(
    Pointer<Utf16> pwszStreamName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszStreamName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszStreamName,
          )>()(
        ptr.ref.lpVtbl,
        pwszStreamName,
      );

  int GetConnectionName(
    Pointer<Utf16> pwszInputName,
    Pointer<Uint16> pcchInputName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszInputName,
            Pointer<Uint16> pcchInputName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszInputName,
            Pointer<Uint16> pcchInputName,
          )>()(
        ptr.ref.lpVtbl,
        pwszInputName,
        pcchInputName,
      );

  int SetConnectionName(
    Pointer<Utf16> pwszInputName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszInputName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszInputName,
          )>()(
        ptr.ref.lpVtbl,
        pwszInputName,
      );

  int GetBitrate(
    Pointer<Uint32> pdwBitrate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwBitrate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwBitrate,
          )>()(
        ptr.ref.lpVtbl,
        pdwBitrate,
      );

  int SetBitrate(
    int pdwBitrate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pdwBitrate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pdwBitrate,
          )>()(
        ptr.ref.lpVtbl,
        pdwBitrate,
      );

  int GetBufferWindow(
    Pointer<Uint32> pmsBufferWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pmsBufferWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pmsBufferWindow,
          )>()(
        ptr.ref.lpVtbl,
        pmsBufferWindow,
      );

  int SetBufferWindow(
    int msBufferWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 msBufferWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int msBufferWindow,
          )>()(
        ptr.ref.lpVtbl,
        msBufferWindow,
      );
}
