// IMFQualityManager.dart

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
import '../../media/mediafoundation/IMFTopology.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFPresentationClock.dart';
import '../../media/mediafoundation/IMFTopologyNode.dart';
import '../../media/mediafoundation/IMFSample.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFMediaEvent.dart';

/// @nodoc
const IID_IMFQualityManager = '{8D009D86-5B9F-4115-B1FC-9F80D52AB8AB}';

/// {@category Interface}
/// {@category com}
class IMFQualityManager extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFQualityManager(Pointer<COMObject> ptr) : super(ptr);

  int NotifyTopology(
    Pointer<COMObject> pTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTopology,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTopology,
          )>()(
        ptr.ref.lpVtbl,
        pTopology,
      );

  int NotifyPresentationClock(
    Pointer<COMObject> pClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int NotifyProcessInput(
    Pointer<COMObject> pNode,
    int lInputIndex,
    Pointer<COMObject> pSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNode,
            Int32 lInputIndex,
            Pointer<COMObject> pSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNode,
            int lInputIndex,
            Pointer<COMObject> pSample,
          )>()(
        ptr.ref.lpVtbl,
        pNode,
        lInputIndex,
        pSample,
      );

  int NotifyProcessOutput(
    Pointer<COMObject> pNode,
    int lOutputIndex,
    Pointer<COMObject> pSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNode,
            Int32 lOutputIndex,
            Pointer<COMObject> pSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNode,
            int lOutputIndex,
            Pointer<COMObject> pSample,
          )>()(
        ptr.ref.lpVtbl,
        pNode,
        lOutputIndex,
        pSample,
      );

  int NotifyQualityEvent(
    Pointer<COMObject> pObject,
    Pointer<COMObject> pEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObject,
            Pointer<COMObject> pEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObject,
            Pointer<COMObject> pEvent,
          )>()(
        ptr.ref.lpVtbl,
        pObject,
        pEvent,
      );

  int Shutdown() => ptr.ref.lpVtbl.value
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
}
