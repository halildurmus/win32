// IResourceManagerFactory.dart

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
import '../../system/distributedtransactioncoordinator/IResourceManagerSink.dart';
import '../../system/distributedtransactioncoordinator/IResourceManager.dart';

/// @nodoc
const IID_IResourceManagerFactory = '{13741D20-87EB-11CE-8081-0080C758527E}';

/// {@category Interface}
/// {@category com}
class IResourceManagerFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IResourceManagerFactory(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<GUID> pguidRM,
    Pointer<Utf8> pszRMName,
    Pointer<COMObject> pIResMgrSink,
    Pointer<Pointer<COMObject>> ppResMgr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidRM,
            Pointer<Utf8> pszRMName,
            Pointer<COMObject> pIResMgrSink,
            Pointer<Pointer<COMObject>> ppResMgr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidRM,
            Pointer<Utf8> pszRMName,
            Pointer<COMObject> pIResMgrSink,
            Pointer<Pointer<COMObject>> ppResMgr,
          )>()(
        ptr.ref.lpVtbl,
        pguidRM,
        pszRMName,
        pIResMgrSink,
        ppResMgr,
      );
}
