// IDVEnc.dart

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

/// @nodoc
const IID_IDVEnc = '{D18E17A0-AACB-11D0-AFB0-00AA00B67A42}';

/// {@category Interface}
/// {@category com}
class IDVEnc extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDVEnc(Pointer<COMObject> ptr) : super(ptr);

  int get_IFormatResolution(
    Pointer<Int32> VideoFormat,
    Pointer<Int32> DVFormat,
    Pointer<Int32> Resolution,
    int fDVInfo,
    Pointer<DVINFO> sDVInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> VideoFormat,
            Pointer<Int32> DVFormat,
            Pointer<Int32> Resolution,
            Uint8 fDVInfo,
            Pointer<DVINFO> sDVInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> VideoFormat,
            Pointer<Int32> DVFormat,
            Pointer<Int32> Resolution,
            int fDVInfo,
            Pointer<DVINFO> sDVInfo,
          )>()(
        ptr.ref.lpVtbl,
        VideoFormat,
        DVFormat,
        Resolution,
        fDVInfo,
        sDVInfo,
      );

  int put_IFormatResolution(
    int VideoFormat,
    int DVFormat,
    int Resolution,
    int fDVInfo,
    Pointer<DVINFO> sDVInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 VideoFormat,
            Int32 DVFormat,
            Int32 Resolution,
            Uint8 fDVInfo,
            Pointer<DVINFO> sDVInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int VideoFormat,
            int DVFormat,
            int Resolution,
            int fDVInfo,
            Pointer<DVINFO> sDVInfo,
          )>()(
        ptr.ref.lpVtbl,
        VideoFormat,
        DVFormat,
        Resolution,
        fDVInfo,
        sDVInfo,
      );
}
