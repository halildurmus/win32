// IWMPSubscriptionService2.dart

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

import '../../media/mediaplayer/IWMPSubscriptionService.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/structs.g.dart';
import '../../media/mediaplayer/IWMPSubscriptionServiceCallback.dart';

/// @nodoc
const IID_IWMPSubscriptionService2 = '{A94C120E-D600-4EC6-B05E-EC9D56D84DE0}';

/// {@category Interface}
/// {@category com}
class IWMPSubscriptionService2 extends IWMPSubscriptionService {
  // vtable begins at 7, is 4 entries long.
  IWMPSubscriptionService2(Pointer<COMObject> ptr) : super(ptr);

  int stopBackgroundProcessing() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int serviceEvent(
    int event,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 event,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int event,
          )>()(
        ptr.ref.lpVtbl,
        event,
      );

  int deviceAvailable(
    Pointer<Utf16> bstrDeviceName,
    Pointer<COMObject> pCB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDeviceName,
            Pointer<COMObject> pCB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDeviceName,
            Pointer<COMObject> pCB,
          )>()(
        ptr.ref.lpVtbl,
        bstrDeviceName,
        pCB,
      );

  int prepareForSync(
    Pointer<Utf16> bstrFilename,
    Pointer<Utf16> bstrDeviceName,
    Pointer<COMObject> pCB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrFilename,
            Pointer<Utf16> bstrDeviceName,
            Pointer<COMObject> pCB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrFilename,
            Pointer<Utf16> bstrDeviceName,
            Pointer<COMObject> pCB,
          )>()(
        ptr.ref.lpVtbl,
        bstrFilename,
        bstrDeviceName,
        pCB,
      );
}
