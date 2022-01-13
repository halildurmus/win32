// IMFNetProxyLocator.dart

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
import '../../media/mediafoundation/IMFNetProxyLocator.dart';

/// @nodoc
const IID_IMFNetProxyLocator = '{E9CD0383-A268-4BB4-82DE-658D53574D41}';

/// {@category Interface}
/// {@category com}
class IMFNetProxyLocator extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFNetProxyLocator(Pointer<COMObject> ptr) : super(ptr);

  int FindFirstProxy(
    Pointer<Utf16> pszHost,
    Pointer<Utf16> pszUrl,
    int fReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHost,
            Pointer<Utf16> pszUrl,
            Int32 fReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHost,
            Pointer<Utf16> pszUrl,
            int fReserved,
          )>()(
        ptr.ref.lpVtbl,
        pszHost,
        pszUrl,
        fReserved,
      );

  int FindNextProxy() => ptr.ref.lpVtbl.value
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

  int RegisterProxyResult(
    int hrOp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrOp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrOp,
          )>()(
        ptr.ref.lpVtbl,
        hrOp,
      );

  int GetCurrentProxy(
    Pointer<Utf16> pszStr,
    Pointer<Uint32> pcchStr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszStr,
            Pointer<Uint32> pcchStr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszStr,
            Pointer<Uint32> pcchStr,
          )>()(
        ptr.ref.lpVtbl,
        pszStr,
        pcchStr,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppProxyLocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProxyLocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProxyLocator,
          )>()(
        ptr.ref.lpVtbl,
        ppProxyLocator,
      );
}
