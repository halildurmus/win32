// IITDatabase.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IITDatabase = '{8FA0D5A2-DEDF-11D0-9A61-00C04FB68BF7}';

/// {@category Interface}
/// {@category com}
class IITDatabase extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IITDatabase(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Utf16> lpszHost,
    Pointer<Utf16> lpszMoniker,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpszHost,
            Pointer<Utf16> lpszMoniker,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpszHost,
            Pointer<Utf16> lpszMoniker,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpszHost,
        lpszMoniker,
        dwFlags,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int CreateObject(
    Pointer<GUID> rclsid,
    Pointer<Uint32> pdwObjInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Uint32> pdwObjInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Uint32> pdwObjInstance,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        pdwObjInstance,
      );

  int GetObject(
    int dwObjInstance,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwObjInstance,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwObjInstance,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObj,
          )>()(
        ptr.ref.lpVtbl,
        dwObjInstance,
        riid,
        ppvObj,
      );

  int GetObjectPersistence(
    Pointer<Utf16> lpwszObject,
    int dwObjInstance,
    Pointer<Pointer> ppvPersistence,
    int fStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpwszObject,
            Uint32 dwObjInstance,
            Pointer<Pointer> ppvPersistence,
            Int32 fStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpwszObject,
            int dwObjInstance,
            Pointer<Pointer> ppvPersistence,
            int fStream,
          )>()(
        ptr.ref.lpVtbl,
        lpwszObject,
        dwObjInstance,
        ppvPersistence,
        fStream,
      );
}
