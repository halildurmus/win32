// IFsrmFileScreenBase.dart

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

import '../../storage/fileserverresourcemanager/IFsrmObject.dart';
import '../../storage/fileserverresourcemanager/IFsrmMutableCollection.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmAction.dart';
import '../../storage/fileserverresourcemanager/IFsrmCollection.dart';

/// @nodoc
const IID_IFsrmFileScreenBase = '{F3637E80-5B22-4A2B-A637-BBB642B41CFC}';

/// {@category Interface}
/// {@category com}
class IFsrmFileScreenBase extends IFsrmObject {
  // vtable begins at 12, is 6 entries long.
  IFsrmFileScreenBase(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get BlockedFileGroups {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> blockList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> blockList,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BlockedFileGroups(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<COMObject> blockList,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> blockList,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get FileScreenFlags {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fileScreenFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fileScreenFlags,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set FileScreenFlags(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fileScreenFlags,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fileScreenFlags,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int CreateAction(
    int actionType,
    Pointer<Pointer<COMObject>> action,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 actionType,
            Pointer<Pointer<COMObject>> action,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int actionType,
            Pointer<Pointer<COMObject>> action,
          )>()(
        ptr.ref.lpVtbl,
        actionType,
        action,
      );

  int EnumActions(
    Pointer<Pointer<COMObject>> actions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> actions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> actions,
          )>()(
        ptr.ref.lpVtbl,
        actions,
      );
}
