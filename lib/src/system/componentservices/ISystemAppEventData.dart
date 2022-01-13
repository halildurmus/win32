// ISystemAppEventData.dart

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
const IID_ISystemAppEventData = '{D6D48A3C-D5C5-49E7-8C74-99E4889ED52F}';

/// {@category Interface}
/// {@category com}
class ISystemAppEventData extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISystemAppEventData(Pointer<COMObject> ptr) : super(ptr);

  int Startup() => ptr.ref.lpVtbl.value
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

  int OnDataChanged(
    int dwPID,
    int dwMask,
    int dwNumberSinks,
    Pointer<Utf16> bstrDwMethodMask,
    int dwReason,
    int u64TraceHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPID,
            Uint32 dwMask,
            Uint32 dwNumberSinks,
            Pointer<Utf16> bstrDwMethodMask,
            Uint32 dwReason,
            Uint64 u64TraceHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPID,
            int dwMask,
            int dwNumberSinks,
            Pointer<Utf16> bstrDwMethodMask,
            int dwReason,
            int u64TraceHandle,
          )>()(
        ptr.ref.lpVtbl,
        dwPID,
        dwMask,
        dwNumberSinks,
        bstrDwMethodMask,
        dwReason,
        u64TraceHandle,
      );
}
