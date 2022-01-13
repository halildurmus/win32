// ISpResourceManager.dart

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

import '../../system/com/IServiceProvider.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpResourceManager = '{93384E18-5014-43D5-ADBB-A78E055926BD}';

/// {@category Interface}
/// {@category com}
class ISpResourceManager extends IServiceProvider {
  // vtable begins at 4, is 2 entries long.
  ISpResourceManager(Pointer<COMObject> ptr) : super(ptr);

  int SetObject(
    Pointer<GUID> guidServiceId,
    Pointer<COMObject> pUnkObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidServiceId,
            Pointer<COMObject> pUnkObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidServiceId,
            Pointer<COMObject> pUnkObject,
          )>()(
        ptr.ref.lpVtbl,
        guidServiceId,
        pUnkObject,
      );

  int GetObject(
    Pointer<GUID> guidServiceId,
    Pointer<GUID> ObjectCLSID,
    Pointer<GUID> ObjectIID,
    int fReleaseWhenLastExternalRefReleased,
    Pointer<Pointer> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidServiceId,
            Pointer<GUID> ObjectCLSID,
            Pointer<GUID> ObjectIID,
            Int32 fReleaseWhenLastExternalRefReleased,
            Pointer<Pointer> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidServiceId,
            Pointer<GUID> ObjectCLSID,
            Pointer<GUID> ObjectIID,
            int fReleaseWhenLastExternalRefReleased,
            Pointer<Pointer> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        guidServiceId,
        ObjectCLSID,
        ObjectIID,
        fReleaseWhenLastExternalRefReleased,
        ppObject,
      );
}

/// @nodoc
const CLSID_SpResourceManager = '{96749373-3391-11D2-9EE3-00C04F797396}';

/// {@category com}
class SpResourceManager extends ISpResourceManager {
  SpResourceManager(Pointer<COMObject> ptr) : super(ptr);

  factory SpResourceManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SpResourceManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISpResourceManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SpResourceManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
