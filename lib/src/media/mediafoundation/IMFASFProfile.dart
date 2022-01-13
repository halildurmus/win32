// IMFASFProfile.dart

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

import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFASFStreamConfig.dart';
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../media/mediafoundation/IMFASFMutualExclusion.dart';
import '../../media/mediafoundation/IMFASFStreamPrioritization.dart';
import '../../media/mediafoundation/IMFASFProfile.dart';

/// @nodoc
const IID_IMFASFProfile = '{D267BF6A-028B-4E0D-903D-43F0EF82D0D4}';

/// {@category Interface}
/// {@category com}
class IMFASFProfile extends IMFAttributes {
  // vtable begins at 33, is 16 entries long.
  IMFASFProfile(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamCount(
    Pointer<Uint32> pcStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcStreams,
          )>()(
        ptr.ref.lpVtbl,
        pcStreams,
      );

  int GetStream(
    int dwStreamIndex,
    Pointer<Uint16> pwStreamNumber,
    Pointer<Pointer<COMObject>> ppIStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<Uint16> pwStreamNumber,
            Pointer<Pointer<COMObject>> ppIStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<Uint16> pwStreamNumber,
            Pointer<Pointer<COMObject>> ppIStream,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pwStreamNumber,
        ppIStream,
      );

  int GetStreamByNumber(
    int wStreamNumber,
    Pointer<Pointer<COMObject>> ppIStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Pointer<Pointer<COMObject>> ppIStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            Pointer<Pointer<COMObject>> ppIStream,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        ppIStream,
      );

  int SetStream(
    Pointer<COMObject> pIStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStream,
          )>()(
        ptr.ref.lpVtbl,
        pIStream,
      );

  int RemoveStream(
    int wStreamNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
      );

  int CreateStream(
    Pointer<COMObject> pIMediaType,
    Pointer<Pointer<COMObject>> ppIStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIMediaType,
            Pointer<Pointer<COMObject>> ppIStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIMediaType,
            Pointer<Pointer<COMObject>> ppIStream,
          )>()(
        ptr.ref.lpVtbl,
        pIMediaType,
        ppIStream,
      );

  int GetMutualExclusionCount(
    Pointer<Uint32> pcMutexs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcMutexs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcMutexs,
          )>()(
        ptr.ref.lpVtbl,
        pcMutexs,
      );

  int GetMutualExclusion(
    int dwMutexIndex,
    Pointer<Pointer<COMObject>> ppIMutex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMutexIndex,
            Pointer<Pointer<COMObject>> ppIMutex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMutexIndex,
            Pointer<Pointer<COMObject>> ppIMutex,
          )>()(
        ptr.ref.lpVtbl,
        dwMutexIndex,
        ppIMutex,
      );

  int AddMutualExclusion(
    Pointer<COMObject> pIMutex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIMutex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIMutex,
          )>()(
        ptr.ref.lpVtbl,
        pIMutex,
      );

  int RemoveMutualExclusion(
    int dwMutexIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMutexIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMutexIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwMutexIndex,
      );

  int CreateMutualExclusion(
    Pointer<Pointer<COMObject>> ppIMutex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMutex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMutex,
          )>()(
        ptr.ref.lpVtbl,
        ppIMutex,
      );

  int GetStreamPrioritization(
    Pointer<Pointer<COMObject>> ppIStreamPrioritization,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIStreamPrioritization,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIStreamPrioritization,
          )>()(
        ptr.ref.lpVtbl,
        ppIStreamPrioritization,
      );

  int AddStreamPrioritization(
    Pointer<COMObject> pIStreamPrioritization,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStreamPrioritization,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStreamPrioritization,
          )>()(
        ptr.ref.lpVtbl,
        pIStreamPrioritization,
      );

  int RemoveStreamPrioritization() => ptr.ref.lpVtbl.value
          .elementAt(46)
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

  int CreateStreamPrioritization(
    Pointer<Pointer<COMObject>> ppIStreamPrioritization,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIStreamPrioritization,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIStreamPrioritization,
          )>()(
        ptr.ref.lpVtbl,
        ppIStreamPrioritization,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppIProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIProfile,
          )>()(
        ptr.ref.lpVtbl,
        ppIProfile,
      );
}
