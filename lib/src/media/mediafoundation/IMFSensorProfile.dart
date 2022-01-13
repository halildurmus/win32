// IMFSensorProfile.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaType.dart';

/// @nodoc
const IID_IMFSensorProfile = '{22F765D1-8DAB-4107-846D-56BAF72215E7}';

/// {@category Interface}
/// {@category com}
class IMFSensorProfile extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFSensorProfile(Pointer<COMObject> ptr) : super(ptr);

  int GetProfileId(
    Pointer<SENSORPROFILEID> pId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SENSORPROFILEID> pId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SENSORPROFILEID> pId,
          )>()(
        ptr.ref.lpVtbl,
        pId,
      );

  int AddProfileFilter(
    int StreamId,
    Pointer<Utf16> wzFilterSetString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamId,
            Pointer<Utf16> wzFilterSetString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamId,
            Pointer<Utf16> wzFilterSetString,
          )>()(
        ptr.ref.lpVtbl,
        StreamId,
        wzFilterSetString,
      );

  int IsMediaTypeSupported(
    int StreamId,
    Pointer<COMObject> pMediaType,
    Pointer<Int32> pfSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamId,
            Pointer<COMObject> pMediaType,
            Pointer<Int32> pfSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamId,
            Pointer<COMObject> pMediaType,
            Pointer<Int32> pfSupported,
          )>()(
        ptr.ref.lpVtbl,
        StreamId,
        pMediaType,
        pfSupported,
      );

  int AddBlockedControl(
    Pointer<Utf16> wzBlockedControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wzBlockedControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wzBlockedControl,
          )>()(
        ptr.ref.lpVtbl,
        wzBlockedControl,
      );
}
