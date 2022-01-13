// ISendMethodEvents.dart

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

/// @nodoc
const IID_ISendMethodEvents = '{2732FD59-B2B4-4D44-878C-8B8F09626008}';

/// {@category Interface}
/// {@category com}
class ISendMethodEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISendMethodEvents(Pointer<COMObject> ptr) : super(ptr);

  int SendMethodCall(
    Pointer pIdentity,
    Pointer<GUID> riid,
    int dwMeth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pIdentity,
            Pointer<GUID> riid,
            Uint32 dwMeth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pIdentity,
            Pointer<GUID> riid,
            int dwMeth,
          )>()(
        ptr.ref.lpVtbl,
        pIdentity,
        riid,
        dwMeth,
      );

  int SendMethodReturn(
    Pointer pIdentity,
    Pointer<GUID> riid,
    int dwMeth,
    int hrCall,
    int hrServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pIdentity,
            Pointer<GUID> riid,
            Uint32 dwMeth,
            Int32 hrCall,
            Int32 hrServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pIdentity,
            Pointer<GUID> riid,
            int dwMeth,
            int hrCall,
            int hrServer,
          )>()(
        ptr.ref.lpVtbl,
        pIdentity,
        riid,
        dwMeth,
        hrCall,
        hrServer,
      );
}
