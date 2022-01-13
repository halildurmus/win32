// IAMVideoAcceleratorNotify.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAMVideoAcceleratorNotify = '{256A6A21-FBAD-11D1-82BF-00A0C9696C8F}';

/// {@category Interface}
/// {@category com}
class IAMVideoAcceleratorNotify extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAMVideoAcceleratorNotify(Pointer<COMObject> ptr) : super(ptr);

  int GetUncompSurfacesInfo(
    Pointer<GUID> pGuid,
    Pointer<AMVAUncompBufferInfo> pUncompBufferInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuid,
            Pointer<AMVAUncompBufferInfo> pUncompBufferInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuid,
            Pointer<AMVAUncompBufferInfo> pUncompBufferInfo,
          )>()(
        ptr.ref.lpVtbl,
        pGuid,
        pUncompBufferInfo,
      );

  int SetUncompSurfacesInfo(
    int dwActualUncompSurfacesAllocated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwActualUncompSurfacesAllocated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwActualUncompSurfacesAllocated,
          )>()(
        ptr.ref.lpVtbl,
        dwActualUncompSurfacesAllocated,
      );

  int GetCreateVideoAcceleratorData(
    Pointer<GUID> pGuid,
    Pointer<Uint32> pdwSizeMiscData,
    Pointer<Pointer> ppMiscData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuid,
            Pointer<Uint32> pdwSizeMiscData,
            Pointer<Pointer> ppMiscData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuid,
            Pointer<Uint32> pdwSizeMiscData,
            Pointer<Pointer> ppMiscData,
          )>()(
        ptr.ref.lpVtbl,
        pGuid,
        pdwSizeMiscData,
        ppMiscData,
      );
}
