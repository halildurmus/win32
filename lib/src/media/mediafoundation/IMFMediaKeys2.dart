// IMFMediaKeys2.dart

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

import '../../media/mediafoundation/IMFMediaKeys.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaKeySessionNotify2.dart';
import '../../media/mediafoundation/IMFMediaKeySession2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaKeys2 = '{45892507-AD66-4DE2-83A2-ACBB13CD8D43}';

/// {@category Interface}
/// {@category com}
class IMFMediaKeys2 extends IMFMediaKeys {
  // vtable begins at 7, is 3 entries long.
  IMFMediaKeys2(Pointer<COMObject> ptr) : super(ptr);

  int CreateSession2(
    int eSessionType,
    Pointer<COMObject> pMFMediaKeySessionNotify2,
    Pointer<Pointer<COMObject>> ppSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eSessionType,
            Pointer<COMObject> pMFMediaKeySessionNotify2,
            Pointer<Pointer<COMObject>> ppSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eSessionType,
            Pointer<COMObject> pMFMediaKeySessionNotify2,
            Pointer<Pointer<COMObject>> ppSession,
          )>()(
        ptr.ref.lpVtbl,
        eSessionType,
        pMFMediaKeySessionNotify2,
        ppSession,
      );

  int SetServerCertificate(
    Pointer<Uint8> pbServerCertificate,
    int cb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbServerCertificate,
            Uint32 cb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbServerCertificate,
            int cb,
          )>()(
        ptr.ref.lpVtbl,
        pbServerCertificate,
        cb,
      );

  int GetDOMException(
    int systemCode,
    Pointer<Int32> code,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 systemCode,
            Pointer<Int32> code,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int systemCode,
            Pointer<Int32> code,
          )>()(
        ptr.ref.lpVtbl,
        systemCode,
        code,
      );
}
