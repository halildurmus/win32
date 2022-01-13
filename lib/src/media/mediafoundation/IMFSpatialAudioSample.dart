// IMFSpatialAudioSample.dart

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

import '../../media/mediafoundation/IMFSample.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFSpatialAudioObjectBuffer.dart';

/// @nodoc
const IID_IMFSpatialAudioSample = '{ABF28A9B-3393-4290-BA79-5FFC46D986B2}';

/// {@category Interface}
/// {@category com}
class IMFSpatialAudioSample extends IMFSample {
  // vtable begins at 47, is 3 entries long.
  IMFSpatialAudioSample(Pointer<COMObject> ptr) : super(ptr);

  int GetObjectCount(
    Pointer<Uint32> pdwObjectCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwObjectCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwObjectCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwObjectCount,
      );

  int AddSpatialAudioObject(
    Pointer<COMObject> pAudioObjBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAudioObjBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAudioObjBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pAudioObjBuffer,
      );

  int GetSpatialAudioObjectByIndex(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppAudioObjBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppAudioObjBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppAudioObjBuffer,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppAudioObjBuffer,
      );
}
