// IVssComponentEx.dart

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

import '../../storage/vss/IVssComponent.dart';
import '../../foundation/structs.g.dart';
import '../../storage/vss/structs.g.dart';

/// @nodoc
const IID_IVssComponentEx = '{156C8B5E-F131-4BD7-9C97-D1923BE7E1FA}';

/// {@category Interface}
/// {@category com}
class IVssComponentEx extends IVssComponent {
  // vtable begins at 41, is 7 entries long.
  IVssComponentEx(Pointer<COMObject> ptr) : super(ptr);

  int SetPrepareForBackupFailureMsg(
    Pointer<Utf16> wszFailureMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszFailureMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszFailureMsg,
          )>()(
        ptr.ref.lpVtbl,
        wszFailureMsg,
      );

  int SetPostSnapshotFailureMsg(
    Pointer<Utf16> wszFailureMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszFailureMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszFailureMsg,
          )>()(
        ptr.ref.lpVtbl,
        wszFailureMsg,
      );

  int GetPrepareForBackupFailureMsg(
    Pointer<Pointer<Utf16>> pbstrFailureMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFailureMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFailureMsg,
          )>()(
        ptr.ref.lpVtbl,
        pbstrFailureMsg,
      );

  int GetPostSnapshotFailureMsg(
    Pointer<Pointer<Utf16>> pbstrFailureMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFailureMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFailureMsg,
          )>()(
        ptr.ref.lpVtbl,
        pbstrFailureMsg,
      );

  int GetAuthoritativeRestore(
    Pointer<Bool> pbAuth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Bool> pbAuth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Bool> pbAuth,
          )>()(
        ptr.ref.lpVtbl,
        pbAuth,
      );

  int GetRollForward(
    Pointer<Int32> pRollType,
    Pointer<Pointer<Utf16>> pbstrPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pRollType,
            Pointer<Pointer<Utf16>> pbstrPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pRollType,
            Pointer<Pointer<Utf16>> pbstrPoint,
          )>()(
        ptr.ref.lpVtbl,
        pRollType,
        pbstrPoint,
      );

  int GetRestoreName(
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        pbstrName,
      );
}
