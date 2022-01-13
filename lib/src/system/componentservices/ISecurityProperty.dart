// ISecurityProperty.dart

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
const IID_ISecurityProperty = '{51372AEA-CAE7-11CF-BE81-00AA00A2FA25}';

/// {@category Interface}
/// {@category com}
class ISecurityProperty extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISecurityProperty(Pointer<COMObject> ptr) : super(ptr);

  int GetDirectCreatorSID(
    Pointer<IntPtr> pSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pSID,
          )>()(
        ptr.ref.lpVtbl,
        pSID,
      );

  int GetOriginalCreatorSID(
    Pointer<IntPtr> pSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pSID,
          )>()(
        ptr.ref.lpVtbl,
        pSID,
      );

  int GetDirectCallerSID(
    Pointer<IntPtr> pSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pSID,
          )>()(
        ptr.ref.lpVtbl,
        pSID,
      );

  int GetOriginalCallerSID(
    Pointer<IntPtr> pSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pSID,
          )>()(
        ptr.ref.lpVtbl,
        pSID,
      );

  int ReleaseSID(
    int pSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr pSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pSID,
          )>()(
        ptr.ref.lpVtbl,
        pSID,
      );
}

/// @nodoc
const CLSID_SecurityProperty = '{E74A7215-014D-11D1-A63C-00A0C911B4E0}';

/// {@category com}
class SecurityProperty extends ISecurityProperty {
  SecurityProperty(Pointer<COMObject> ptr) : super(ptr);

  factory SecurityProperty.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SecurityProperty);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISecurityProperty);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SecurityProperty(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
