// IMFMediaSource.dart

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
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFPresentationDescriptor.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFMediaSource = '{279A808D-AEC7-40C8-9C6B-A6B492C78A66}';

/// {@category Interface}
/// {@category com}
class IMFMediaSource extends IMFMediaEventGenerator {
  // vtable begins at 7, is 6 entries long.
  IMFMediaSource(Pointer<COMObject> ptr) : super(ptr);

  int GetCharacteristics(
    Pointer<Uint32> pdwCharacteristics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int CreatePresentationDescriptor(
    Pointer<Pointer<COMObject>> ppPresentationDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPresentationDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPresentationDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        ppPresentationDescriptor,
      );

  int Start(
    Pointer<COMObject> pPresentationDescriptor,
    Pointer<GUID> pguidTimeFormat,
    Pointer<PROPVARIANT> pvarStartPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPresentationDescriptor,
            Pointer<GUID> pguidTimeFormat,
            Pointer<PROPVARIANT> pvarStartPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPresentationDescriptor,
            Pointer<GUID> pguidTimeFormat,
            Pointer<PROPVARIANT> pvarStartPosition,
          )>()(
        ptr.ref.lpVtbl,
        pPresentationDescriptor,
        pguidTimeFormat,
        pvarStartPosition,
      );

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int Pause() => ptr.ref.lpVtbl.value
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

  int Shutdown() => ptr.ref.lpVtbl.value
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
