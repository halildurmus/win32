// ID3D10InfoQueue.dart

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
import '../../graphics/direct3d10/structs.g.dart';

/// @nodoc
const IID_ID3D10InfoQueue = '{1B940B17-2642-4D1F-AB1F-B99BAD0C395F}';

/// {@category Interface}
/// {@category com}
class ID3D10InfoQueue extends IUnknown {
  // vtable begins at 3, is 35 entries long.
  ID3D10InfoQueue(Pointer<COMObject> ptr) : super(ptr);

  int SetMessageCountLimit(
    int MessageCountLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 MessageCountLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MessageCountLimit,
          )>()(
        ptr.ref.lpVtbl,
        MessageCountLimit,
      );

  void ClearStoredMessages() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetMessage(
    int MessageIndex,
    Pointer<D3D10_MESSAGE> pMessage,
    Pointer<IntPtr> pMessageByteLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 MessageIndex,
            Pointer<D3D10_MESSAGE> pMessage,
            Pointer<IntPtr> pMessageByteLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MessageIndex,
            Pointer<D3D10_MESSAGE> pMessage,
            Pointer<IntPtr> pMessageByteLength,
          )>()(
        ptr.ref.lpVtbl,
        MessageIndex,
        pMessage,
        pMessageByteLength,
      );

  int GetNumMessagesAllowedByStorageFilter() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetNumMessagesDeniedByStorageFilter() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetNumStoredMessages() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetNumStoredMessagesAllowedByRetrievalFilter() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetNumMessagesDiscardedByMessageCountLimit() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetMessageCountLimit() => ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int AddStorageFilterEntries(
    Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
      );

  int GetStorageFilter(
    Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
    Pointer<IntPtr> pFilterByteLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
            Pointer<IntPtr> pFilterByteLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
            Pointer<IntPtr> pFilterByteLength,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
        pFilterByteLength,
      );

  void ClearStorageFilter() => ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int PushEmptyStorageFilter() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int PushCopyOfStorageFilter() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int PushStorageFilter(
    Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
      );

  void PopStorageFilter() => ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetStorageFilterStackSize() => ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int AddRetrievalFilterEntries(
    Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
      );

  int GetRetrievalFilter(
    Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
    Pointer<IntPtr> pFilterByteLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
            Pointer<IntPtr> pFilterByteLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
            Pointer<IntPtr> pFilterByteLength,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
        pFilterByteLength,
      );

  void ClearRetrievalFilter() => ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int PushEmptyRetrievalFilter() => ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int PushCopyOfRetrievalFilter() => ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int PushRetrievalFilter(
    Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_INFO_QUEUE_FILTER> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
      );

  void PopRetrievalFilter() => ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetRetrievalFilterStackSize() => ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int AddMessage(
    int Category,
    int Severity,
    int ID,
    Pointer<Utf8> pDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Category,
            Int32 Severity,
            Int32 ID,
            Pointer<Utf8> pDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Category,
            int Severity,
            int ID,
            Pointer<Utf8> pDescription,
          )>()(
        ptr.ref.lpVtbl,
        Category,
        Severity,
        ID,
        pDescription,
      );

  int AddApplicationMessage(
    int Severity,
    Pointer<Utf8> pDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Severity,
            Pointer<Utf8> pDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Severity,
            Pointer<Utf8> pDescription,
          )>()(
        ptr.ref.lpVtbl,
        Severity,
        pDescription,
      );

  int SetBreakOnCategory(
    int Category,
    int bEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Category,
            Int32 bEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Category,
            int bEnable,
          )>()(
        ptr.ref.lpVtbl,
        Category,
        bEnable,
      );

  int SetBreakOnSeverity(
    int Severity,
    int bEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Severity,
            Int32 bEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Severity,
            int bEnable,
          )>()(
        ptr.ref.lpVtbl,
        Severity,
        bEnable,
      );

  int SetBreakOnID(
    int ID,
    int bEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ID,
            Int32 bEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ID,
            int bEnable,
          )>()(
        ptr.ref.lpVtbl,
        ID,
        bEnable,
      );

  int GetBreakOnCategory(
    int Category,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Category,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Category,
          )>()(
        ptr.ref.lpVtbl,
        Category,
      );

  int GetBreakOnSeverity(
    int Severity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Severity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Severity,
          )>()(
        ptr.ref.lpVtbl,
        Severity,
      );

  int GetBreakOnID(
    int ID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ID,
          )>()(
        ptr.ref.lpVtbl,
        ID,
      );

  void SetMuteDebugOutput(
    int bMute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 bMute,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int bMute,
          )>()(
        ptr.ref.lpVtbl,
        bMute,
      );

  int GetMuteDebugOutput() => ptr.ref.lpVtbl.value
          .elementAt(37)
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
