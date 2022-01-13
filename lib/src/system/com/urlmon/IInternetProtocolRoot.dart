// IInternetProtocolRoot.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/com/urlmon/IInternetProtocolSink.dart';
import '../../../system/com/urlmon/IInternetBindInfo.dart';
import '../../../system/com/urlmon/structs.g.dart';

/// @nodoc
const IID_IInternetProtocolRoot = '{79EAC9E3-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IInternetProtocolRoot extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IInternetProtocolRoot(Pointer<COMObject> ptr) : super(ptr);

  int Start(
    Pointer<Utf16> szUrl,
    Pointer<COMObject> pOIProtSink,
    Pointer<COMObject> pOIBindInfo,
    int grfPI,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szUrl,
            Pointer<COMObject> pOIProtSink,
            Pointer<COMObject> pOIBindInfo,
            Uint32 grfPI,
            IntPtr dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szUrl,
            Pointer<COMObject> pOIProtSink,
            Pointer<COMObject> pOIBindInfo,
            int grfPI,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        szUrl,
        pOIProtSink,
        pOIBindInfo,
        grfPI,
        dwReserved,
      );

  int Continue(
    Pointer<PROTOCOLDATA> pProtocolData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROTOCOLDATA> pProtocolData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROTOCOLDATA> pProtocolData,
          )>()(
        ptr.ref.lpVtbl,
        pProtocolData,
      );

  int Abort(
    int hrReason,
    int dwOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrReason,
            Uint32 dwOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrReason,
            int dwOptions,
          )>()(
        ptr.ref.lpVtbl,
        hrReason,
        dwOptions,
      );

  int Terminate(
    int dwOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOptions,
          )>()(
        ptr.ref.lpVtbl,
        dwOptions,
      );

  int Suspend() => ptr.ref.lpVtbl.value
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

  int Resume() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
}
