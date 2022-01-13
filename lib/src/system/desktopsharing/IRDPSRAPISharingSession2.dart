// IRDPSRAPISharingSession2.dart

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

import '../../system/desktopsharing/IRDPSRAPISharingSession.dart';
import '../../system/desktopsharing/IRDPSRAPITransportStream.dart';
import '../../foundation/structs.g.dart';
import '../../system/desktopsharing/IRDPSRAPIFrameBuffer.dart';
import '../../system/desktopsharing/IRDPSRAPIAttendee.dart';
import '../../system/desktopsharing/structs.g.dart';

/// @nodoc
const IID_IRDPSRAPISharingSession2 = '{FEE4EE57-E3E8-4205-8FB0-8FD1D0675C21}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPISharingSession2 extends IRDPSRAPISharingSession {
  // vtable begins at 21, is 3 entries long.
  IRDPSRAPISharingSession2(Pointer<COMObject> ptr) : super(ptr);

  int ConnectUsingTransportStream(
    Pointer<COMObject> pStream,
    Pointer<Utf16> bstrGroup,
    Pointer<Utf16> bstrAuthenticatedAttendeeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Utf16> bstrGroup,
            Pointer<Utf16> bstrAuthenticatedAttendeeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Utf16> bstrGroup,
            Pointer<Utf16> bstrAuthenticatedAttendeeName,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        bstrGroup,
        bstrAuthenticatedAttendeeName,
      );

  Pointer<COMObject> get FrameBuffer {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int SendControlLevelChangeResponse(
    Pointer<COMObject> pAttendee,
    int RequestedLevel,
    int ReasonCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAttendee,
            Int32 RequestedLevel,
            Int32 ReasonCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAttendee,
            int RequestedLevel,
            int ReasonCode,
          )>()(
        ptr.ref.lpVtbl,
        pAttendee,
        RequestedLevel,
        ReasonCode,
      );
}
