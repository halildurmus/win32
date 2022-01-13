// IEventServerTrace.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IEventServerTrace = '{9A9F12B8-80AF-47AB-A579-35EA57725370}';

/// {@category Interface}
/// {@category com}
class IEventServerTrace extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IEventServerTrace(Pointer<COMObject> ptr) : super(ptr);

  int StartTraceGuid(
    Pointer<Utf16> bstrguidEvent,
    Pointer<Utf16> bstrguidFilter,
    int lPidFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrguidEvent,
            Pointer<Utf16> bstrguidFilter,
            Int32 lPidFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrguidEvent,
            Pointer<Utf16> bstrguidFilter,
            int lPidFilter,
          )>()(
        ptr.ref.lpVtbl,
        bstrguidEvent,
        bstrguidFilter,
        lPidFilter,
      );

  int StopTraceGuid(
    Pointer<Utf16> bstrguidEvent,
    Pointer<Utf16> bstrguidFilter,
    int lPidFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrguidEvent,
            Pointer<Utf16> bstrguidFilter,
            Int32 lPidFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrguidEvent,
            Pointer<Utf16> bstrguidFilter,
            int lPidFilter,
          )>()(
        ptr.ref.lpVtbl,
        bstrguidEvent,
        bstrguidFilter,
        lPidFilter,
      );

  int EnumTraceGuid(
    Pointer<Int32> plCntGuids,
    Pointer<Pointer<Utf16>> pbstrGuidList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCntGuids,
            Pointer<Pointer<Utf16>> pbstrGuidList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCntGuids,
            Pointer<Pointer<Utf16>> pbstrGuidList,
          )>()(
        ptr.ref.lpVtbl,
        plCntGuids,
        pbstrGuidList,
      );
}
