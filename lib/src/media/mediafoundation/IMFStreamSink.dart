// IMFStreamSink.dart

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
import '../../media/mediafoundation/IMFMediaSink.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaTypeHandler.dart';
import '../../media/mediafoundation/IMFSample.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFStreamSink = '{0A97B3CF-8E7C-4A3D-8F8C-0C843DC247FB}';

/// {@category Interface}
/// {@category com}
class IMFStreamSink extends IMFMediaEventGenerator {
  // vtable begins at 7, is 6 entries long.
  IMFStreamSink(Pointer<COMObject> ptr) : super(ptr);

  int GetMediaSink(
    Pointer<Pointer<COMObject>> ppMediaSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaSink,
          )>()(
        ptr.ref.lpVtbl,
        ppMediaSink,
      );

  int GetIdentifier(
    Pointer<Uint32> pdwIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwIdentifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        pdwIdentifier,
      );

  int GetMediaTypeHandler(
    Pointer<Pointer<COMObject>> ppHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHandler,
          )>()(
        ptr.ref.lpVtbl,
        ppHandler,
      );

  int ProcessSample(
    Pointer<COMObject> pSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSample,
          )>()(
        ptr.ref.lpVtbl,
        pSample,
      );

  int PlaceMarker(
    int eMarkerType,
    Pointer<PROPVARIANT> pvarMarkerValue,
    Pointer<PROPVARIANT> pvarContextValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eMarkerType,
            Pointer<PROPVARIANT> pvarMarkerValue,
            Pointer<PROPVARIANT> pvarContextValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eMarkerType,
            Pointer<PROPVARIANT> pvarMarkerValue,
            Pointer<PROPVARIANT> pvarContextValue,
          )>()(
        ptr.ref.lpVtbl,
        eMarkerType,
        pvarMarkerValue,
        pvarContextValue,
      );

  int Flush() => ptr.ref.lpVtbl.value
          .elementAt(12)
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
