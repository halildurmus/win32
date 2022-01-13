// ILoadChangeContext.dart

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
import '../../system/windowssync/ISyncChange.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/IRecoverableErrorData.dart';
import '../../system/windowssync/ISyncChangeUnit.dart';

/// @nodoc
const IID_ILoadChangeContext = '{44A4AACA-EC39-46D5-B5C9-D633C0EE67E2}';

/// {@category Interface}
/// {@category com}
class ILoadChangeContext extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ILoadChangeContext(Pointer<COMObject> ptr) : super(ptr);

  int GetSyncChange(
    Pointer<Pointer<COMObject>> ppSyncChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSyncChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSyncChange,
          )>()(
        ptr.ref.lpVtbl,
        ppSyncChange,
      );

  int SetRecoverableErrorOnChange(
    int hrError,
    Pointer<COMObject> pErrorData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrError,
            Pointer<COMObject> pErrorData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrError,
            Pointer<COMObject> pErrorData,
          )>()(
        ptr.ref.lpVtbl,
        hrError,
        pErrorData,
      );

  int SetRecoverableErrorOnChangeUnit(
    int hrError,
    Pointer<COMObject> pChangeUnit,
    Pointer<COMObject> pErrorData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrError,
            Pointer<COMObject> pChangeUnit,
            Pointer<COMObject> pErrorData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrError,
            Pointer<COMObject> pChangeUnit,
            Pointer<COMObject> pErrorData,
          )>()(
        ptr.ref.lpVtbl,
        hrError,
        pChangeUnit,
        pErrorData,
      );
}
