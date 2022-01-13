// ISuspensionDependencyManager.dart

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
const IID_ISuspensionDependencyManager =
    '{52B83A42-2543-416A-81D9-C0DE7969C8B3}';

/// {@category Interface}
/// {@category com}
class ISuspensionDependencyManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISuspensionDependencyManager(Pointer<COMObject> ptr) : super(ptr);

  int RegisterAsChild(
    int processHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr processHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int processHandle,
          )>()(
        ptr.ref.lpVtbl,
        processHandle,
      );

  int GroupChildWithParent(
    int childProcessHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr childProcessHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int childProcessHandle,
          )>()(
        ptr.ref.lpVtbl,
        childProcessHandle,
      );

  int UngroupChildFromParent(
    int childProcessHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr childProcessHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int childProcessHandle,
          )>()(
        ptr.ref.lpVtbl,
        childProcessHandle,
      );
}

/// @nodoc
const CLSID_SuspensionDependencyManager =
    '{6B273FC5-61FD-4918-95A2-C3B5E9D7F581}';

/// {@category com}
class SuspensionDependencyManager extends ISuspensionDependencyManager {
  SuspensionDependencyManager(Pointer<COMObject> ptr) : super(ptr);

  factory SuspensionDependencyManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_SuspensionDependencyManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISuspensionDependencyManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SuspensionDependencyManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
