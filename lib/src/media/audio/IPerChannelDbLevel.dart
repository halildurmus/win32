// IPerChannelDbLevel.dart

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
const IID_IPerChannelDbLevel = '{C2F8E001-F205-4BC9-99BC-C13B1E048CCB}';

/// {@category Interface}
/// {@category com}
class IPerChannelDbLevel extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IPerChannelDbLevel(Pointer<COMObject> ptr) : super(ptr);

  int GetChannelCount(
    Pointer<Uint32> pcChannels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcChannels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcChannels,
          )>()(
        ptr.ref.lpVtbl,
        pcChannels,
      );

  int GetLevelRange(
    int nChannel,
    Pointer<Float> pfMinLevelDB,
    Pointer<Float> pfMaxLevelDB,
    Pointer<Float> pfStepping,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nChannel,
            Pointer<Float> pfMinLevelDB,
            Pointer<Float> pfMaxLevelDB,
            Pointer<Float> pfStepping,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nChannel,
            Pointer<Float> pfMinLevelDB,
            Pointer<Float> pfMaxLevelDB,
            Pointer<Float> pfStepping,
          )>()(
        ptr.ref.lpVtbl,
        nChannel,
        pfMinLevelDB,
        pfMaxLevelDB,
        pfStepping,
      );

  int GetLevel(
    int nChannel,
    Pointer<Float> pfLevelDB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nChannel,
            Pointer<Float> pfLevelDB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nChannel,
            Pointer<Float> pfLevelDB,
          )>()(
        ptr.ref.lpVtbl,
        nChannel,
        pfLevelDB,
      );

  int SetLevel(
    int nChannel,
    double fLevelDB,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nChannel,
            Float fLevelDB,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nChannel,
            double fLevelDB,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        nChannel,
        fLevelDB,
        pguidEventContext,
      );

  int SetLevelUniform(
    double fLevelDB,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float fLevelDB,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double fLevelDB,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        fLevelDB,
        pguidEventContext,
      );

  int SetLevelAllChannels(
    Pointer<Float> aLevelsDB,
    int cChannels,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> aLevelsDB,
            Uint32 cChannels,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> aLevelsDB,
            int cChannels,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        aLevelsDB,
        cChannels,
        pguidEventContext,
      );
}
