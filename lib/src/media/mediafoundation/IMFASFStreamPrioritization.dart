// IMFASFStreamPrioritization.dart

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
import '../../media/mediafoundation/IMFASFStreamPrioritization.dart';

/// @nodoc
const IID_IMFASFStreamPrioritization = '{699BDC27-BBAF-49FF-8E38-9C39C9B5E088}';

/// {@category Interface}
/// {@category com}
class IMFASFStreamPrioritization extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFASFStreamPrioritization(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamCount(
    Pointer<Uint32> pdwStreamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStreamCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStreamCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwStreamCount,
      );

  int GetStream(
    int dwStreamIndex,
    Pointer<Uint16> pwStreamNumber,
    Pointer<Uint16> pwStreamFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<Uint16> pwStreamNumber,
            Pointer<Uint16> pwStreamFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<Uint16> pwStreamNumber,
            Pointer<Uint16> pwStreamFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pwStreamNumber,
        pwStreamFlags,
      );

  int AddStream(
    int wStreamNumber,
    int wStreamFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Uint16 wStreamFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            int wStreamFlags,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        wStreamFlags,
      );

  int RemoveStream(
    int dwStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppIStreamPrioritization,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIStreamPrioritization,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIStreamPrioritization,
          )>()(
        ptr.ref.lpVtbl,
        ppIStreamPrioritization,
      );
}
