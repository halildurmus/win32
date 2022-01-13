// ISurrogateService.dart

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
import '../../system/com/IProcessLock.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_ISurrogateService = '{000001D4-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ISurrogateService extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISurrogateService(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<GUID> rguidProcessID,
    Pointer<COMObject> pProcessLock,
    Pointer<Int32> pfApplicationAware,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidProcessID,
            Pointer<COMObject> pProcessLock,
            Pointer<Int32> pfApplicationAware,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidProcessID,
            Pointer<COMObject> pProcessLock,
            Pointer<Int32> pfApplicationAware,
          )>()(
        ptr.ref.lpVtbl,
        rguidProcessID,
        pProcessLock,
        pfApplicationAware,
      );

  int ApplicationLaunch(
    Pointer<GUID> rguidApplID,
    int appType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidApplID,
            Int32 appType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidApplID,
            int appType,
          )>()(
        ptr.ref.lpVtbl,
        rguidApplID,
        appType,
      );

  int ApplicationFree(
    Pointer<GUID> rguidApplID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidApplID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidApplID,
          )>()(
        ptr.ref.lpVtbl,
        rguidApplID,
      );

  int CatalogRefresh(
    int ulReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulReserved,
          )>()(
        ptr.ref.lpVtbl,
        ulReserved,
      );

  int ProcessShutdown(
    int shutdownType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 shutdownType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int shutdownType,
          )>()(
        ptr.ref.lpVtbl,
        shutdownType,
      );
}
