// IVssAdminEx.dart

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

import '../../storage/vss/IVssAdmin.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVssAdminEx = '{7858A9F8-B1FA-41A6-964F-B9B36B8CD8D8}';

/// {@category Interface}
/// {@category com}
class IVssAdminEx extends IVssAdmin {
  // vtable begins at 7, is 3 entries long.
  IVssAdminEx(Pointer<COMObject> ptr) : super(ptr);

  int GetProviderCapability(
    GUID pProviderId,
    Pointer<Uint64> pllOriginalCapabilityMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID pProviderId,
            Pointer<Uint64> pllOriginalCapabilityMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID pProviderId,
            Pointer<Uint64> pllOriginalCapabilityMask,
          )>()(
        ptr.ref.lpVtbl,
        pProviderId,
        pllOriginalCapabilityMask,
      );

  int GetProviderContext(
    GUID ProviderId,
    Pointer<Int32> plContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProviderId,
            Pointer<Int32> plContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProviderId,
            Pointer<Int32> plContext,
          )>()(
        ptr.ref.lpVtbl,
        ProviderId,
        plContext,
      );

  int SetProviderContext(
    GUID ProviderId,
    int lContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProviderId,
            Int32 lContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProviderId,
            int lContext,
          )>()(
        ptr.ref.lpVtbl,
        ProviderId,
        lContext,
      );
}
