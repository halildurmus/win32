// IMFSensorProfileCollection.dart

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
import '../../media/mediafoundation/IMFSensorProfile.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFSensorProfileCollection = '{C95EA55B-0187-48BE-9353-8D2507662351}';

/// {@category Interface}
/// {@category com}
class IMFSensorProfileCollection extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFSensorProfileCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetProfileCount() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetProfile(
    int Index,
    Pointer<Pointer<COMObject>> ppProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Pointer<COMObject>> ppProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> ppProfile,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ppProfile,
      );

  int AddProfile(
    Pointer<COMObject> pProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProfile,
          )>()(
        ptr.ref.lpVtbl,
        pProfile,
      );

  int FindProfile(
    Pointer<SENSORPROFILEID> ProfileId,
    Pointer<Pointer<COMObject>> ppProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SENSORPROFILEID> ProfileId,
            Pointer<Pointer<COMObject>> ppProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SENSORPROFILEID> ProfileId,
            Pointer<Pointer<COMObject>> ppProfile,
          )>()(
        ptr.ref.lpVtbl,
        ProfileId,
        ppProfile,
      );

  void RemoveProfileByIndex(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 Index,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  void RemoveProfile(
    Pointer<SENSORPROFILEID> ProfileId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<SENSORPROFILEID> ProfileId,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<SENSORPROFILEID> ProfileId,
          )>()(
        ptr.ref.lpVtbl,
        ProfileId,
      );
}
