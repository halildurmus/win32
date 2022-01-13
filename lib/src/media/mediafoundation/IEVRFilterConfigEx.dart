// IEVRFilterConfigEx.dart

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

import '../../media/mediafoundation/IEVRFilterConfig.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IEVRFilterConfigEx = '{AEA36028-796D-454F-BEEE-B48071E24304}';

/// {@category Interface}
/// {@category com}
class IEVRFilterConfigEx extends IEVRFilterConfig {
  // vtable begins at 5, is 2 entries long.
  IEVRFilterConfigEx(Pointer<COMObject> ptr) : super(ptr);

  int SetConfigPrefs(
    int dwConfigFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwConfigFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwConfigFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwConfigFlags,
      );

  int GetConfigPrefs(
    Pointer<Uint32> pdwConfigFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwConfigFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwConfigFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwConfigFlags,
      );
}
