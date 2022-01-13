// ItsPubPlugin2.dart

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

import '../../system/remotedesktop/ItsPubPlugin.dart';
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_ItsPubPlugin2 = '{FA4CE418-AAD7-4EC6-BAD1-0A321BA465D5}';

/// {@category Interface}
/// {@category com}
class ItsPubPlugin2 extends ItsPubPlugin {
  // vtable begins at 9, is 4 entries long.
  ItsPubPlugin2(Pointer<COMObject> ptr) : super(ptr);

  int GetResource2List(
    Pointer<Utf16> userID,
    Pointer<Int32> pceAppListSize,
    Pointer<Pointer<pluginResource2>> resourceList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> userID,
            Pointer<Int32> pceAppListSize,
            Pointer<Pointer<pluginResource2>> resourceList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> userID,
            Pointer<Int32> pceAppListSize,
            Pointer<Pointer<pluginResource2>> resourceList,
          )>()(
        ptr.ref.lpVtbl,
        userID,
        pceAppListSize,
        resourceList,
      );

  int GetResource2(
    Pointer<Utf16> alias,
    int flags,
    Pointer<pluginResource2> resource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> alias,
            Int32 flags,
            Pointer<pluginResource2> resource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> alias,
            int flags,
            Pointer<pluginResource2> resource,
          )>()(
        ptr.ref.lpVtbl,
        alias,
        flags,
        resource,
      );

  int ResolvePersonalDesktop(
    Pointer<Utf16> userId,
    Pointer<Utf16> poolId,
    int ePdResolutionType,
    Pointer<Int32> pPdAssignmentType,
    Pointer<Utf16> endPointName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> userId,
            Pointer<Utf16> poolId,
            Int32 ePdResolutionType,
            Pointer<Int32> pPdAssignmentType,
            Pointer<Utf16> endPointName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> userId,
            Pointer<Utf16> poolId,
            int ePdResolutionType,
            Pointer<Int32> pPdAssignmentType,
            Pointer<Utf16> endPointName,
          )>()(
        ptr.ref.lpVtbl,
        userId,
        poolId,
        ePdResolutionType,
        pPdAssignmentType,
        endPointName,
      );

  int DeletePersonalDesktopAssignment(
    Pointer<Utf16> userId,
    Pointer<Utf16> poolId,
    Pointer<Utf16> endpointName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> userId,
            Pointer<Utf16> poolId,
            Pointer<Utf16> endpointName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> userId,
            Pointer<Utf16> poolId,
            Pointer<Utf16> endpointName,
          )>()(
        ptr.ref.lpVtbl,
        userId,
        poolId,
        endpointName,
      );
}
