// IWMBandwidthSharing.dart

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

import '../../media/windowsmediaformat/IWMStreamList.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMBandwidthSharing = '{AD694AF1-F8D9-42F8-BC47-70311B0C4F9E}';

/// {@category Interface}
/// {@category com}
class IWMBandwidthSharing extends IWMStreamList {
  // vtable begins at 6, is 4 entries long.
  IWMBandwidthSharing(Pointer<COMObject> ptr) : super(ptr);

  int GetType(
    Pointer<GUID> pguidType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidType,
          )>()(
        ptr.ref.lpVtbl,
        pguidType,
      );

  int SetType(
    Pointer<GUID> guidType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
      );

  int GetBandwidth(
    Pointer<Uint32> pdwBitrate,
    Pointer<Uint32> pmsBufferWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwBitrate,
            Pointer<Uint32> pmsBufferWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwBitrate,
            Pointer<Uint32> pmsBufferWindow,
          )>()(
        ptr.ref.lpVtbl,
        pdwBitrate,
        pmsBufferWindow,
      );

  int SetBandwidth(
    int dwBitrate,
    int msBufferWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBitrate,
            Uint32 msBufferWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBitrate,
            int msBufferWindow,
          )>()(
        ptr.ref.lpVtbl,
        dwBitrate,
        msBufferWindow,
      );
}
