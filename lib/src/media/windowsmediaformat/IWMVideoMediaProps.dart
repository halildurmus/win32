// IWMVideoMediaProps.dart

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

import '../../media/windowsmediaformat/IWMMediaProps.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMVideoMediaProps = '{96406BCF-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMVideoMediaProps extends IWMMediaProps {
  // vtable begins at 6, is 4 entries long.
  IWMVideoMediaProps(Pointer<COMObject> ptr) : super(ptr);

  int GetMaxKeyFrameSpacing(
    Pointer<Int64> pllTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pllTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pllTime,
          )>()(
        ptr.ref.lpVtbl,
        pllTime,
      );

  int SetMaxKeyFrameSpacing(
    int llTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 llTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int llTime,
          )>()(
        ptr.ref.lpVtbl,
        llTime,
      );

  int GetQuality(
    Pointer<Uint32> pdwQuality,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwQuality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwQuality,
          )>()(
        ptr.ref.lpVtbl,
        pdwQuality,
      );

  int SetQuality(
    int dwQuality,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwQuality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwQuality,
          )>()(
        ptr.ref.lpVtbl,
        dwQuality,
      );
}
