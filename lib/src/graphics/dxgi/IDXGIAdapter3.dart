// IDXGIAdapter3.dart

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

import '../../graphics/dxgi/IDXGIAdapter2.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/structs.g.dart';

/// @nodoc
const IID_IDXGIAdapter3 = '{645967A4-1392-4310-A798-8053CE3E93FD}';

/// {@category Interface}
/// {@category com}
class IDXGIAdapter3 extends IDXGIAdapter2 {
  // vtable begins at 12, is 6 entries long.
  IDXGIAdapter3(Pointer<COMObject> ptr) : super(ptr);

  int RegisterHardwareContentProtectionTeardownStatusEvent(
    int hEvent,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
        pdwCookie,
      );

  void UnregisterHardwareContentProtectionTeardownStatus(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );

  int QueryVideoMemoryInfo(
    int NodeIndex,
    int MemorySegmentGroup,
    Pointer<DXGI_QUERY_VIDEO_MEMORY_INFO> pVideoMemoryInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NodeIndex,
            Int32 MemorySegmentGroup,
            Pointer<DXGI_QUERY_VIDEO_MEMORY_INFO> pVideoMemoryInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NodeIndex,
            int MemorySegmentGroup,
            Pointer<DXGI_QUERY_VIDEO_MEMORY_INFO> pVideoMemoryInfo,
          )>()(
        ptr.ref.lpVtbl,
        NodeIndex,
        MemorySegmentGroup,
        pVideoMemoryInfo,
      );

  int SetVideoMemoryReservation(
    int NodeIndex,
    int MemorySegmentGroup,
    int Reservation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NodeIndex,
            Int32 MemorySegmentGroup,
            Uint64 Reservation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NodeIndex,
            int MemorySegmentGroup,
            int Reservation,
          )>()(
        ptr.ref.lpVtbl,
        NodeIndex,
        MemorySegmentGroup,
        Reservation,
      );

  int RegisterVideoMemoryBudgetChangeNotificationEvent(
    int hEvent,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
        pdwCookie,
      );

  void UnregisterVideoMemoryBudgetChangeNotification(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );
}
