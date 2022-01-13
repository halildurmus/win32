// IActiveDesktopP.dart

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
const IID_IActiveDesktopP = '{52502EE0-EC80-11D0-89AB-00C04FC2972D}';

/// {@category Interface}
/// {@category com}
class IActiveDesktopP extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IActiveDesktopP(Pointer<COMObject> ptr) : super(ptr);

  int SetSafeMode(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int EnsureUpdateHTML() => ptr.ref.lpVtbl.value
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

  int SetScheme(
    Pointer<Utf16> pwszSchemeName,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszSchemeName,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszSchemeName,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pwszSchemeName,
        dwFlags,
      );

  int GetScheme(
    Pointer<Utf16> pwszSchemeName,
    Pointer<Uint32> pdwcchBuffer,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszSchemeName,
            Pointer<Uint32> pdwcchBuffer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszSchemeName,
            Pointer<Uint32> pdwcchBuffer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pwszSchemeName,
        pdwcchBuffer,
        dwFlags,
      );
}
