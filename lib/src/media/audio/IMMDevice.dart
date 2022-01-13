// IMMDevice.dart

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
import '../../system/com/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structuredstorage/structs.g.dart';
import '../../ui/shell/propertiessystem/IPropertyStore.dart';

/// @nodoc
const IID_IMMDevice = '{D666063F-1587-4E43-81F1-B948E807363F}';

/// {@category Interface}
/// {@category com}
class IMMDevice extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMMDevice(Pointer<COMObject> ptr) : super(ptr);

  int Activate(
    Pointer<GUID> iid,
    int dwClsCtx,
    Pointer<PROPVARIANT> pActivationParams,
    Pointer<Pointer> ppInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> iid,
            Uint32 dwClsCtx,
            Pointer<PROPVARIANT> pActivationParams,
            Pointer<Pointer> ppInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> iid,
            int dwClsCtx,
            Pointer<PROPVARIANT> pActivationParams,
            Pointer<Pointer> ppInterface,
          )>()(
        ptr.ref.lpVtbl,
        iid,
        dwClsCtx,
        pActivationParams,
        ppInterface,
      );

  int OpenPropertyStore(
    int stgmAccess,
    Pointer<Pointer<COMObject>> ppProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stgmAccess,
            Pointer<Pointer<COMObject>> ppProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stgmAccess,
            Pointer<Pointer<COMObject>> ppProperties,
          )>()(
        ptr.ref.lpVtbl,
        stgmAccess,
        ppProperties,
      );

  int GetId(
    Pointer<Pointer<Utf16>> ppstrId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppstrId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppstrId,
          )>()(
        ptr.ref.lpVtbl,
        ppstrId,
      );

  int GetState(
    Pointer<Uint32> pdwState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwState,
          )>()(
        ptr.ref.lpVtbl,
        pdwState,
      );
}
