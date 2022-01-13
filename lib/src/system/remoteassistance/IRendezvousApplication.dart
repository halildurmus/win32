// IRendezvousApplication.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRendezvousApplication = '{4F4D070B-A275-49FB-B10D-8EC26387B50D}';

/// {@category Interface}
/// {@category com}
class IRendezvousApplication extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRendezvousApplication(Pointer<COMObject> ptr) : super(ptr);

  int SetRendezvousSession(
    Pointer<COMObject> pRendezvousSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRendezvousSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRendezvousSession,
          )>()(
        ptr.ref.lpVtbl,
        pRendezvousSession,
      );
}

/// @nodoc
const CLSID_RendezvousApplication = '{0B7E019A-B5DE-47FA-8966-9082F82FB192}';

/// {@category com}
class RendezvousApplication extends IRendezvousApplication {
  RendezvousApplication(Pointer<COMObject> ptr) : super(ptr);

  factory RendezvousApplication.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RendezvousApplication);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRendezvousApplication);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RendezvousApplication(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
