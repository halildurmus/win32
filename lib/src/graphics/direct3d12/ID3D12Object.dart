// ID3D12Object.dart

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
const IID_ID3D12Object = '{C4FEC28F-7966-4E95-9F94-F431CB56C3B8}';

/// {@category Interface}
/// {@category com}
class ID3D12Object extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ID3D12Object(Pointer<COMObject> ptr) : super(ptr);

  int GetPrivateData(
    Pointer<GUID> guid,
    Pointer<Uint32> pDataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Uint32> pDataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Uint32> pDataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        pDataSize,
        pData,
      );

  int SetPrivateData(
    Pointer<GUID> guid,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        DataSize,
        pData,
      );

  int SetPrivateDataInterface(
    Pointer<GUID> guid,
    Pointer<COMObject> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<COMObject> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<COMObject> pData,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        pData,
      );

  int SetName(
    Pointer<Utf16> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );
}
