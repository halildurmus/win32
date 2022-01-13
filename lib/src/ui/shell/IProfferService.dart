// IProfferService.dart

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
import '../../system/com/IServiceProvider.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IProfferService = '{CB728B20-F786-11CE-92AD-00AA00A74CD0}';

/// {@category Interface}
/// {@category com}
class IProfferService extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IProfferService(Pointer<COMObject> ptr) : super(ptr);

  int ProfferService(
    Pointer<GUID> serviceId,
    Pointer<COMObject> serviceProvider,
    Pointer<Uint32> cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> serviceId,
            Pointer<COMObject> serviceProvider,
            Pointer<Uint32> cookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> serviceId,
            Pointer<COMObject> serviceProvider,
            Pointer<Uint32> cookie,
          )>()(
        ptr.ref.lpVtbl,
        serviceId,
        serviceProvider,
        cookie,
      );

  int RevokeService(
    int cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cookie,
          )>()(
        ptr.ref.lpVtbl,
        cookie,
      );
}
