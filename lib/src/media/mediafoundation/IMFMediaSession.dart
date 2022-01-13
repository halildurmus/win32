// IMFMediaSession.dart

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

import '../../media/mediafoundation/IMFMediaEventGenerator.dart';
import '../../media/mediafoundation/IMFTopology.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFClock.dart';

/// @nodoc
const IID_IMFMediaSession = '{90377834-21D0-4DEE-8214-BA2E3E6C1127}';

/// {@category Interface}
/// {@category com}
class IMFMediaSession extends IMFMediaEventGenerator {
  // vtable begins at 7, is 10 entries long.
  IMFMediaSession(Pointer<COMObject> ptr) : super(ptr);

  int SetTopology(
    int dwSetTopologyFlags,
    Pointer<COMObject> pTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSetTopologyFlags,
            Pointer<COMObject> pTopology,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSetTopologyFlags,
            Pointer<COMObject> pTopology,
          )>()(
        ptr.ref.lpVtbl,
        dwSetTopologyFlags,
        pTopology,
      );

  int ClearTopologies() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int Start(
    Pointer<GUID> pguidTimeFormat,
    Pointer<PROPVARIANT> pvarStartPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidTimeFormat,
            Pointer<PROPVARIANT> pvarStartPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidTimeFormat,
            Pointer<PROPVARIANT> pvarStartPosition,
          )>()(
        ptr.ref.lpVtbl,
        pguidTimeFormat,
        pvarStartPosition,
      );

  int Pause() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int GetClock(
    Pointer<Pointer<COMObject>> ppClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClock,
          )>()(
        ptr.ref.lpVtbl,
        ppClock,
      );

  int GetSessionCapabilities(
    Pointer<Uint32> pdwCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCaps,
          )>()(
        ptr.ref.lpVtbl,
        pdwCaps,
      );

  int GetFullTopology(
    int dwGetFullTopologyFlags,
    int TopoId,
    Pointer<Pointer<COMObject>> ppFullTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwGetFullTopologyFlags,
            Uint64 TopoId,
            Pointer<Pointer<COMObject>> ppFullTopology,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwGetFullTopologyFlags,
            int TopoId,
            Pointer<Pointer<COMObject>> ppFullTopology,
          )>()(
        ptr.ref.lpVtbl,
        dwGetFullTopologyFlags,
        TopoId,
        ppFullTopology,
      );
}
