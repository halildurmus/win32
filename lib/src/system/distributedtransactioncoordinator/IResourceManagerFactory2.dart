// IResourceManagerFactory2.dart

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

import '../../system/distributedtransactioncoordinator/IResourceManagerFactory.dart';
import '../../foundation/structs.g.dart';
import '../../system/distributedtransactioncoordinator/IResourceManagerSink.dart';

/// @nodoc
const IID_IResourceManagerFactory2 = '{6B369C21-FBD2-11D1-8F47-00C04F8EE57D}';

/// {@category Interface}
/// {@category com}
class IResourceManagerFactory2 extends IResourceManagerFactory {
  // vtable begins at 4, is 1 entries long.
  IResourceManagerFactory2(Pointer<COMObject> ptr) : super(ptr);

  int CreateEx(
    Pointer<GUID> pguidRM,
    Pointer<Utf8> pszRMName,
    Pointer<COMObject> pIResMgrSink,
    Pointer<GUID> riidRequested,
    Pointer<Pointer> ppvResMgr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidRM,
            Pointer<Utf8> pszRMName,
            Pointer<COMObject> pIResMgrSink,
            Pointer<GUID> riidRequested,
            Pointer<Pointer> ppvResMgr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidRM,
            Pointer<Utf8> pszRMName,
            Pointer<COMObject> pIResMgrSink,
            Pointer<GUID> riidRequested,
            Pointer<Pointer> ppvResMgr,
          )>()(
        ptr.ref.lpVtbl,
        pguidRM,
        pszRMName,
        pIResMgrSink,
        riidRequested,
        ppvResMgr,
      );
}
