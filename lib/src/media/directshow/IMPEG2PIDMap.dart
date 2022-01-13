// IMPEG2PIDMap.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IEnumPIDMap.dart';

/// @nodoc
const IID_IMPEG2PIDMap = '{AFB6C2A1-2C41-11D3-8A60-0000F81E0E4A}';

/// {@category Interface}
/// {@category com}
class IMPEG2PIDMap extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMPEG2PIDMap(Pointer<COMObject> ptr) : super(ptr);

  int MapPID(
    int culPID,
    Pointer<Uint32> pulPID,
    int MediaSampleContent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 culPID,
            Pointer<Uint32> pulPID,
            Int32 MediaSampleContent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int culPID,
            Pointer<Uint32> pulPID,
            int MediaSampleContent,
          )>()(
        ptr.ref.lpVtbl,
        culPID,
        pulPID,
        MediaSampleContent,
      );

  int UnmapPID(
    int culPID,
    Pointer<Uint32> pulPID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 culPID,
            Pointer<Uint32> pulPID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int culPID,
            Pointer<Uint32> pulPID,
          )>()(
        ptr.ref.lpVtbl,
        culPID,
        pulPID,
      );

  int EnumPIDMap(
    Pointer<Pointer<COMObject>> pIEnumPIDMap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pIEnumPIDMap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pIEnumPIDMap,
          )>()(
        ptr.ref.lpVtbl,
        pIEnumPIDMap,
      );
}
