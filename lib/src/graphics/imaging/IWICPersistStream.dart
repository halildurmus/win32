// IWICPersistStream.dart

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

import '../../system/com/IPersistStream.dart';
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICPersistStream = '{00675040-6908-45F8-86A3-49C7DFD6D9AD}';

/// {@category Interface}
/// {@category com}
class IWICPersistStream extends IPersistStream {
  // vtable begins at 8, is 2 entries long.
  IWICPersistStream(Pointer<COMObject> ptr) : super(ptr);

  int LoadEx(
    Pointer<COMObject> pIStream,
    Pointer<GUID> pguidPreferredVendor,
    int dwPersistOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Pointer<GUID> pguidPreferredVendor,
            Uint32 dwPersistOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Pointer<GUID> pguidPreferredVendor,
            int dwPersistOptions,
          )>()(
        ptr.ref.lpVtbl,
        pIStream,
        pguidPreferredVendor,
        dwPersistOptions,
      );

  int SaveEx(
    Pointer<COMObject> pIStream,
    int dwPersistOptions,
    int fClearDirty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Uint32 dwPersistOptions,
            Int32 fClearDirty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStream,
            int dwPersistOptions,
            int fClearDirty,
          )>()(
        ptr.ref.lpVtbl,
        pIStream,
        dwPersistOptions,
        fClearDirty,
      );
}
