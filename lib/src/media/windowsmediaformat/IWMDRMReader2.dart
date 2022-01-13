// IWMDRMReader2.dart

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

import '../../media/windowsmediaformat/IWMDRMReader.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMDRMReader2 = '{BEFE7A75-9F1D-4075-B9D9-A3C37BDA49A0}';

/// {@category Interface}
/// {@category com}
class IWMDRMReader2 extends IWMDRMReader {
  // vtable begins at 11, is 4 entries long.
  IWMDRMReader2(Pointer<COMObject> ptr) : super(ptr);

  int SetEvaluateOutputLevelLicenses(
    int fEvaluate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEvaluate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEvaluate,
          )>()(
        ptr.ref.lpVtbl,
        fEvaluate,
      );

  int GetPlayOutputLevels(
    Pointer<DRM_PLAY_OPL> pPlayOPL,
    Pointer<Uint32> pcbLength,
    Pointer<Uint32> pdwMinAppComplianceLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DRM_PLAY_OPL> pPlayOPL,
            Pointer<Uint32> pcbLength,
            Pointer<Uint32> pdwMinAppComplianceLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DRM_PLAY_OPL> pPlayOPL,
            Pointer<Uint32> pcbLength,
            Pointer<Uint32> pdwMinAppComplianceLevel,
          )>()(
        ptr.ref.lpVtbl,
        pPlayOPL,
        pcbLength,
        pdwMinAppComplianceLevel,
      );

  int GetCopyOutputLevels(
    Pointer<DRM_COPY_OPL> pCopyOPL,
    Pointer<Uint32> pcbLength,
    Pointer<Uint32> pdwMinAppComplianceLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DRM_COPY_OPL> pCopyOPL,
            Pointer<Uint32> pcbLength,
            Pointer<Uint32> pdwMinAppComplianceLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DRM_COPY_OPL> pCopyOPL,
            Pointer<Uint32> pcbLength,
            Pointer<Uint32> pdwMinAppComplianceLevel,
          )>()(
        ptr.ref.lpVtbl,
        pCopyOPL,
        pcbLength,
        pdwMinAppComplianceLevel,
      );

  int TryNextLicense() => ptr.ref.lpVtbl.value
          .elementAt(14)
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
