// IMFTranscodeSinkInfoProvider.dart

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
import '../../media/mediafoundation/IMFActivate.dart';
import '../../media/mediafoundation/IMFTranscodeProfile.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFTranscodeSinkInfoProvider =
    '{8CFFCD2E-5A03-4A3A-AFF7-EDCD107C620E}';

/// {@category Interface}
/// {@category com}
class IMFTranscodeSinkInfoProvider extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFTranscodeSinkInfoProvider(Pointer<COMObject> ptr) : super(ptr);

  int SetOutputFile(
    Pointer<Utf16> pwszFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszFileName,
          )>()(
        ptr.ref.lpVtbl,
        pwszFileName,
      );

  int SetOutputByteStream(
    Pointer<COMObject> pByteStreamActivate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pByteStreamActivate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pByteStreamActivate,
          )>()(
        ptr.ref.lpVtbl,
        pByteStreamActivate,
      );

  int SetProfile(
    Pointer<COMObject> pProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProfile,
          )>()(
        ptr.ref.lpVtbl,
        pProfile,
      );

  int GetSinkInfo(
    Pointer<MF_TRANSCODE_SINK_INFO> pSinkInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MF_TRANSCODE_SINK_INFO> pSinkInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MF_TRANSCODE_SINK_INFO> pSinkInfo,
          )>()(
        ptr.ref.lpVtbl,
        pSinkInfo,
      );
}
