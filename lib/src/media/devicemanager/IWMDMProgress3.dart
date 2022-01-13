// IWMDMProgress3.dart

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

import '../../media/devicemanager/IWMDMProgress2.dart';
import '../../media/devicemanager/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMProgress3 = '{21DE01CB-3BB4-4929-B21A-17AF3F80F658}';

/// {@category Interface}
/// {@category com}
class IWMDMProgress3 extends IWMDMProgress2 {
  // vtable begins at 7, is 3 entries long.
  IWMDMProgress3(Pointer<COMObject> ptr) : super(ptr);

  int Begin3(
    GUID EventId,
    int dwEstimatedTicks,
    Pointer<OPAQUECOMMAND> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID EventId,
            Uint32 dwEstimatedTicks,
            Pointer<OPAQUECOMMAND> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID EventId,
            int dwEstimatedTicks,
            Pointer<OPAQUECOMMAND> pContext,
          )>()(
        ptr.ref.lpVtbl,
        EventId,
        dwEstimatedTicks,
        pContext,
      );

  int Progress3(
    GUID EventId,
    int dwTranspiredTicks,
    Pointer<OPAQUECOMMAND> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID EventId,
            Uint32 dwTranspiredTicks,
            Pointer<OPAQUECOMMAND> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID EventId,
            int dwTranspiredTicks,
            Pointer<OPAQUECOMMAND> pContext,
          )>()(
        ptr.ref.lpVtbl,
        EventId,
        dwTranspiredTicks,
        pContext,
      );

  int End3(
    GUID EventId,
    int hrCompletionCode,
    Pointer<OPAQUECOMMAND> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID EventId,
            Int32 hrCompletionCode,
            Pointer<OPAQUECOMMAND> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID EventId,
            int hrCompletionCode,
            Pointer<OPAQUECOMMAND> pContext,
          )>()(
        ptr.ref.lpVtbl,
        EventId,
        hrCompletionCode,
        pContext,
      );
}
