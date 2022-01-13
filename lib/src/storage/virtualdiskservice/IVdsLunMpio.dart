// IVdsLunMpio.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVdsLunMpio = '{7C5FBAE3-333A-48A1-A982-33C15788CDE3}';

/// {@category Interface}
/// {@category com}
class IVdsLunMpio extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IVdsLunMpio(Pointer<COMObject> ptr) : super(ptr);

  int GetPathInfo(
    Pointer<Pointer<VDS_PATH_INFO>> ppPaths,
    Pointer<Int32> plNumberOfPaths,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<VDS_PATH_INFO>> ppPaths,
            Pointer<Int32> plNumberOfPaths,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<VDS_PATH_INFO>> ppPaths,
            Pointer<Int32> plNumberOfPaths,
          )>()(
        ptr.ref.lpVtbl,
        ppPaths,
        plNumberOfPaths,
      );

  int GetLoadBalancePolicy(
    Pointer<Int32> pPolicy,
    Pointer<Pointer<VDS_PATH_POLICY>> ppPaths,
    Pointer<Int32> plNumberOfPaths,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPolicy,
            Pointer<Pointer<VDS_PATH_POLICY>> ppPaths,
            Pointer<Int32> plNumberOfPaths,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPolicy,
            Pointer<Pointer<VDS_PATH_POLICY>> ppPaths,
            Pointer<Int32> plNumberOfPaths,
          )>()(
        ptr.ref.lpVtbl,
        pPolicy,
        ppPaths,
        plNumberOfPaths,
      );

  int SetLoadBalancePolicy(
    int policy,
    Pointer<VDS_PATH_POLICY> pPaths,
    int lNumberOfPaths,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 policy,
            Pointer<VDS_PATH_POLICY> pPaths,
            Int32 lNumberOfPaths,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int policy,
            Pointer<VDS_PATH_POLICY> pPaths,
            int lNumberOfPaths,
          )>()(
        ptr.ref.lpVtbl,
        policy,
        pPaths,
        lNumberOfPaths,
      );

  int GetSupportedLbPolicies(
    Pointer<Uint32> pulLbFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulLbFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulLbFlags,
          )>()(
        ptr.ref.lpVtbl,
        pulLbFlags,
      );
}
