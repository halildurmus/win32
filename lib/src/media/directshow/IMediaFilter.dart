// IMediaFilter.dart

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

import '../../system/com/IPersist.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/IReferenceClock.dart';

/// @nodoc
const IID_IMediaFilter = '{56A86899-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IMediaFilter extends IPersist {
  // vtable begins at 4, is 6 entries long.
  IMediaFilter(Pointer<COMObject> ptr) : super(ptr);

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Pause() => ptr.ref.lpVtbl.value
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

  int Run(
    int tStart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 tStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tStart,
          )>()(
        ptr.ref.lpVtbl,
        tStart,
      );

  int GetState(
    int dwMilliSecsTimeout,
    Pointer<Int32> State,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMilliSecsTimeout,
            Pointer<Int32> State,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMilliSecsTimeout,
            Pointer<Int32> State,
          )>()(
        ptr.ref.lpVtbl,
        dwMilliSecsTimeout,
        State,
      );

  int SetSyncSource(
    Pointer<COMObject> pClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pClock,
          )>()(
        ptr.ref.lpVtbl,
        pClock,
      );

  int GetSyncSource(
    Pointer<Pointer<COMObject>> pClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pClock,
          )>()(
        ptr.ref.lpVtbl,
        pClock,
      );
}
