// IRTCPortManager.dart

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
import '../../system/realtimecommunications/structs.g.dart';

/// @nodoc
const IID_IRTCPortManager = '{DA77C14B-6208-43CA-8DDF-5B60A0A69FAC}';

/// {@category Interface}
/// {@category com}
class IRTCPortManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IRTCPortManager(Pointer<COMObject> ptr) : super(ptr);

  int GetMapping(
    Pointer<Utf16> bstrRemoteAddress,
    int enPortType,
    Pointer<Pointer<Utf16>> pbstrInternalLocalAddress,
    Pointer<Int32> plInternalLocalPort,
    Pointer<Pointer<Utf16>> pbstrExternalLocalAddress,
    Pointer<Int32> plExternalLocalPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRemoteAddress,
            Int32 enPortType,
            Pointer<Pointer<Utf16>> pbstrInternalLocalAddress,
            Pointer<Int32> plInternalLocalPort,
            Pointer<Pointer<Utf16>> pbstrExternalLocalAddress,
            Pointer<Int32> plExternalLocalPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRemoteAddress,
            int enPortType,
            Pointer<Pointer<Utf16>> pbstrInternalLocalAddress,
            Pointer<Int32> plInternalLocalPort,
            Pointer<Pointer<Utf16>> pbstrExternalLocalAddress,
            Pointer<Int32> plExternalLocalPort,
          )>()(
        ptr.ref.lpVtbl,
        bstrRemoteAddress,
        enPortType,
        pbstrInternalLocalAddress,
        plInternalLocalPort,
        pbstrExternalLocalAddress,
        plExternalLocalPort,
      );

  int UpdateRemoteAddress(
    Pointer<Utf16> bstrRemoteAddress,
    Pointer<Utf16> bstrInternalLocalAddress,
    int lInternalLocalPort,
    Pointer<Utf16> bstrExternalLocalAddress,
    int lExternalLocalPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRemoteAddress,
            Pointer<Utf16> bstrInternalLocalAddress,
            Int32 lInternalLocalPort,
            Pointer<Utf16> bstrExternalLocalAddress,
            Int32 lExternalLocalPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRemoteAddress,
            Pointer<Utf16> bstrInternalLocalAddress,
            int lInternalLocalPort,
            Pointer<Utf16> bstrExternalLocalAddress,
            int lExternalLocalPort,
          )>()(
        ptr.ref.lpVtbl,
        bstrRemoteAddress,
        bstrInternalLocalAddress,
        lInternalLocalPort,
        bstrExternalLocalAddress,
        lExternalLocalPort,
      );

  int ReleaseMapping(
    Pointer<Utf16> bstrInternalLocalAddress,
    int lInternalLocalPort,
    Pointer<Utf16> bstrExternalLocalAddress,
    int lExternalLocalAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrInternalLocalAddress,
            Int32 lInternalLocalPort,
            Pointer<Utf16> bstrExternalLocalAddress,
            Int32 lExternalLocalAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrInternalLocalAddress,
            int lInternalLocalPort,
            Pointer<Utf16> bstrExternalLocalAddress,
            int lExternalLocalAddress,
          )>()(
        ptr.ref.lpVtbl,
        bstrInternalLocalAddress,
        lInternalLocalPort,
        bstrExternalLocalAddress,
        lExternalLocalAddress,
      );
}
