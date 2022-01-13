// IWindowsUpdateAgentInfo.dart

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

import '../../system/com/IDispatch.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWindowsUpdateAgentInfo = '{85713FA1-7796-4FA2-BE3B-E2D6124DD373}';

/// {@category Interface}
/// {@category com}
class IWindowsUpdateAgentInfo extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IWindowsUpdateAgentInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetInfo(
    VARIANT varInfoIdentifier,
    Pointer<VARIANT> retval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varInfoIdentifier,
            Pointer<VARIANT> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varInfoIdentifier,
            Pointer<VARIANT> retval,
          )>()(
        ptr.ref.lpVtbl,
        varInfoIdentifier,
        retval,
      );
}

/// @nodoc
const CLSID_WindowsUpdateAgentInfo = '{C2E88C2F-6F5B-4AAA-894B-55C847AD3A2D}';

/// {@category com}
class WindowsUpdateAgentInfo extends IWindowsUpdateAgentInfo {
  WindowsUpdateAgentInfo(Pointer<COMObject> ptr) : super(ptr);

  factory WindowsUpdateAgentInfo.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WindowsUpdateAgentInfo);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWindowsUpdateAgentInfo);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WindowsUpdateAgentInfo(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
