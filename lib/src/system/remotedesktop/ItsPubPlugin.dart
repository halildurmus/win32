// ItsPubPlugin.dart

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
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_ItsPubPlugin = '{70C04B05-F347-412B-822F-36C99C54CA45}';

/// {@category Interface}
/// {@category com}
class ItsPubPlugin extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ItsPubPlugin(Pointer<COMObject> ptr) : super(ptr);

  int GetResourceList(
    Pointer<Utf16> userID,
    Pointer<Int32> pceAppListSize,
    Pointer<Pointer<pluginResource>> resourceList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> userID,
            Pointer<Int32> pceAppListSize,
            Pointer<Pointer<pluginResource>> resourceList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> userID,
            Pointer<Int32> pceAppListSize,
            Pointer<Pointer<pluginResource>> resourceList,
          )>()(
        ptr.ref.lpVtbl,
        userID,
        pceAppListSize,
        resourceList,
      );

  int GetResource(
    Pointer<Utf16> alias,
    int flags,
    Pointer<pluginResource> resource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> alias,
            Int32 flags,
            Pointer<pluginResource> resource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> alias,
            int flags,
            Pointer<pluginResource> resource,
          )>()(
        ptr.ref.lpVtbl,
        alias,
        flags,
        resource,
      );

  int GetCacheLastUpdateTime(
    Pointer<Uint64> lastUpdateTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> lastUpdateTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> lastUpdateTime,
          )>()(
        ptr.ref.lpVtbl,
        lastUpdateTime,
      );

  Pointer<Utf16> get pluginName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get pluginVersion {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int ResolveResource(
    Pointer<Uint32> resourceType,
    Pointer<Utf16> resourceLocation,
    Pointer<Utf16> endPointName,
    Pointer<Utf16> userID,
    Pointer<Utf16> alias,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> resourceType,
            Pointer<Utf16> resourceLocation,
            Pointer<Utf16> endPointName,
            Pointer<Utf16> userID,
            Pointer<Utf16> alias,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> resourceType,
            Pointer<Utf16> resourceLocation,
            Pointer<Utf16> endPointName,
            Pointer<Utf16> userID,
            Pointer<Utf16> alias,
          )>()(
        ptr.ref.lpVtbl,
        resourceType,
        resourceLocation,
        endPointName,
        userID,
        alias,
      );
}
