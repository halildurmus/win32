// IMsmMerge.dart

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
import '../../system/applicationinstallationandservicing/IMsmErrors.dart';
import '../../system/applicationinstallationandservicing/IMsmDependencies.dart';

/// @nodoc
const IID_IMsmMerge = '{0ADDA82E-2C26-11D2-AD65-00A0C9AF11A6}';

/// {@category Interface}
/// {@category com}
class IMsmMerge extends IDispatch {
  // vtable begins at 7, is 13 entries long.
  IMsmMerge(Pointer<COMObject> ptr) : super(ptr);

  int OpenDatabase(
    Pointer<Utf16> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );

  int OpenModule(
    Pointer<Utf16> Path,
    int Language,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
            Int16 Language,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
            int Language,
          )>()(
        ptr.ref.lpVtbl,
        Path,
        Language,
      );

  int CloseDatabase(
    int Commit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 Commit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Commit,
          )>()(
        ptr.ref.lpVtbl,
        Commit,
      );

  int CloseModule() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int OpenLog(
    Pointer<Utf16> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );

  int CloseLog() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Log(
    Pointer<Utf16> Message,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Message,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Message,
          )>()(
        ptr.ref.lpVtbl,
        Message,
      );

  Pointer<COMObject> get Errors {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Errors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Errors,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Dependencies {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Dependencies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Dependencies,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Merge(
    Pointer<Utf16> Feature,
    Pointer<Utf16> RedirectDir,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Feature,
            Pointer<Utf16> RedirectDir,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Feature,
            Pointer<Utf16> RedirectDir,
          )>()(
        ptr.ref.lpVtbl,
        Feature,
        RedirectDir,
      );

  int Connect(
    Pointer<Utf16> Feature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Feature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Feature,
          )>()(
        ptr.ref.lpVtbl,
        Feature,
      );

  int ExtractCAB(
    Pointer<Utf16> FileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FileName,
          )>()(
        ptr.ref.lpVtbl,
        FileName,
      );

  int ExtractFiles(
    Pointer<Utf16> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );
}

/// @nodoc
const CLSID_MsmMerge = '{0ADDA830-2C26-11D2-AD65-00A0C9AF11A6}';

/// {@category com}
class MsmMerge extends IMsmMerge {
  MsmMerge(Pointer<COMObject> ptr) : super(ptr);

  factory MsmMerge.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MsmMerge);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMsmMerge);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MsmMerge(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
