// IWSDTransportAddress.dart

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

import '../../devices/webservicesondevices/IWSDAddress.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSDTransportAddress = '{70D23498-4EE6-4340-A3DF-D845D2235467}';

/// {@category Interface}
/// {@category com}
class IWSDTransportAddress extends IWSDAddress {
  // vtable begins at 5, is 5 entries long.
  IWSDTransportAddress(Pointer<COMObject> ptr) : super(ptr);

  int GetPort(
    Pointer<Uint16> pwPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwPort,
          )>()(
        ptr.ref.lpVtbl,
        pwPort,
      );

  int SetPort(
    int wPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wPort,
          )>()(
        ptr.ref.lpVtbl,
        wPort,
      );

  int GetTransportAddress(
    Pointer<Pointer<Utf16>> ppszAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszAddress,
          )>()(
        ptr.ref.lpVtbl,
        ppszAddress,
      );

  int GetTransportAddressEx(
    int fSafe,
    Pointer<Pointer<Utf16>> ppszAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fSafe,
            Pointer<Pointer<Utf16>> ppszAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSafe,
            Pointer<Pointer<Utf16>> ppszAddress,
          )>()(
        ptr.ref.lpVtbl,
        fSafe,
        ppszAddress,
      );

  int SetTransportAddress(
    Pointer<Utf16> pszAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAddress,
          )>()(
        ptr.ref.lpVtbl,
        pszAddress,
      );
}
