// IActiveScriptStats.dart

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

/// @nodoc
const IID_IActiveScriptStats = '{B8DA6310-E19B-11D0-933C-00A0C90DCAA9}';

/// {@category Interface}
/// {@category com}
class IActiveScriptStats extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IActiveScriptStats(Pointer<COMObject> ptr) : super(ptr);

  int GetStat(
    int stid,
    Pointer<Uint32> pluHi,
    Pointer<Uint32> pluLo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stid,
            Pointer<Uint32> pluHi,
            Pointer<Uint32> pluLo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stid,
            Pointer<Uint32> pluHi,
            Pointer<Uint32> pluLo,
          )>()(
        ptr.ref.lpVtbl,
        stid,
        pluHi,
        pluLo,
      );

  int GetStatEx(
    Pointer<GUID> guid,
    Pointer<Uint32> pluHi,
    Pointer<Uint32> pluLo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Uint32> pluHi,
            Pointer<Uint32> pluLo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Uint32> pluHi,
            Pointer<Uint32> pluLo,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        pluHi,
        pluLo,
      );

  int ResetStats() => ptr.ref.lpVtbl.value
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
