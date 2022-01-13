// IAccountingProviderConfig.dart

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
const IID_IAccountingProviderConfig = '{66A2DB18-D706-11D0-A37B-00C04FC9DA04}';

/// {@category Interface}
/// {@category com}
class IAccountingProviderConfig extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAccountingProviderConfig(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pszMachineName,
    Pointer<IntPtr> puConnectionParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszMachineName,
            Pointer<IntPtr> puConnectionParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszMachineName,
            Pointer<IntPtr> puConnectionParam,
          )>()(
        ptr.ref.lpVtbl,
        pszMachineName,
        puConnectionParam,
      );

  int Uninitialize(
    int uConnectionParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr uConnectionParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uConnectionParam,
          )>()(
        ptr.ref.lpVtbl,
        uConnectionParam,
      );

  int Configure(
    int uConnectionParam,
    int hWnd,
    int dwFlags,
    int uReserved1,
    int uReserved2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr uConnectionParam,
            IntPtr hWnd,
            Uint32 dwFlags,
            IntPtr uReserved1,
            IntPtr uReserved2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uConnectionParam,
            int hWnd,
            int dwFlags,
            int uReserved1,
            int uReserved2,
          )>()(
        ptr.ref.lpVtbl,
        uConnectionParam,
        hWnd,
        dwFlags,
        uReserved1,
        uReserved2,
      );

  int Activate(
    int uConnectionParam,
    int uReserved1,
    int uReserved2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr uConnectionParam,
            IntPtr uReserved1,
            IntPtr uReserved2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uConnectionParam,
            int uReserved1,
            int uReserved2,
          )>()(
        ptr.ref.lpVtbl,
        uConnectionParam,
        uReserved1,
        uReserved2,
      );

  int Deactivate(
    int uConnectionParam,
    int uReserved1,
    int uReserved2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr uConnectionParam,
            IntPtr uReserved1,
            IntPtr uReserved2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uConnectionParam,
            int uReserved1,
            int uReserved2,
          )>()(
        ptr.ref.lpVtbl,
        uConnectionParam,
        uReserved1,
        uReserved2,
      );
}
