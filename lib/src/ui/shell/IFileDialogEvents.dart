// IFileDialogEvents.dart

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
import '../../ui/shell/IFileDialog.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/IShellItem.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IFileDialogEvents = '{973510DB-7D7F-452B-8975-74A85828D354}';

/// {@category Interface}
/// {@category com}
class IFileDialogEvents extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IFileDialogEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnFileOk(
    Pointer<COMObject> pfd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfd,
          )>()(
        ptr.ref.lpVtbl,
        pfd,
      );

  int OnFolderChanging(
    Pointer<COMObject> pfd,
    Pointer<COMObject> psiFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfd,
            Pointer<COMObject> psiFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfd,
            Pointer<COMObject> psiFolder,
          )>()(
        ptr.ref.lpVtbl,
        pfd,
        psiFolder,
      );

  int OnFolderChange(
    Pointer<COMObject> pfd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfd,
          )>()(
        ptr.ref.lpVtbl,
        pfd,
      );

  int OnSelectionChange(
    Pointer<COMObject> pfd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfd,
          )>()(
        ptr.ref.lpVtbl,
        pfd,
      );

  int OnShareViolation(
    Pointer<COMObject> pfd,
    Pointer<COMObject> psi,
    Pointer<Int32> pResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfd,
            Pointer<COMObject> psi,
            Pointer<Int32> pResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfd,
            Pointer<COMObject> psi,
            Pointer<Int32> pResponse,
          )>()(
        ptr.ref.lpVtbl,
        pfd,
        psi,
        pResponse,
      );

  int OnTypeChange(
    Pointer<COMObject> pfd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfd,
          )>()(
        ptr.ref.lpVtbl,
        pfd,
      );

  int OnOverwrite(
    Pointer<COMObject> pfd,
    Pointer<COMObject> psi,
    Pointer<Int32> pResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfd,
            Pointer<COMObject> psi,
            Pointer<Int32> pResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfd,
            Pointer<COMObject> psi,
            Pointer<Int32> pResponse,
          )>()(
        ptr.ref.lpVtbl,
        pfd,
        psi,
        pResponse,
      );
}
