// IMFVideoMixerControl2.dart

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

import '../../media/mediafoundation/IMFVideoMixerControl.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoMixerControl2 = '{8459616D-966E-4930-B658-54FA7E5A16D3}';

/// {@category Interface}
/// {@category com}
class IMFVideoMixerControl2 extends IMFVideoMixerControl {
  // vtable begins at 7, is 2 entries long.
  IMFVideoMixerControl2(Pointer<COMObject> ptr) : super(ptr);

  int SetMixingPrefs(
    int dwMixFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMixFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMixFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwMixFlags,
      );

  int GetMixingPrefs(
    Pointer<Uint32> pdwMixFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMixFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMixFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwMixFlags,
      );
}
