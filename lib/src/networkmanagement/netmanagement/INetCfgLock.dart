// INetCfgLock.dart

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
const IID_INetCfgLock = '{C0E8AE9F-306E-11D1-AACF-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetCfgLock extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  INetCfgLock(Pointer<COMObject> ptr) : super(ptr);

  int AcquireWriteLock(
    int cmsTimeout,
    Pointer<Utf16> pszwClientDescription,
    Pointer<Pointer<Utf16>> ppszwClientDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cmsTimeout,
            Pointer<Utf16> pszwClientDescription,
            Pointer<Pointer<Utf16>> ppszwClientDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cmsTimeout,
            Pointer<Utf16> pszwClientDescription,
            Pointer<Pointer<Utf16>> ppszwClientDescription,
          )>()(
        ptr.ref.lpVtbl,
        cmsTimeout,
        pszwClientDescription,
        ppszwClientDescription,
      );

  int ReleaseWriteLock() => ptr.ref.lpVtbl.value
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

  int IsWriteLocked(
    Pointer<Pointer<Utf16>> ppszwClientDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwClientDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwClientDescription,
          )>()(
        ptr.ref.lpVtbl,
        ppszwClientDescription,
      );
}
