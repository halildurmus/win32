// IMFTimecodeTranslate.dart

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
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';

/// @nodoc
const IID_IMFTimecodeTranslate = '{AB9D8661-F7E8-4EF4-9861-89F334F94E74}';

/// {@category Interface}
/// {@category com}
class IMFTimecodeTranslate extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFTimecodeTranslate(Pointer<COMObject> ptr) : super(ptr);

  int BeginConvertTimecodeToHNS(
    Pointer<PROPVARIANT> pPropVarTimecode,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> pPropVarTimecode,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> pPropVarTimecode,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        pPropVarTimecode,
        pCallback,
        punkState,
      );

  int EndConvertTimecodeToHNS(
    Pointer<COMObject> pResult,
    Pointer<Int64> phnsTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Int64> phnsTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Int64> phnsTime,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        phnsTime,
      );

  int BeginConvertHNSToTimecode(
    int hnsTime,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 hnsTime,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsTime,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        hnsTime,
        pCallback,
        punkState,
      );

  int EndConvertHNSToTimecode(
    Pointer<COMObject> pResult,
    Pointer<PROPVARIANT> pPropVarTimecode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<PROPVARIANT> pPropVarTimecode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<PROPVARIANT> pPropVarTimecode,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        pPropVarTimecode,
      );
}
