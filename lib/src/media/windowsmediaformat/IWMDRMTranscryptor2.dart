// IWMDRMTranscryptor2.dart

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

import '../../media/windowsmediaformat/IWMDRMTranscryptor.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMDRMTranscryptor2 = '{E0DA439F-D331-496A-BECE-18E5BAC5DD23}';

/// {@category Interface}
/// {@category com}
class IWMDRMTranscryptor2 extends IWMDRMTranscryptor {
  // vtable begins at 7, is 4 entries long.
  IWMDRMTranscryptor2(Pointer<COMObject> ptr) : super(ptr);

  int SeekEx(
    int cnsStartTime,
    int cnsDuration,
    double flRate,
    int fIncludeFileHeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsStartTime,
            Uint64 cnsDuration,
            Float flRate,
            Int32 fIncludeFileHeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsStartTime,
            int cnsDuration,
            double flRate,
            int fIncludeFileHeader,
          )>()(
        ptr.ref.lpVtbl,
        cnsStartTime,
        cnsDuration,
        flRate,
        fIncludeFileHeader,
      );

  int ZeroAdjustTimestamps(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int GetSeekStartTime(
    Pointer<Uint64> pcnsTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pcnsTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pcnsTime,
          )>()(
        ptr.ref.lpVtbl,
        pcnsTime,
      );

  int GetDuration(
    Pointer<Uint64> pcnsDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pcnsDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pcnsDuration,
          )>()(
        ptr.ref.lpVtbl,
        pcnsDuration,
      );
}
