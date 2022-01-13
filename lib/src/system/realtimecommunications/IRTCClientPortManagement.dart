// IRTCClientPortManagement.dart

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
const IID_IRTCClientPortManagement = '{D5DF3F03-4BDE-4417-AEFE-71177BDAEA66}';

/// {@category Interface}
/// {@category com}
class IRTCClientPortManagement extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IRTCClientPortManagement(Pointer<COMObject> ptr) : super(ptr);

  int StartListenAddressAndPort(
    Pointer<Utf16> bstrInternalLocalAddress,
    int lInternalLocalPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrInternalLocalAddress,
            Int32 lInternalLocalPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrInternalLocalAddress,
            int lInternalLocalPort,
          )>()(
        ptr.ref.lpVtbl,
        bstrInternalLocalAddress,
        lInternalLocalPort,
      );

  int StopListenAddressAndPort(
    Pointer<Utf16> bstrInternalLocalAddress,
    int lInternalLocalPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrInternalLocalAddress,
            Int32 lInternalLocalPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrInternalLocalAddress,
            int lInternalLocalPort,
          )>()(
        ptr.ref.lpVtbl,
        bstrInternalLocalAddress,
        lInternalLocalPort,
      );

  int GetPortRange(
    int enPortType,
    Pointer<Int32> plMinValue,
    Pointer<Int32> plMaxValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enPortType,
            Pointer<Int32> plMinValue,
            Pointer<Int32> plMaxValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enPortType,
            Pointer<Int32> plMinValue,
            Pointer<Int32> plMaxValue,
          )>()(
        ptr.ref.lpVtbl,
        enPortType,
        plMinValue,
        plMaxValue,
      );
}
