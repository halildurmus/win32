// ITDirectory.dart

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
import '../../devices/tapi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/ITDirectoryObject.dart';
import '../../specialTypes.dart';
import '../../devices/tapi/IEnumDirectoryObject.dart';

/// @nodoc
const IID_ITDirectory = '{34621D6C-6CFF-11D1-AFF7-00C04FC31FEE}';

/// {@category Interface}
/// {@category com}
class ITDirectory extends IDispatch {
  // vtable begins at 7, is 14 entries long.
  ITDirectory(Pointer<COMObject> ptr) : super(ptr);

  int get DirectoryType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pDirectoryType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pDirectoryType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get DisplayName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get IsDynamic {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfDynamic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfDynamic,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get DefaultObjectTTL {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pTTL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pTTL,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DefaultObjectTTL(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 TTL,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int TTL,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int EnableAutoRefresh(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int Connect(
    int fSecure,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fSecure,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSecure,
          )>()(
        ptr.ref.lpVtbl,
        fSecure,
      );

  int Bind(
    Pointer<Utf16> pDomainName,
    Pointer<Utf16> pUserName,
    Pointer<Utf16> pPassword,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pDomainName,
            Pointer<Utf16> pUserName,
            Pointer<Utf16> pPassword,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pDomainName,
            Pointer<Utf16> pUserName,
            Pointer<Utf16> pPassword,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        pDomainName,
        pUserName,
        pPassword,
        lFlags,
      );

  int AddDirectoryObject(
    Pointer<COMObject> pDirectoryObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDirectoryObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDirectoryObject,
          )>()(
        ptr.ref.lpVtbl,
        pDirectoryObject,
      );

  int ModifyDirectoryObject(
    Pointer<COMObject> pDirectoryObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDirectoryObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDirectoryObject,
          )>()(
        ptr.ref.lpVtbl,
        pDirectoryObject,
      );

  int RefreshDirectoryObject(
    Pointer<COMObject> pDirectoryObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDirectoryObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDirectoryObject,
          )>()(
        ptr.ref.lpVtbl,
        pDirectoryObject,
      );

  int DeleteDirectoryObject(
    Pointer<COMObject> pDirectoryObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDirectoryObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDirectoryObject,
          )>()(
        ptr.ref.lpVtbl,
        pDirectoryObject,
      );

  int get_DirectoryObjects(
    int DirectoryObjectType,
    Pointer<Utf16> pName,
    Pointer<VARIANT> pVariant,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DirectoryObjectType,
            Pointer<Utf16> pName,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DirectoryObjectType,
            Pointer<Utf16> pName,
            Pointer<VARIANT> pVariant,
          )>()(
        ptr.ref.lpVtbl,
        DirectoryObjectType,
        pName,
        pVariant,
      );

  int EnumerateDirectoryObjects(
    int DirectoryObjectType,
    Pointer<Utf16> pName,
    Pointer<Pointer<COMObject>> ppEnumObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DirectoryObjectType,
            Pointer<Utf16> pName,
            Pointer<Pointer<COMObject>> ppEnumObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DirectoryObjectType,
            Pointer<Utf16> pName,
            Pointer<Pointer<COMObject>> ppEnumObject,
          )>()(
        ptr.ref.lpVtbl,
        DirectoryObjectType,
        pName,
        ppEnumObject,
      );
}
