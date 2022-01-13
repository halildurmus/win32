// IMFMediaEngineAudioEndpointId.dart

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
const IID_IMFMediaEngineAudioEndpointId =
    '{7A3BAC98-0E76-49FB-8C20-8A86FD98EAF2}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineAudioEndpointId extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFMediaEngineAudioEndpointId(Pointer<COMObject> ptr) : super(ptr);

  int SetAudioEndpointId(
    Pointer<Utf16> pszEndpointId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszEndpointId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszEndpointId,
          )>()(
        ptr.ref.lpVtbl,
        pszEndpointId,
      );

  int GetAudioEndpointId(
    Pointer<Pointer<Utf16>> ppszEndpointId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszEndpointId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszEndpointId,
          )>()(
        ptr.ref.lpVtbl,
        ppszEndpointId,
      );
}
