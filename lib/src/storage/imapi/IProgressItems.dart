// IProgressItems.dart

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
import '../../system/ole/IEnumVARIANT.dart';
import '../../foundation/structs.g.dart';
import '../../storage/imapi/IProgressItem.dart';
import '../../storage/imapi/IEnumProgressItems.dart';

/// @nodoc
const IID_IProgressItems = '{2C941FD7-975B-59BE-A960-9A2A262853A5}';

/// {@category Interface}
/// {@category com}
class IProgressItems extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IProgressItems(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
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
    int Index,
    Pointer<Pointer<COMObject>> item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Pointer<COMObject>> item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> item,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        item,
      );

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int ProgressItemFromBlock(
    int block,
    Pointer<Pointer<COMObject>> item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 block,
            Pointer<Pointer<COMObject>> item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int block,
            Pointer<Pointer<COMObject>> item,
          )>()(
        ptr.ref.lpVtbl,
        block,
        item,
      );

  int ProgressItemFromDescription(
    Pointer<Utf16> description,
    Pointer<Pointer<COMObject>> item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> description,
            Pointer<Pointer<COMObject>> item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> description,
            Pointer<Pointer<COMObject>> item,
          )>()(
        ptr.ref.lpVtbl,
        description,
        item,
      );

  Pointer<COMObject> get EnumProgressItems {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
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
}

/// @nodoc
const CLSID_ProgressItems = '{2C941FC9-975B-59BE-A960-9A2A262853A5}';

/// {@category com}
class ProgressItems extends IProgressItems {
  ProgressItems(Pointer<COMObject> ptr) : super(ptr);

  factory ProgressItems.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ProgressItems);
    final iid = calloc<GUID>()..ref.setGUID(IID_IProgressItems);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ProgressItems(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
