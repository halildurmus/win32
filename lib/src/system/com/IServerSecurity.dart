// IServerSecurity.dart

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
const IID_IServerSecurity = '{0000013E-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IServerSecurity extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IServerSecurity(Pointer<COMObject> ptr) : super(ptr);

  int QueryBlanket(
    Pointer<Uint32> pAuthnSvc,
    Pointer<Uint32> pAuthzSvc,
    Pointer<Pointer<Uint16>> pServerPrincName,
    Pointer<Uint32> pAuthnLevel,
    Pointer<Uint32> pImpLevel,
    Pointer<Pointer> pPrivs,
    Pointer<Uint32> pCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pAuthnSvc,
            Pointer<Uint32> pAuthzSvc,
            Pointer<Pointer<Uint16>> pServerPrincName,
            Pointer<Uint32> pAuthnLevel,
            Pointer<Uint32> pImpLevel,
            Pointer<Pointer> pPrivs,
            Pointer<Uint32> pCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pAuthnSvc,
            Pointer<Uint32> pAuthzSvc,
            Pointer<Pointer<Uint16>> pServerPrincName,
            Pointer<Uint32> pAuthnLevel,
            Pointer<Uint32> pImpLevel,
            Pointer<Pointer> pPrivs,
            Pointer<Uint32> pCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pAuthnSvc,
        pAuthzSvc,
        pServerPrincName,
        pAuthnLevel,
        pImpLevel,
        pPrivs,
        pCapabilities,
      );

  int ImpersonateClient() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int RevertToSelf() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int IsImpersonating() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
