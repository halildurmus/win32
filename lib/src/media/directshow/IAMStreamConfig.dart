// IAMStreamConfig.dart

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
const IID_IAMStreamConfig = '{C6E13340-30AC-11D0-A18C-00A0C9118956}';

/// {@category Interface}
/// {@category com}
class IAMStreamConfig extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAMStreamConfig(Pointer<COMObject> ptr) : super(ptr);

  int SetFormat(
    Pointer<AM_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        pmt,
      );

  int GetFormat(
    Pointer<Pointer<AM_MEDIA_TYPE>> ppmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppmt,
          )>()(
        ptr.ref.lpVtbl,
        ppmt,
      );

  int GetNumberOfCapabilities(
    Pointer<Int32> piCount,
    Pointer<Int32> piSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> piCount,
            Pointer<Int32> piSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> piCount,
            Pointer<Int32> piSize,
          )>()(
        ptr.ref.lpVtbl,
        piCount,
        piSize,
      );

  int GetStreamCaps(
    int iIndex,
    Pointer<Pointer<AM_MEDIA_TYPE>> ppmt,
    Pointer<Uint8> pSCC,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iIndex,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppmt,
            Pointer<Uint8> pSCC,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppmt,
            Pointer<Uint8> pSCC,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        ppmt,
        pSCC,
      );
}
