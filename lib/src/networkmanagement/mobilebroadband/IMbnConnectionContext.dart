// IMbnConnectionContext.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/mobilebroadband/structs.g.dart';

/// @nodoc
const IID_IMbnConnectionContext = '{DCBBBAB6-200B-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnConnectionContext extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMbnConnectionContext(Pointer<COMObject> ptr) : super(ptr);

  int GetProvisionedContexts(
    Pointer<Pointer<SAFEARRAY>> provisionedContexts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> provisionedContexts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> provisionedContexts,
          )>()(
        ptr.ref.lpVtbl,
        provisionedContexts,
      );

  int SetProvisionedContext(
    MBN_CONTEXT provisionedContexts,
    Pointer<Utf16> providerID,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            MBN_CONTEXT provisionedContexts,
            Pointer<Utf16> providerID,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            MBN_CONTEXT provisionedContexts,
            Pointer<Utf16> providerID,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        provisionedContexts,
        providerID,
        requestID,
      );
}
