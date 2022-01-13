// IInternetProtocolEx.dart

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

import '../../../system/com/urlmon/IInternetProtocol.dart';
import '../../../system/com/IUri.dart';
import '../../../system/com/urlmon/IInternetProtocolSink.dart';
import '../../../system/com/urlmon/IInternetBindInfo.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInternetProtocolEx = '{C7A98E66-1010-492C-A1C8-C809E1F75905}';

/// {@category Interface}
/// {@category com}
class IInternetProtocolEx extends IInternetProtocol {
  // vtable begins at 13, is 1 entries long.
  IInternetProtocolEx(Pointer<COMObject> ptr) : super(ptr);

  int StartEx(
    Pointer<COMObject> pUri,
    Pointer<COMObject> pOIProtSink,
    Pointer<COMObject> pOIBindInfo,
    int grfPI,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUri,
            Pointer<COMObject> pOIProtSink,
            Pointer<COMObject> pOIBindInfo,
            Uint32 grfPI,
            IntPtr dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUri,
            Pointer<COMObject> pOIProtSink,
            Pointer<COMObject> pOIBindInfo,
            int grfPI,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pUri,
        pOIProtSink,
        pOIBindInfo,
        grfPI,
        dwReserved,
      );
}
