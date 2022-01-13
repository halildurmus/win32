// IDispenserManager.dart

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
import '../../system/componentservices/IDispenserDriver.dart';
import '../../foundation/structs.g.dart';
import '../../system/componentservices/IHolder.dart';

/// @nodoc
const IID_IDispenserManager = '{5CB31E10-2B5F-11CF-BE10-00AA00A2FA25}';

/// {@category Interface}
/// {@category com}
class IDispenserManager extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDispenserManager(Pointer<COMObject> ptr) : super(ptr);

  int RegisterDispenser(
    Pointer<COMObject> MIDL__IDispenserManager0000,
    Pointer<Utf16> szDispenserName,
    Pointer<Pointer<COMObject>> MIDL__IDispenserManager0001,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> MIDL__IDispenserManager0000,
            Pointer<Utf16> szDispenserName,
            Pointer<Pointer<COMObject>> MIDL__IDispenserManager0001,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> MIDL__IDispenserManager0000,
            Pointer<Utf16> szDispenserName,
            Pointer<Pointer<COMObject>> MIDL__IDispenserManager0001,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IDispenserManager0000,
        szDispenserName,
        MIDL__IDispenserManager0001,
      );

  int GetContext(
    Pointer<IntPtr> MIDL__IDispenserManager0002,
    Pointer<IntPtr> MIDL__IDispenserManager0003,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> MIDL__IDispenserManager0002,
            Pointer<IntPtr> MIDL__IDispenserManager0003,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> MIDL__IDispenserManager0002,
            Pointer<IntPtr> MIDL__IDispenserManager0003,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IDispenserManager0002,
        MIDL__IDispenserManager0003,
      );
}

/// @nodoc
const CLSID_DispenserManager = '{ECABB0C0-7F19-11D2-978E-0000F8757E2A}';

/// {@category com}
class DispenserManager extends IDispenserManager {
  DispenserManager(Pointer<COMObject> ptr) : super(ptr);

  factory DispenserManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DispenserManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDispenserManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DispenserManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
