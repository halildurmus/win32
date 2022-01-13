// IReferenceClock.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../system/com/IUnknown.dart';
import '../foundation/structs.g.dart';

/// @nodoc
const IID_IReferenceClock = '{56A86897-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IReferenceClock extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IReferenceClock(Pointer<COMObject> ptr) : super(ptr);

  int GetTime(
    Pointer<Int64> pTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pTime,
          )>()(
        ptr.ref.lpVtbl,
        pTime,
      );

  int AdviseTime(
    int baseTime,
    int streamTime,
    int hEvent,
    Pointer<IntPtr> pdwAdviseCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 baseTime,
            Int64 streamTime,
            IntPtr hEvent,
            Pointer<IntPtr> pdwAdviseCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int baseTime,
            int streamTime,
            int hEvent,
            Pointer<IntPtr> pdwAdviseCookie,
          )>()(
        ptr.ref.lpVtbl,
        baseTime,
        streamTime,
        hEvent,
        pdwAdviseCookie,
      );

  int AdvisePeriodic(
    int startTime,
    int periodTime,
    int hSemaphore,
    Pointer<IntPtr> pdwAdviseCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 startTime,
            Int64 periodTime,
            IntPtr hSemaphore,
            Pointer<IntPtr> pdwAdviseCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int startTime,
            int periodTime,
            int hSemaphore,
            Pointer<IntPtr> pdwAdviseCookie,
          )>()(
        ptr.ref.lpVtbl,
        startTime,
        periodTime,
        hSemaphore,
        pdwAdviseCookie,
      );

  int Unadvise(
    int dwAdviseCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwAdviseCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAdviseCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwAdviseCookie,
      );
}
