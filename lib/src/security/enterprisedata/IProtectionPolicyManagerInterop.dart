// IProtectionPolicyManagerInterop.dart

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

import '../../system/winrt/IInspectable.dart';
import '../../foundation/structs.g.dart';
import '../../system/winrt/structs.g.dart';

/// @nodoc
const IID_IProtectionPolicyManagerInterop =
    '{4652651D-C1FE-4BA1-9F0A-C0F56596F721}';

/// {@category Interface}
/// {@category com}
class IProtectionPolicyManagerInterop extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IProtectionPolicyManagerInterop(Pointer<COMObject> ptr) : super(ptr);

  int RequestAccessForWindowAsync(
    int appWindow,
    int sourceIdentity,
    int targetIdentity,
    Pointer<GUID> riid,
    Pointer<Pointer> asyncOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            IntPtr sourceIdentity,
            IntPtr targetIdentity,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            int sourceIdentity,
            int targetIdentity,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceIdentity,
        targetIdentity,
        riid,
        asyncOperation,
      );

  int GetForWindow(
    int appWindow,
    Pointer<GUID> riid,
    Pointer<Pointer> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> result,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        riid,
        result,
      );
}
