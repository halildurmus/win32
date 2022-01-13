// IFsiDirectoryItem.dart

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

import '../../storage/imapi/IFsiItem.dart';
import '../../system/ole/IEnumVARIANT.dart';
import '../../foundation/structs.g.dart';
import '../../storage/imapi/IEnumFsiItems.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IFsiDirectoryItem = '{2C941FDC-975B-59BE-A960-9A2A262853A5}';

/// {@category Interface}
/// {@category com}
class IFsiDirectoryItem extends IFsiItem {
  // vtable begins at 19, is 10 entries long.
  IFsiDirectoryItem(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> item,
          )>()(
        ptr.ref.lpVtbl,
        path,
        item,
      );

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Count,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get EnumFsiItems {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int AddDirectory(
    Pointer<Utf16> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
          )>()(
        ptr.ref.lpVtbl,
        path,
      );

  int AddFile(
    Pointer<Utf16> path,
    Pointer<COMObject> fileData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<COMObject> fileData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<COMObject> fileData,
          )>()(
        ptr.ref.lpVtbl,
        path,
        fileData,
      );

  int AddTree(
    Pointer<Utf16> sourceDirectory,
    int includeBaseDirectory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> sourceDirectory,
            Int16 includeBaseDirectory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> sourceDirectory,
            int includeBaseDirectory,
          )>()(
        ptr.ref.lpVtbl,
        sourceDirectory,
        includeBaseDirectory,
      );

  int Add(
    Pointer<COMObject> item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> item,
          )>()(
        ptr.ref.lpVtbl,
        item,
      );

  int Remove(
    Pointer<Utf16> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
          )>()(
        ptr.ref.lpVtbl,
        path,
      );

  int RemoveTree(
    Pointer<Utf16> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
          )>()(
        ptr.ref.lpVtbl,
        path,
      );
}

/// @nodoc
const CLSID_FsiDirectoryItem = '{2C941FC8-975B-59BE-A960-9A2A262853A5}';

/// {@category com}
class FsiDirectoryItem extends IFsiDirectoryItem {
  FsiDirectoryItem(Pointer<COMObject> ptr) : super(ptr);

  factory FsiDirectoryItem.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FsiDirectoryItem);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsiDirectoryItem);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsiDirectoryItem(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
