// IOfflineFilesChangeInfo.dart

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
const IID_IOfflineFilesChangeInfo = '{A96E6FA4-E0D1-4C29-960B-EE508FE68C72}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesChangeInfo extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IOfflineFilesChangeInfo(Pointer<COMObject> ptr) : super(ptr);

  int IsDirty(
    Pointer<Int32> pbDirty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbDirty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbDirty,
          )>()(
        ptr.ref.lpVtbl,
        pbDirty,
      );

  int IsDeletedOffline(
    Pointer<Int32> pbDeletedOffline,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbDeletedOffline,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbDeletedOffline,
          )>()(
        ptr.ref.lpVtbl,
        pbDeletedOffline,
      );

  int IsCreatedOffline(
    Pointer<Int32> pbCreatedOffline,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbCreatedOffline,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbCreatedOffline,
          )>()(
        ptr.ref.lpVtbl,
        pbCreatedOffline,
      );

  int IsLocallyModifiedData(
    Pointer<Int32> pbLocallyModifiedData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbLocallyModifiedData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbLocallyModifiedData,
          )>()(
        ptr.ref.lpVtbl,
        pbLocallyModifiedData,
      );

  int IsLocallyModifiedAttributes(
    Pointer<Int32> pbLocallyModifiedAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbLocallyModifiedAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbLocallyModifiedAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pbLocallyModifiedAttributes,
      );

  int IsLocallyModifiedTime(
    Pointer<Int32> pbLocallyModifiedTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbLocallyModifiedTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbLocallyModifiedTime,
          )>()(
        ptr.ref.lpVtbl,
        pbLocallyModifiedTime,
      );
}
