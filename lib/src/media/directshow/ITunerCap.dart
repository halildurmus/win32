// ITunerCap.dart

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
const IID_ITunerCap = '{E60DFA45-8D56-4E65-A8AB-D6BE9412C249}';

/// {@category Interface}
/// {@category com}
class ITunerCap extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITunerCap(Pointer<COMObject> ptr) : super(ptr);

  int get_SupportedNetworkTypes(
    int ulcNetworkTypesMax,
    Pointer<Uint32> pulcNetworkTypes,
    Pointer<GUID> pguidNetworkTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulcNetworkTypesMax,
            Pointer<Uint32> pulcNetworkTypes,
            Pointer<GUID> pguidNetworkTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulcNetworkTypesMax,
            Pointer<Uint32> pulcNetworkTypes,
            Pointer<GUID> pguidNetworkTypes,
          )>()(
        ptr.ref.lpVtbl,
        ulcNetworkTypesMax,
        pulcNetworkTypes,
        pguidNetworkTypes,
      );

  int get_SupportedVideoFormats(
    Pointer<Uint32> pulAMTunerModeType,
    Pointer<Uint32> pulAnalogVideoStandard,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
          .elementAt(5)
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
