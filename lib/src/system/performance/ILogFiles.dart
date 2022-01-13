// ILogFiles.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_ILogFiles = '{6A2A97E6-6851-41EA-87AD-2A8225335865}';

/// {@category Interface}
/// {@category com}
class ILogFiles extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ILogFiles(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pLong,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pLong,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIunk,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    VARIANT index,
    Pointer<Pointer<COMObject>> ppI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT index,
            Pointer<Pointer<COMObject>> ppI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT index,
            Pointer<Pointer<COMObject>> ppI,
          )>()(
        ptr.ref.lpVtbl,
        index,
        ppI,
      );

  int Add(
    Pointer<Utf16> pathname,
    Pointer<Pointer<COMObject>> ppI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pathname,
            Pointer<Pointer<COMObject>> ppI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pathname,
            Pointer<Pointer<COMObject>> ppI,
          )>()(
        ptr.ref.lpVtbl,
        pathname,
        ppI,
      );

  int Remove(
    VARIANT index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT index,
          )>()(
        ptr.ref.lpVtbl,
        index,
      );
}

/// @nodoc
const CLSID_LogFiles = '{2735D9FD-F6B9-4F19-A5D9-E2D068584BC5}';

/// {@category com}
class LogFiles extends ILogFiles {
  LogFiles(Pointer<COMObject> ptr) : super(ptr);

  factory LogFiles.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_LogFiles);
    final iid = calloc<GUID>()..ref.setGUID(IID_ILogFiles);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return LogFiles(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
