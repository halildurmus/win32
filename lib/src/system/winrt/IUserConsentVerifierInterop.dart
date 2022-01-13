// IUserConsentVerifierInterop.dart

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
const IID_IUserConsentVerifierInterop =
    '{39E050C3-4E74-441A-8DC0-B81104DF949C}';

/// {@category Interface}
/// {@category com}
class IUserConsentVerifierInterop extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IUserConsentVerifierInterop(Pointer<COMObject> ptr) : super(ptr);

  int RequestVerificationForWindowAsync(
    int appWindow,
    int message,
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
            IntPtr message,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            int message,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        message,
        riid,
        asyncOperation,
      );
}
