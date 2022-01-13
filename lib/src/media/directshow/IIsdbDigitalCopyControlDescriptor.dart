// IIsdbDigitalCopyControlDescriptor.dart

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
const IID_IIsdbDigitalCopyControlDescriptor =
    '{1A28417E-266A-4BB8-A4BD-D782BCFB8161}';

/// {@category Interface}
/// {@category com}
class IIsdbDigitalCopyControlDescriptor extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IIsdbDigitalCopyControlDescriptor(Pointer<COMObject> ptr) : super(ptr);

  int GetTag(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetLength(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetCopyControl(
    Pointer<Uint8> pbDigitalRecordingControlData,
    Pointer<Uint8> pbCopyControlType,
    Pointer<Uint8> pbAPSControlData,
    Pointer<Uint8> pbMaximumBitrate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbDigitalRecordingControlData,
            Pointer<Uint8> pbCopyControlType,
            Pointer<Uint8> pbAPSControlData,
            Pointer<Uint8> pbMaximumBitrate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbDigitalRecordingControlData,
            Pointer<Uint8> pbCopyControlType,
            Pointer<Uint8> pbAPSControlData,
            Pointer<Uint8> pbMaximumBitrate,
          )>()(
        ptr.ref.lpVtbl,
        pbDigitalRecordingControlData,
        pbCopyControlType,
        pbAPSControlData,
        pbMaximumBitrate,
      );

  int GetCountOfRecords(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetRecordCopyControl(
    int bRecordIndex,
    Pointer<Uint8> pbComponentTag,
    Pointer<Uint8> pbDigitalRecordingControlData,
    Pointer<Uint8> pbCopyControlType,
    Pointer<Uint8> pbAPSControlData,
    Pointer<Uint8> pbMaximumBitrate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Pointer<Uint8> pbComponentTag,
            Pointer<Uint8> pbDigitalRecordingControlData,
            Pointer<Uint8> pbCopyControlType,
            Pointer<Uint8> pbAPSControlData,
            Pointer<Uint8> pbMaximumBitrate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            Pointer<Uint8> pbComponentTag,
            Pointer<Uint8> pbDigitalRecordingControlData,
            Pointer<Uint8> pbCopyControlType,
            Pointer<Uint8> pbAPSControlData,
            Pointer<Uint8> pbMaximumBitrate,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        pbComponentTag,
        pbDigitalRecordingControlData,
        pbCopyControlType,
        pbAPSControlData,
        pbMaximumBitrate,
      );
}
