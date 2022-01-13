// Folder.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/Folder.dart';
import '../../ui/shell/FolderItems.dart';
import '../../ui/shell/FolderItem.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_Folder = '{BBCBDE60-C3FF-11CE-8350-444553540000}';

/// {@category Interface}
/// {@category com}
class Folder extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  Folder(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get Title {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbs,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Application {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppid,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Parent {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppid,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get ParentFolder {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsf,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Items(
    Pointer<Pointer<COMObject>> ppid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppid,
          )>()(
        ptr.ref.lpVtbl,
        ppid,
      );

  int ParseName(
    Pointer<Utf16> bName,
    Pointer<Pointer<COMObject>> ppid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bName,
            Pointer<Pointer<COMObject>> ppid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bName,
            Pointer<Pointer<COMObject>> ppid,
          )>()(
        ptr.ref.lpVtbl,
        bName,
        ppid,
      );

  int NewFolder(
    Pointer<Utf16> bName,
    VARIANT vOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bName,
            VARIANT vOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bName,
            VARIANT vOptions,
          )>()(
        ptr.ref.lpVtbl,
        bName,
        vOptions,
      );

  int MoveHere(
    VARIANT vItem,
    VARIANT vOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vItem,
            VARIANT vOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vItem,
            VARIANT vOptions,
          )>()(
        ptr.ref.lpVtbl,
        vItem,
        vOptions,
      );

  int CopyHere(
    VARIANT vItem,
    VARIANT vOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vItem,
            VARIANT vOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vItem,
            VARIANT vOptions,
          )>()(
        ptr.ref.lpVtbl,
        vItem,
        vOptions,
      );

  int GetDetailsOf(
    VARIANT vItem,
    int iColumn,
    Pointer<Pointer<Utf16>> pbs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vItem,
            Int32 iColumn,
            Pointer<Pointer<Utf16>> pbs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vItem,
            int iColumn,
            Pointer<Pointer<Utf16>> pbs,
          )>()(
        ptr.ref.lpVtbl,
        vItem,
        iColumn,
        pbs,
      );
}
