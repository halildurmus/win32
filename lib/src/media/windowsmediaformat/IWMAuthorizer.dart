// IWMAuthorizer.dart

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
const IID_IWMAuthorizer = '{D9B67D36-A9AD-4EB4-BAEF-DB284EF5504C}';

/// {@category Interface}
/// {@category com}
class IWMAuthorizer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMAuthorizer(Pointer<COMObject> ptr) : super(ptr);

  int GetCertCount(
    Pointer<Uint32> pcCerts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcCerts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcCerts,
          )>()(
        ptr.ref.lpVtbl,
        pcCerts,
      );

  int GetCert(
    int dwIndex,
    Pointer<Pointer<Uint8>> ppbCertData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<Uint8>> ppbCertData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<Uint8>> ppbCertData,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppbCertData,
      );

  int GetSharedData(
    int dwCertIndex,
    Pointer<Uint8> pbSharedData,
    Pointer<Uint8> pbCert,
    Pointer<Pointer<Uint8>> ppbSharedData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCertIndex,
            Pointer<Uint8> pbSharedData,
            Pointer<Uint8> pbCert,
            Pointer<Pointer<Uint8>> ppbSharedData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCertIndex,
            Pointer<Uint8> pbSharedData,
            Pointer<Uint8> pbCert,
            Pointer<Pointer<Uint8>> ppbSharedData,
          )>()(
        ptr.ref.lpVtbl,
        dwCertIndex,
        pbSharedData,
        pbCert,
        ppbSharedData,
      );
}
