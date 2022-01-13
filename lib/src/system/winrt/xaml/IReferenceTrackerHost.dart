// IReferenceTrackerHost.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/winrt/xaml/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/winrt/xaml/IReferenceTrackerTarget.dart';

/// @nodoc
const IID_IReferenceTrackerHost = '{29A71C6A-3C42-4416-A39D-E2825A07A773}';

/// {@category Interface}
/// {@category com}
class IReferenceTrackerHost extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IReferenceTrackerHost(Pointer<COMObject> ptr) : super(ptr);

  int DisconnectUnusedReferenceSources(
    int options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
          )>()(
        ptr.ref.lpVtbl,
        options,
      );

  int ReleaseDisconnectedReferenceSources() => ptr.ref.lpVtbl.value
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

  int NotifyEndOfReferenceTrackingOnThread() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetTrackerTarget(
    Pointer<COMObject> unknown,
    Pointer<Pointer<COMObject>> newReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> unknown,
            Pointer<Pointer<COMObject>> newReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> unknown,
            Pointer<Pointer<COMObject>> newReference,
          )>()(
        ptr.ref.lpVtbl,
        unknown,
        newReference,
      );

  int AddMemoryPressure(
    int bytesAllocated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 bytesAllocated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bytesAllocated,
          )>()(
        ptr.ref.lpVtbl,
        bytesAllocated,
      );

  int RemoveMemoryPressure(
    int bytesAllocated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 bytesAllocated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bytesAllocated,
          )>()(
        ptr.ref.lpVtbl,
        bytesAllocated,
      );
}
