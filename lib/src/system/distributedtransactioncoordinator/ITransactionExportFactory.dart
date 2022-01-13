// ITransactionExportFactory.dart

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
import '../../system/distributedtransactioncoordinator/ITransactionExport.dart';

/// @nodoc
const IID_ITransactionExportFactory = '{E1CF9B53-8745-11CE-A9BA-00AA006C3706}';

/// {@category Interface}
/// {@category com}
class ITransactionExportFactory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITransactionExportFactory(Pointer<COMObject> ptr) : super(ptr);

  int GetRemoteClassId(
    Pointer<GUID> pclsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>()(
        ptr.ref.lpVtbl,
        pclsid,
      );

  int Create(
    int cbWhereabouts,
    Pointer<Uint8> rgbWhereabouts,
    Pointer<Pointer<COMObject>> ppExport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbWhereabouts,
            Pointer<Uint8> rgbWhereabouts,
            Pointer<Pointer<COMObject>> ppExport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbWhereabouts,
            Pointer<Uint8> rgbWhereabouts,
            Pointer<Pointer<COMObject>> ppExport,
          )>()(
        ptr.ref.lpVtbl,
        cbWhereabouts,
        rgbWhereabouts,
        ppExport,
      );
}
