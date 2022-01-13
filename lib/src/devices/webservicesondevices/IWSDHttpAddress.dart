// IWSDHttpAddress.dart

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

import '../../devices/webservicesondevices/IWSDTransportAddress.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSDHttpAddress = '{D09AC7BD-2A3E-4B85-8605-2737FF3E4EA0}';

/// {@category Interface}
/// {@category com}
class IWSDHttpAddress extends IWSDTransportAddress {
  // vtable begins at 10, is 4 entries long.
  IWSDHttpAddress(Pointer<COMObject> ptr) : super(ptr);

  int GetSecure() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int SetSecure(
    int fSecure,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fSecure,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSecure,
          )>()(
        ptr.ref.lpVtbl,
        fSecure,
      );

  int GetPath(
    Pointer<Pointer<Utf16>> ppszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPath,
          )>()(
        ptr.ref.lpVtbl,
        ppszPath,
      );

  int SetPath(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
      );
}
