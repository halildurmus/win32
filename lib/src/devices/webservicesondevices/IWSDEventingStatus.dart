// IWSDEventingStatus.dart

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
const IID_IWSDEventingStatus = '{49B17F52-637A-407A-AE99-FBE82A4D38C0}';

/// {@category Interface}
/// {@category com}
class IWSDEventingStatus extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWSDEventingStatus(Pointer<COMObject> ptr) : super(ptr);

  void SubscriptionRenewed(
    Pointer<Utf16> pszSubscriptionAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> pszSubscriptionAction,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> pszSubscriptionAction,
          )>()(
        ptr.ref.lpVtbl,
        pszSubscriptionAction,
      );

  void SubscriptionRenewalFailed(
    Pointer<Utf16> pszSubscriptionAction,
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> pszSubscriptionAction,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> pszSubscriptionAction,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        pszSubscriptionAction,
        hr,
      );

  void SubscriptionEnded(
    Pointer<Utf16> pszSubscriptionAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> pszSubscriptionAction,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> pszSubscriptionAction,
          )>()(
        ptr.ref.lpVtbl,
        pszSubscriptionAction,
      );
}
