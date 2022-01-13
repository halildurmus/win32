// IADesktopP2.dart

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
import '../../system/ole/IOleObject.dart';

/// @nodoc
const IID_IADesktopP2 = '{B22754E2-4574-11D1-9888-006097DEACF9}';

/// {@category Interface}
/// {@category com}
class IADesktopP2 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IADesktopP2(Pointer<COMObject> ptr) : super(ptr);

  int ReReadWallpaper() => ptr.ref.lpVtbl.value
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

  int GetADObjectFlags(
    Pointer<Uint32> pdwFlags,
    int dwMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
            Uint32 dwMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
            int dwMask,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
        dwMask,
      );

  int UpdateAllDesktopSubscriptions() => ptr.ref.lpVtbl.value
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

  int MakeDynamicChanges(
    Pointer<COMObject> pOleObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOleObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOleObj,
          )>()(
        ptr.ref.lpVtbl,
        pOleObj,
      );
}
