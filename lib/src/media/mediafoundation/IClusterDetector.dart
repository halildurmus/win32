// IClusterDetector.dart

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
import '../../media/mediafoundation/IToc.dart';

/// @nodoc
const IID_IClusterDetector = '{3F07F7B7-C680-41D9-9423-915107EC9FF9}';

/// {@category Interface}
/// {@category com}
class IClusterDetector extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IClusterDetector(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int wBaseEntryLevel,
    int wClusterEntryLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wBaseEntryLevel,
            Uint16 wClusterEntryLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wBaseEntryLevel,
            int wClusterEntryLevel,
          )>()(
        ptr.ref.lpVtbl,
        wBaseEntryLevel,
        wClusterEntryLevel,
      );

  int Detect(
    int dwMaxNumClusters,
    double fMinClusterDuration,
    double fMaxClusterDuration,
    Pointer<COMObject> pSrcToc,
    Pointer<Pointer<COMObject>> ppDstToc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMaxNumClusters,
            Float fMinClusterDuration,
            Float fMaxClusterDuration,
            Pointer<COMObject> pSrcToc,
            Pointer<Pointer<COMObject>> ppDstToc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMaxNumClusters,
            double fMinClusterDuration,
            double fMaxClusterDuration,
            Pointer<COMObject> pSrcToc,
            Pointer<Pointer<COMObject>> ppDstToc,
          )>()(
        ptr.ref.lpVtbl,
        dwMaxNumClusters,
        fMinClusterDuration,
        fMaxClusterDuration,
        pSrcToc,
        ppDstToc,
      );
}
