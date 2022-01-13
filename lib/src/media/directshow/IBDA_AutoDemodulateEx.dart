// IBDA_AutoDemodulateEx.dart

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

import '../../media/directshow/IBDA_AutoDemodulate.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDA_AutoDemodulateEx = '{34518D13-1182-48E6-B28F-B24987787326}';

/// {@category Interface}
/// {@category com}
class IBDA_AutoDemodulateEx extends IBDA_AutoDemodulate {
  // vtable begins at 4, is 3 entries long.
  IBDA_AutoDemodulateEx(Pointer<COMObject> ptr) : super(ptr);

  int get_SupportedDeviceNodeTypes(
    int ulcDeviceNodeTypesMax,
    Pointer<Uint32> pulcDeviceNodeTypes,
    Pointer<GUID> pguidDeviceNodeTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulcDeviceNodeTypesMax,
            Pointer<Uint32> pulcDeviceNodeTypes,
            Pointer<GUID> pguidDeviceNodeTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulcDeviceNodeTypesMax,
            Pointer<Uint32> pulcDeviceNodeTypes,
            Pointer<GUID> pguidDeviceNodeTypes,
          )>()(
        ptr.ref.lpVtbl,
        ulcDeviceNodeTypesMax,
        pulcDeviceNodeTypes,
        pguidDeviceNodeTypes,
      );

  int get_SupportedVideoFormats(
    Pointer<Uint32> pulAMTunerModeType,
    Pointer<Uint32> pulAnalogVideoStandard,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulAMTunerModeType,
            Pointer<Uint32> pulAnalogVideoStandard,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulAMTunerModeType,
            Pointer<Uint32> pulAnalogVideoStandard,
          )>()(
        ptr.ref.lpVtbl,
        pulAMTunerModeType,
        pulAnalogVideoStandard,
      );

  int get_AuxInputCount(
    Pointer<Uint32> pulCompositeCount,
    Pointer<Uint32> pulSvideoCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulCompositeCount,
            Pointer<Uint32> pulSvideoCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulCompositeCount,
            Pointer<Uint32> pulSvideoCount,
          )>()(
        ptr.ref.lpVtbl,
        pulCompositeCount,
        pulSvideoCount,
      );
}
