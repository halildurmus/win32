// IWMFrameInterpProps.dart

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
const IID_IWMFrameInterpProps = '{4C06BB9B-626C-4614-8329-CC6A21B93FA0}';

/// {@category Interface}
/// {@category com}
class IWMFrameInterpProps extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWMFrameInterpProps(Pointer<COMObject> ptr) : super(ptr);

  int SetFrameRateIn(
    int lFrameRate,
    int lScale,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFrameRate,
            Int32 lScale,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFrameRate,
            int lScale,
          )>()(
        ptr.ref.lpVtbl,
        lFrameRate,
        lScale,
      );

  int SetFrameRateOut(
    int lFrameRate,
    int lScale,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFrameRate,
            Int32 lScale,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFrameRate,
            int lScale,
          )>()(
        ptr.ref.lpVtbl,
        lFrameRate,
        lScale,
      );

  int SetFrameInterpEnabled(
    int bFIEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bFIEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bFIEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bFIEnabled,
      );

  int SetComplexityLevel(
    int iComplexity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iComplexity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iComplexity,
          )>()(
        ptr.ref.lpVtbl,
        iComplexity,
      );
}
