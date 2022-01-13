// IDefaultBrowserSyncSettings.dart

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
const IID_IDefaultBrowserSyncSettings =
    '{7A27FAAD-5AE6-4255-9030-C530936292E3}';

/// {@category Interface}
/// {@category com}
class IDefaultBrowserSyncSettings extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDefaultBrowserSyncSettings(Pointer<COMObject> ptr) : super(ptr);

  int IsEnabled() => ptr.ref.lpVtbl.value
          .elementAt(3)
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
}

/// @nodoc
const CLSID_DefaultBrowserSyncSettings =
    '{3AC83423-3112-4AA6-9B5B-1FEB23D0C5F9}';

/// {@category com}
class DefaultBrowserSyncSettings extends IDefaultBrowserSyncSettings {
  DefaultBrowserSyncSettings(Pointer<COMObject> ptr) : super(ptr);

  factory DefaultBrowserSyncSettings.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DefaultBrowserSyncSettings);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDefaultBrowserSyncSettings);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DefaultBrowserSyncSettings(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
