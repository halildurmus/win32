// IServerXMLHTTPRequest.dart

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

import '../../../data/xml/msxml/IXMLHTTPRequest.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../data/xml/msxml/structs.g.dart';

/// @nodoc
const IID_IServerXMLHTTPRequest = '{2E9196BF-13BA-4DD4-91CA-6C571F281495}';

/// {@category Interface}
/// {@category com}
class IServerXMLHTTPRequest extends IXMLHTTPRequest {
  // vtable begins at 21, is 4 entries long.
  IServerXMLHTTPRequest(Pointer<COMObject> ptr) : super(ptr);

  int setTimeouts(
    int resolveTimeout,
    int connectTimeout,
    int sendTimeout,
    int receiveTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 resolveTimeout,
            Int32 connectTimeout,
            Int32 sendTimeout,
            Int32 receiveTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int resolveTimeout,
            int connectTimeout,
            int sendTimeout,
            int receiveTimeout,
          )>()(
        ptr.ref.lpVtbl,
        resolveTimeout,
        connectTimeout,
        sendTimeout,
        receiveTimeout,
      );

  int waitForResponse(
    VARIANT timeoutInSeconds,
    Pointer<Int16> isSuccessful,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT timeoutInSeconds,
            Pointer<Int16> isSuccessful,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT timeoutInSeconds,
            Pointer<Int16> isSuccessful,
          )>()(
        ptr.ref.lpVtbl,
        timeoutInSeconds,
        isSuccessful,
      );

  int getOption(
    int option,
    Pointer<VARIANT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 option,
            Pointer<VARIANT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int option,
            Pointer<VARIANT> value,
          )>()(
        ptr.ref.lpVtbl,
        option,
        value,
      );

  int setOption(
    int option,
    VARIANT value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 option,
            VARIANT value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int option,
            VARIANT value,
          )>()(
        ptr.ref.lpVtbl,
        option,
        value,
      );
}
