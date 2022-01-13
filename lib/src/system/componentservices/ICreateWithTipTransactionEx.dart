// ICreateWithTipTransactionEx.dart

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
const IID_ICreateWithTipTransactionEx =
    '{455ACF59-5345-11D2-99CF-00C04F797BC9}';

/// {@category Interface}
/// {@category com}
class ICreateWithTipTransactionEx extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICreateWithTipTransactionEx(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(
    Pointer<Utf16> bstrTipUrl,
    Pointer<GUID> rclsid,
    Pointer<GUID> riid,
    Pointer<Pointer> pObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrTipUrl,
            Pointer<GUID> rclsid,
            Pointer<GUID> riid,
            Pointer<Pointer> pObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrTipUrl,
            Pointer<GUID> rclsid,
            Pointer<GUID> riid,
            Pointer<Pointer> pObject,
          )>()(
        ptr.ref.lpVtbl,
        bstrTipUrl,
        rclsid,
        riid,
        pObject,
      );
}
