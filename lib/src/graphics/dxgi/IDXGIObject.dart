// IDXGIObject.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IDXGIObject = '{AEC22FB8-76F3-4639-9BE0-28EB43A67A2E}';

/// {@category Interface}
/// {@category com}
class IDXGIObject extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDXGIObject(Pointer<COMObject> ptr) : super(ptr);

  int SetPrivateData(
    Pointer<GUID> Name,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Name,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Name,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        DataSize,
        pData,
      );

  int SetPrivateDataInterface(
    Pointer<GUID> Name,
    Pointer<COMObject> pUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Name,
            Pointer<COMObject> pUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Name,
            Pointer<COMObject> pUnknown,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        pUnknown,
      );

  int GetPrivateData(
    Pointer<GUID> Name,
    Pointer<Uint32> pDataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Name,
            Pointer<Uint32> pDataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Name,
            Pointer<Uint32> pDataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        pDataSize,
        pData,
      );

  int GetParent(
    Pointer<GUID> riid,
    Pointer<Pointer> ppParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppParent,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppParent,
      );
}
