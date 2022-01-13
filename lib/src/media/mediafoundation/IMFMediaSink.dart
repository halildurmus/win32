// IMFMediaSink.dart

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
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../media/mediafoundation/IMFStreamSink.dart';
import '../../media/mediafoundation/IMFPresentationClock.dart';

/// @nodoc
const IID_IMFMediaSink = '{6EF2A660-47C0-4666-B13D-CBB717F2FA2C}';

/// {@category Interface}
/// {@category com}
class IMFMediaSink extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IMFMediaSink(Pointer<COMObject> ptr) : super(ptr);

  int GetCharacteristics(
    Pointer<Uint32> pdwCharacteristics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCharacteristics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCharacteristics,
          )>()(
        ptr.ref.lpVtbl,
        pdwCharacteristics,
      );

  int AddStreamSink(
    int dwStreamSinkIdentifier,
    Pointer<COMObject> pMediaType,
    Pointer<Pointer<COMObject>> ppStreamSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamSinkIdentifier,
            Pointer<COMObject> pMediaType,
            Pointer<Pointer<COMObject>> ppStreamSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamSinkIdentifier,
            Pointer<COMObject> pMediaType,
            Pointer<Pointer<COMObject>> ppStreamSink,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamSinkIdentifier,
        pMediaType,
        ppStreamSink,
      );

  int RemoveStreamSink(
    int dwStreamSinkIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamSinkIdentifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamSinkIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamSinkIdentifier,
      );

  int GetStreamSinkCount(
    Pointer<Uint32> pcStreamSinkCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcStreamSinkCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcStreamSinkCount,
          )>()(
        ptr.ref.lpVtbl,
        pcStreamSinkCount,
      );

  int GetStreamSinkByIndex(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppStreamSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppStreamSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppStreamSink,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppStreamSink,
      );

  int GetStreamSinkById(
    int dwStreamSinkIdentifier,
    Pointer<Pointer<COMObject>> ppStreamSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamSinkIdentifier,
            Pointer<Pointer<COMObject>> ppStreamSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamSinkIdentifier,
            Pointer<Pointer<COMObject>> ppStreamSink,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamSinkIdentifier,
        ppStreamSink,
      );

  int SetPresentationClock(
    Pointer<COMObject> pPresentationClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPresentationClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPresentationClock,
          )>()(
        ptr.ref.lpVtbl,
        pPresentationClock,
      );

  int GetPresentationClock(
    Pointer<Pointer<COMObject>> ppPresentationClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPresentationClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPresentationClock,
          )>()(
        ptr.ref.lpVtbl,
        ppPresentationClock,
      );

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
