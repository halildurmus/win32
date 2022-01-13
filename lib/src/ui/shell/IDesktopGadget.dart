// IDesktopGadget.dart

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
const IID_IDesktopGadget = '{C1646BC4-F298-4F91-A204-EB2DD1709D1A}';

/// {@category Interface}
/// {@category com}
class IDesktopGadget extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDesktopGadget(Pointer<COMObject> ptr) : super(ptr);

  int RunGadget(
    Pointer<Utf16> gadgetPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> gadgetPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> gadgetPath,
          )>()(
        ptr.ref.lpVtbl,
        gadgetPath,
      );
}

/// @nodoc
const CLSID_DesktopGadget = '{924CCC1B-6562-4C85-8657-D177925222B6}';

/// {@category com}
class DesktopGadget extends IDesktopGadget {
  DesktopGadget(Pointer<COMObject> ptr) : super(ptr);

  factory DesktopGadget.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DesktopGadget);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDesktopGadget);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DesktopGadget(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
