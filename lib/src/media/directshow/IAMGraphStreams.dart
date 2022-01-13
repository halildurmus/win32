// IAMGraphStreams.dart

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
import '../../media/directshow/IPin.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAMGraphStreams = '{632105FA-072E-11D3-8AF9-00C04FB6BD3D}';

/// {@category Interface}
/// {@category com}
class IAMGraphStreams extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAMGraphStreams(Pointer<COMObject> ptr) : super(ptr);

  int FindUpstreamInterface(
    Pointer<COMObject> pPin,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvInterface,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPin,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvInterface,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPin,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvInterface,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pPin,
        riid,
        ppvInterface,
        dwFlags,
      );

  int SyncUsingStreamOffset(
    int bUseStreamOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bUseStreamOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bUseStreamOffset,
          )>()(
        ptr.ref.lpVtbl,
        bUseStreamOffset,
      );

  int SetMaxGraphLatency(
    int rtMaxGraphLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rtMaxGraphLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rtMaxGraphLatency,
          )>()(
        ptr.ref.lpVtbl,
        rtMaxGraphLatency,
      );
}
