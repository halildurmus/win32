// IManagedObjectInfo.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/componentservices/IObjectControl.dart';
import '../../system/componentservices/IManagedPooledObj.dart';

/// @nodoc
const IID_IManagedObjectInfo = '{1427C51A-4584-49D8-90A0-C50D8086CBE9}';

/// {@category Interface}
/// {@category com}
class IManagedObjectInfo extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IManagedObjectInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetIUnknown(
    Pointer<Pointer<COMObject>> pUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pUnk,
          )>()(
        ptr.ref.lpVtbl,
        pUnk,
      );

  int GetIObjectControl(
    Pointer<Pointer<COMObject>> pCtrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pCtrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pCtrl,
          )>()(
        ptr.ref.lpVtbl,
        pCtrl,
      );

  int SetInPool(
    int bInPool,
    Pointer<COMObject> pPooledObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bInPool,
            Pointer<COMObject> pPooledObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bInPool,
            Pointer<COMObject> pPooledObj,
          )>()(
        ptr.ref.lpVtbl,
        bInPool,
        pPooledObj,
      );

  int SetWrapperStrength(
    int bStrong,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bStrong,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bStrong,
          )>()(
        ptr.ref.lpVtbl,
        bStrong,
      );
}
