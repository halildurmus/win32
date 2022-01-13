// IMFMediaEngineWebSupport.dart

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
import '../../media/mediafoundation/IAudioSourceProvider.dart';

/// @nodoc
const IID_IMFMediaEngineWebSupport = '{BA2743A1-07E0-48EF-84B6-9A2ED023CA6C}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineWebSupport extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFMediaEngineWebSupport(Pointer<COMObject> ptr) : super(ptr);

  int ShouldDelayTheLoadEvent() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int ConnectWebAudio(
    int dwSampleRate,
    Pointer<Pointer<COMObject>> ppSourceProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSampleRate,
            Pointer<Pointer<COMObject>> ppSourceProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSampleRate,
            Pointer<Pointer<COMObject>> ppSourceProvider,
          )>()(
        ptr.ref.lpVtbl,
        dwSampleRate,
        ppSourceProvider,
      );

  int DisconnectWebAudio() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
