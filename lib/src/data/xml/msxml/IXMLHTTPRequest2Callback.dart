// IXMLHTTPRequest2Callback.dart

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
import '../../../data/xml/msxml/IXMLHTTPRequest2.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/ISequentialStream.dart';

/// @nodoc
const IID_IXMLHTTPRequest2Callback = '{A44A9299-E321-40DE-8866-341B41669162}';

/// {@category Interface}
/// {@category com}
class IXMLHTTPRequest2Callback extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IXMLHTTPRequest2Callback(Pointer<COMObject> ptr) : super(ptr);

  int OnRedirect(
    Pointer<COMObject> pXHR,
    Pointer<Utf16> pwszRedirectUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pXHR,
            Pointer<Utf16> pwszRedirectUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pXHR,
            Pointer<Utf16> pwszRedirectUrl,
          )>()(
        ptr.ref.lpVtbl,
        pXHR,
        pwszRedirectUrl,
      );

  int OnHeadersAvailable(
    Pointer<COMObject> pXHR,
    int dwStatus,
    Pointer<Utf16> pwszStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pXHR,
            Uint32 dwStatus,
            Pointer<Utf16> pwszStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pXHR,
            int dwStatus,
            Pointer<Utf16> pwszStatus,
          )>()(
        ptr.ref.lpVtbl,
        pXHR,
        dwStatus,
        pwszStatus,
      );

  int OnDataAvailable(
    Pointer<COMObject> pXHR,
    Pointer<COMObject> pResponseStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pXHR,
            Pointer<COMObject> pResponseStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pXHR,
            Pointer<COMObject> pResponseStream,
          )>()(
        ptr.ref.lpVtbl,
        pXHR,
        pResponseStream,
      );

  int OnResponseReceived(
    Pointer<COMObject> pXHR,
    Pointer<COMObject> pResponseStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pXHR,
            Pointer<COMObject> pResponseStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pXHR,
            Pointer<COMObject> pResponseStream,
          )>()(
        ptr.ref.lpVtbl,
        pXHR,
        pResponseStream,
      );

  int OnError(
    Pointer<COMObject> pXHR,
    int hrError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pXHR,
            Int32 hrError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pXHR,
            int hrError,
          )>()(
        ptr.ref.lpVtbl,
        pXHR,
        hrError,
      );
}
