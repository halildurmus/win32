// IMFMediaStream.dart

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

import '../../media/mediafoundation/IMFMediaEventGenerator.dart';
import '../../media/mediafoundation/IMFMediaSource.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFStreamDescriptor.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFMediaStream = '{D182108F-4EC6-443F-AA42-A71106EC825F}';

/// {@category Interface}
/// {@category com}
class IMFMediaStream extends IMFMediaEventGenerator {
  // vtable begins at 7, is 3 entries long.
  IMFMediaStream(Pointer<COMObject> ptr) : super(ptr);

  int GetMediaSource(
    Pointer<Pointer<COMObject>> ppMediaSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaSource,
          )>()(
        ptr.ref.lpVtbl,
        ppMediaSource,
      );

  int GetStreamDescriptor(
    Pointer<Pointer<COMObject>> ppStreamDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStreamDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStreamDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        ppStreamDescriptor,
      );

  int RequestSample(
    Pointer<COMObject> pToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pToken,
          )>()(
        ptr.ref.lpVtbl,
        pToken,
      );
}
