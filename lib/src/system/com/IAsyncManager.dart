// IAsyncManager.dart

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
const IID_IAsyncManager = '{0000002A-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IAsyncManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAsyncManager(Pointer<COMObject> ptr) : super(ptr);

  int CompleteCall(
    int Result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Result,
          )>()(
        ptr.ref.lpVtbl,
        Result,
      );

  int GetCallContext(
    Pointer<GUID> riid,
    Pointer<Pointer> pInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> pInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> pInterface,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        pInterface,
      );

  int GetState(
    Pointer<Uint32> pulStateFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulStateFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulStateFlags,
          )>()(
        ptr.ref.lpVtbl,
        pulStateFlags,
      );
}
