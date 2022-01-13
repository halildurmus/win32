// ITRendezvous.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/IEnumDirectory.dart';
import '../../devices/tapi/structs.g.dart';
import '../../devices/tapi/ITDirectory.dart';
import '../../devices/tapi/ITDirectoryObject.dart';

/// @nodoc
const IID_ITRendezvous = '{34621D6B-6CFF-11D1-AFF7-00C04FC31FEE}';

/// {@category Interface}
/// {@category com}
class ITRendezvous extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  ITRendezvous(Pointer<COMObject> ptr) : super(ptr);

  VARIANT get DefaultDirectories {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumerateDefaultDirectories(
    Pointer<Pointer<COMObject>> ppEnumDirectory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumDirectory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumDirectory,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumDirectory,
      );

  int CreateDirectory(
    int DirectoryType,
    Pointer<Utf16> pName,
    Pointer<Pointer<COMObject>> ppDir,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DirectoryType,
            Pointer<Utf16> pName,
            Pointer<Pointer<COMObject>> ppDir,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DirectoryType,
            Pointer<Utf16> pName,
            Pointer<Pointer<COMObject>> ppDir,
          )>()(
        ptr.ref.lpVtbl,
        DirectoryType,
        pName,
        ppDir,
      );

  int CreateDirectoryObject(
    int DirectoryObjectType,
    Pointer<Utf16> pName,
    Pointer<Pointer<COMObject>> ppDirectoryObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DirectoryObjectType,
            Pointer<Utf16> pName,
            Pointer<Pointer<COMObject>> ppDirectoryObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DirectoryObjectType,
            Pointer<Utf16> pName,
            Pointer<Pointer<COMObject>> ppDirectoryObject,
          )>()(
        ptr.ref.lpVtbl,
        DirectoryObjectType,
        pName,
        ppDirectoryObject,
      );
}
